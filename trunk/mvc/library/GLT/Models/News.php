<?php

class GLT_Models_News extends Zend_Db_Table {

    protected $_module;
    protected $_name;
    protected $_modelCat;
    protected $_primary = 'record_id';
    public $_config;
    public $_xss;

    public function init() {
        $this->_config = Zend_Registry::get("config");
        $this->_xss = Zend_Registry::get('xss');
        $this->_name = 'dos_module_' . $this->_module;
    }

    //Front end - Get bản tin mới nhất
    public function listTopHits() {
        $select = $this->select()->from($this->_name, array('record_id', 'title' . LANG))
                ->where('enable = 1')
                ->order('hits DESC')
                ->order('postdate DESC')
                ->limit(7);
        return $this->fetchAll($select)->toArray();
    }

    //Front end - Get bản tin mới nhất
    public function listItemHotFirst() {
        $select = $this->select()->from($this->_name, array('record_id', 'pic_thumb', 'postdate', 'title' . LANG, 'preview' . LANG))
                ->where('enable = 1')
                ->where('record_type = 1')
                ->order('record_order DESC')
                ->order('postdate DESC')
                ->limit(1);
        return $this->fetchRow($select);
    }

    //Front end - Get Bản tin Hot mới nhất
    public function listItemsHot() {
        $select = $this->select()->from($this->_name, array('record_id', 'pic_thumb', 'postdate', 'title' . LANG, 'preview' . LANG))
                ->where('enable = 1')
                ->where('record_type = 1')
                ->order('record_order DESC')
                ->order('postdate DESC')
                ->limit(7);
        return $this->fetchAll($select)->toArray();
    }

    //Front end - Get Bản tin bởi cat_id
    public function listItembyCat($data = NULL) {
        //Get paging number
        $paginator = $data['paginator'];
        if ($paginator['itemCountPerPage'] > 0) {
            $page = $paginator['currentPage'];
            $rowCount = $paginator['itemCountPerPage'];
        }
        $select = $this->select()->from($this->_name, array('record_id', 'pic_thumb', 'postdate', 'title' . LANG, 'preview' . LANG))
                ->where('enable = 1')
                ->where('dos_module_item_cat_cat_id =?', $data['id'])
                ->order('record_order ASC')
                ->order('postdate DESC')
                ->limitPage($page, $rowCount);
        return $this->fetchAll($select)->toArray();
    }

    // Product by cat_id other
    public function itemByCatNoneid($cid, $id) {
        $select = $this->select()->from($this->_name, array('record_id', 'pic_thumb', 'postdate', 'title' . LANG, 'preview' . LANG))
                ->where('dos_module_item_cat_cat_id =?', $cid)
                ->where('record_id NOT IN (?)', $id)
                ->order('record_order ASC')
                ->order('postdate DESC')
                ->where('enable = 1')
                ->limit(5, 1);
        return $this->fetchAll($select)->toArray();
    }

    //Front end - Get Bản tin bởi cat_id
    public function listItemIndex($data = NULL) {
        //Get paging number
        $paginator = $data['paginator'];
        if ($paginator['itemCountPerPage'] > 0) {
            $page = $paginator['currentPage'];
            $rowCount = $paginator['itemCountPerPage'];
        }
        $select = $this->select()->from($this->_name, array('record_id', 'pic_thumb', 'postdate', 'title' . LANG, 'preview' . LANG))
                ->where('enable = 1')
                ->order('record_order ASC')
                ->order('postdate DESC')
                ->limitPage($page, $rowCount);
        return $this->fetchAll($select)->toArray();
    }

    //Front end - Count bản tin bởi cat_id
    public function countItembyCat($data = NULL) {
        $db = Zend_Registry::get('connectDb');
        $select = $db->select()->from($this->_name, array('COUNT(record_id) AS total'))
                ->where('enable = 1')
                ->where('dos_module_item_cat_cat_id =?', $data['id']);
        return $db->fetchOne($select);
    }

    //Front end - Get detail new
    public function detailItem($data = NULL) {
        $where = 'record_id = ' . $data['id'];
        $result = $this->fetchRow($where);

        if (count($result)) {
            $this->updateHits($data['id']);
            return $result->toArray();
        }
    }

    public function listItemadmin($data = NULL) {
        //get paging number
        $paginator = $data['paginator'];
        if ($paginator['itemCountPerPage'] > 0) {
            $page = $paginator['currentPage'];
            $rowCount = $paginator['itemCountPerPage'];
        }

        $db = Zend_Registry::get('connectDb');
        $select = $db->select()->from(array('n' => $this->_name), array('record_id', 'postdate', 'title' . LANG, 'hits', 'record_order', 'record_type', 'enable'))
                ->join(array('c' => $this->_name . '_cat'), 'n.dos_module_item_cat_cat_id = c.cat_id', array('cat_title' . LANG))
                ->order('record_order DESC')
                ->limitPage($page, $rowCount);
        $result = $db->query($select)->fetchAll();
        if (count($result) > 0) {
            return $result;
        } else {
            $lang = Zend_Registry::get("lang");
            return $lang['norecord'];
        }
    }

    //Back end - Đếm số mẩu tin Danh mục
    public function countItembyCatID($cid) {
        $db = Zend_Registry::get('connectDb');
        $select = $db->select()->from($this->_name, array('COUNT(record_id) AS num'))
                ->where('dos_module_item_cat_cat_id = ?', $cid);
        return $db->fetchOne($select);
    }

    public function countItemadmin() {
        $db = $this->getAdapter();
        $select = $db->select()->from($this->_name, array('count(record_id) as totalItem'));
        return $db->fetchOne($select);
    }

    public function menuAdmin() {
        $cat = new $this->_modelCat();
        $menu[] = array('url' => $this->_module . '/cat',
            'name' => 'Danh mục',
            'nameen' => 'Category',
            'namefr' => 'Category',
            'num' => $cat->countCat());
        $menu[] = array('url' => $this->_module,
            'name' => 'Bài viết',
            'nameen' => 'Post',
            'namefr' => 'Post',
            'num' => $this->countItemadmin());
        return $menu;
    }

    public function activeItem($data = NULL) {
        $flag = isset($data['factive']) ? $data['factive'] : 'disable';
        $ids = isset($data['ids']) ? $data['ids'] : '';
        $orders = isset($data['orders']) ? $data['orders'] : '';
        $sort = isset($data['sort']) ? $data['sort'] : '';

        if ($sort) {
            if (is_array($orders)) {
                while (list($id, $order) = each($orders)) {
                    $id = intval($id);
                    $order = intval($order);
                    if ($id && $order) {
                        $this->update(array('record_order' => $order), 'record_id=' . $id);
                    }
                }
            }
        } else {
            if (!empty($ids)) {
                if (!is_array($ids)) {
                    $record_id[0] = $ids;
                } else {
                    $record_id = $ids;
                }
                unset($ids);

                if ($flag) {
                    //show or hidden
                    $active = ($flag == "enable") ? 1 : 0;
                    $where = 'record_id = -1';
                    $data = array('enable' => $active);

                    foreach ($record_id as $value) {
                        $id = intval($value);
                        if ($id) {
                            $where .= ' OR record_id=' . $id;
                        }
                    }
                    $this->update($data, $where);
                } else {
                    //delete
                    $where = 'record_id = -1';
                    foreach ($record_id as $value) {
                        $id = intval($value);
                        if ($id) {
                            $where .= ' OR record_id=' . $id;
                            $this->delPic($id);
                        }
                    }

                    $this->delete($where);
                }
            }
        }
    }

    public function delPic($id) {
        $select = $this->select()->from($this->_name, array('pic_thumb'))->where('record_id =?', $id);
        $result = $this->fetchRow($select)->toArray();

        if ($result['pic_thumb']) {
            @unlink(REAL_PATH . IMAGES_PATH . $this->_module . '/' . $result['pic_thumb']);
        }
    }

    //Back end - Add new item
    public function addItem($data = NULL) {
        $file_thumb = null;
        if (!empty($_FILES['file_thumb']['name'])) {
            $upload = new GLT_File_Upload();
            $upload->upload($_FILES['file_thumb'], $this->_config[$this->_module . '_width_thumb'], $this->_config[$this->_module . '_height_thumb'], $this->_config['sys_size_upload'], REAL_PATH . IMAGES_PATH . $this->_module . '/');

            if ($upload->isVail() == false) {
                $file_thumb = $upload->transferFile(); //upload file
            }
        }

        //Get max record
        $db = $this->getAdapter();
        $select = $db->select()->from($this->_name, array('max(record_order) as max'));
        $max_record = $db->fetchOne($select) + 1;

        $data = array('pic_thumb' => $file_thumb,
            'title' => $this->_xss->purify($data['title']),
            'titleen' => $this->_xss->purify($data['titleen']),
            'titlefr' => $this->_xss->purify($data['titlefr']),
            'preview' => $this->_xss->purify($data['preview']),
            'previewen' => $this->_xss->purify($data['previewen']),
            'previewfr' => $this->_xss->purify($data['previewfr']),
            'content' => $this->_xss->purify($data['detail']),
            'contenten' => $this->_xss->purify($data['detailen']),
            'contentfr' => $this->_xss->purify($data['detailfr']),
            'record_order' => $max_record,
            'record_type' => $this->_xss->purify($data['hot']),
            'enable' => $this->_xss->purify($data['active']),
            'dos_module_item_cat_cat_id' => $this->_xss->purify($data['parentcat']));
        $this->insert($data);
    }

    public function editItem($data = NULL) {
        $where = 'record_id = ' . $data['id'];
        if (count($this->fetchRow($where))) {
            return $this->fetchRow($where)->toArray();
        } else {
            $lang = Zend_Registry::get("lang");
            echo $lang['norecord'];
        }
    }

    public function saveItem($data = NULL) {
        $file_thumb = $data['fileold_thumb'];
        if (!empty($_FILES['file_thumb']['name'])) {
            $upload = new GLT_File_Upload();
            $upload->upload($_FILES['file_thumb'], $this->_config[$this->_module . '_width_thumb'], $this->_config[$this->_module . '_height_thumb'], $this->_config['sys_size_upload'], REAL_PATH . IMAGES_PATH . $this->_module . '/');

            if ($upload->isVail() == false) {
                $file_thumb = $upload->transferFile(); //upload file
                $upload->removeFile(REAL_PATH . IMAGES_PATH . $this->_module . '/' . $data['fileold_thumb']);
            }
        }

        $where = 'record_id = ' . $data['id'];
        $data = array('pic_thumb' => $file_thumb,
            'title' => $this->_xss->purify($data['title']),
            'titleen' => $this->_xss->purify($data['titleen']),
            'titlefr' => $this->_xss->purify($data['titlefr']),
            'preview' => $this->_xss->purify($data['preview']),
            'previewen' => $this->_xss->purify($data['previewen']),
            'previewfr' => $this->_xss->purify($data['previewfr']),
            'content' => $this->_xss->purify($data['detail']),
            'contenten' => $this->_xss->purify($data['detailen']),
            'contentfr' => $this->_xss->purify($data['detailfr']),
            'record_type' => $this->_xss->purify($data['hot']),
            'enable' => $this->_xss->purify($data['active']),
            'dos_module_item_cat_cat_id' => $this->_xss->purify($data['parentcat']));
        $this->update($data, $where);
    }

    //Back end - Delete for cat
    public function delItembyCat($data = NULL) {
        $db = Zend_Registry::get('connectDb');
        $select = $db->select()->from($this->_name, array('record_id'))->where('dos_module_item_cat_cat_id =?', $data['id']);
        $result = $db->query($select)->fetchAll();

        if ($data['delproduct'] == 'del') {
            foreach ($result as $value) {
                //delete item
                $this->delPic($value['record_id']); //delete picture
                $where = 'record_id = ' . $value['record_id'];
                $this->delete($where);
            }
        } elseif ($data['delproduct'] == 'move') {
            foreach ($result as $value) {
                //move item
                $where = 'record_id = ' . $value['record_id'];
                $this->update(array('dos_module_item_cat_cat_id' => $data['catmove']), $where);
            }
        }

        //Back end - move all subcat to new cat parent
        $cat = new $this->_modelCat();

        if ($data['delcat'] == 'move') {
            $cat->findcatParent($data['id'], $data['movetocat']);
        } elseif ($data['delcat'] == 'del') {
            if ($data['movecat'] == 'del') {
                $cat->loopDelItemtoCat($data['id']);
            } elseif ($data['movecat'] == 'move') {
                $cat->loopMoveItemtoCat($data['id'], $data['moveprotocat']);
            }
            //delete all subcat
            $cat->loopDelSubCat($data['id']);
        }
        //delete cat
        $cat->delCat($data['id']);
    }

    //Back end - delete item to new cat
    public function deleteItem($cat_id) {
        $select = $this->select()->from($this->_name, array('record_id'))
                ->where('dos_module_item_cat_cat_id = ?', $cat_id);
        $result = $this->fetchAll($select);
        foreach ($result as $value) {
            $this->delPic($value['record_id']);
        }
        $where = 'dos_module_item_cat_cat_id = ' . $cat_id;
        $this->delete($where);
    }

    //Back end - update item to new cat
    public function updateItem($cat_id, $cat_id_new) {
        $where = 'dos_module_item_cat_cat_id = ' . $cat_id;
        $this->update(array('dos_module_item_cat_cat_id' => $cat_id_new), $where);
    }

    public function updateHits($record_id) {
        $db = Zend_Registry::get('connectDb');
        $sql = "UPDATE `" . $this->_name . "` SET `hits` = `hits`+1 WHERE `record_id` = " . $record_id . ";";
        $db->query($sql);
    }

}
