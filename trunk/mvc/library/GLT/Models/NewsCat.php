<?php

class GLT_Models_NewsCat extends Zend_Db_Table {

    protected $_module;
    protected $_model;
    protected $_name;
    protected $_primary = 'cat_id';
    protected $_config = NULL;
    protected $_xss = NULL;
    protected $_cat_id = 0; //cat_id
    protected $_numitem = 0; //numitem for cat
    //var for listCatParent
    protected $_catdata = array();
    protected $_cat_count = 0;
    protected $_subcat_data = array();
    protected $_sortcat_count = 0;

    public function init() {
        $this->_config = Zend_Registry::get("config");
        $this->_xss = Zend_Registry::get('xss');
        $this->_name = 'dos_module_' . $this->_module . '_cat';
    }

    public function getListmenu() {
        $select = $this->select()
                ->from($this->_name, array('cat_id', 'cat_title' . LANG, 'cat_parent_id', 'tag'))
                ->where('cat_enable = 1')
                ->order('cat_order ASC');
        return $this->fetchAll($select)->toArray();
    }

    // Front end - Get tất cả Danh mục cat_parent_id
    public function getListmenuParentID($cid) {
        $select = $this->select()
                ->from($this->_name, array('cat_id', 'cat_title' . LANG, 'tag'))
                ->where('cat_parent_id =?', $cid)
                ->where('cat_enable = 1')
                ->order('cat_order ASC');
        return $this->fetchAll($select)->toArray();
    }

    // Front end - Get chi tiết danh mục
    public function getDetailCat($data = NULL) {
        $select = $this->select()
                ->from($this->_name, array('cat_title' . LANG, 'tag'))
                ->where('cat_id = ?', $this->getRecordByTag($data['id']));
        return $this->fetchRow($select)->toArray();
    }

    //Front end - Get cat_id by tag
    public function getRecordByTag($tag, $table = NULL) {
        $table = ($table) ? $table : $this->_name;
        return $this->_db->fetchOne("SELECT cat_id FROM " . $table . " WHERE tag = ?", array($tag));
    }

    public function listCatParent($cid = 0) {
        $select = $this->select()->from($this->_name, array('cat_id', 'cat_title' . LANG, 'cat_parent_id', 'cat_order', 'cat_enable'))->order('cat_order DESC');
        $result = $this->fetchAll($select);
        if (count($result)) {
            $this->_catdata = $result->toArray();
            $this->_cat_count = count($this->_catdata);

            $this->listSubcat($cid);

            return $this->_subcat_data;
        } else {
            $lang = Zend_Registry::get("lang");
            return $lang['norecord'];
        }
    }

    private function listSubcat($cid = 0, $getall = 1, $parent_id = 0, $level = 1, $str = "", $parent_enabled = 1) {
        $cat_level = 2;
        $prefix = ($cat_level > 1) ? '|-- ' : '';
        for ($i = 0; $i < $this->_cat_count; $i++) {
            if (($this->_catdata[$i]['cat_parent_id'] == $parent_id) && ($cid != $this->_catdata[$i]['cat_id'])) {
                $this->_subcat_data[$this->_sortcat_count] = $this->_catdata[$i];
                $this->_subcat_data[$this->_sortcat_count]["title_prefix"] = $str . $prefix;
                $this->_subcat_data[$this->_sortcat_count]["level"] = $level;

                if (!$parent_enabled || !$this->_catdata[$i]['cat_enable']) {
                    $cat_enabled = 0;
                } else {
                    $cat_enabled = 1;
                }
                $this->_subcat_data[$this->_sortcat_count]["cat_enable"] = $cat_enabled;
                $this->_sortcat_count++;

                if ($getall || ($level < $cat_level - 1)) {
                    $str2 = $str . "&nbsp; &nbsp; &nbsp;";
                    $this->listSubcat($cid, $getall, $this->_catdata[$i]['cat_id'], $level + 1, $str2, $cat_enabled);
                }
            }
        }
    }

    public function addItem($data = NULL) {
        //Get max record
        $select = $this->select()->from($this->_name, array('max(cat_order) as max'));
        $max_record = $this->_db->fetchOne($select) + 1;

        $data = array('cat_parent_id' => $this->_xss->purify($data['parent_id']), 
            'cat_title' => $this->_xss->purify($data['cat_title']), 
            'cat_titleen' => $this->_xss->purify($data['cat_titleen']), 
            'cat_titlefr' => $this->_xss->purify($data['cat_titlefr']), 
            'tag' => $this->_xss->purify($data['tag']), 
            'description' => $this->_xss->purify($data['description']), 
            'cat_order' => $max_record);
        $this->insert($data);
    }

    public function editItem($data = NULL) {
        $where = 'cat_id = ' . $data['id'];
        return $this->fetchRow($where)->toArray();
    }

    public function saveItem($data = NULL) {
        $where = 'cat_id = ' . $data['id'];
        $data = array('cat_parent_id' => $this->_xss->purify($data['parent_id']), 
            'cat_title' => $this->_xss->purify($data['cat_title']), 
            'cat_titleen' => $this->_xss->purify($data['cat_titleen']), 
            'cat_titlefr' => $this->_xss->purify($data['cat_titlefr']),
            'tag' => $this->_xss->purify($data['tag']), 
            'description' => $this->_xss->purify($data['description'])
         );
        $this->update($data, $where);
    }

    //functions for delete Cat
    public function getInfoCat($data = NULL) {
        $select = $this->select()
                ->from($this->_name, array('cat_title' . LANG))
                ->where('cat_id = ?', $data['id']);
        return $this->fetchRow($select);
    }

    public function countItemSub($data = NULL) {
        $select = $this->select()->from(array('p' => 'dos_module_' . $this->_module), array('COUNT(record_id) AS numcat'))
                ->join(array('c' => $this->_name), 'p.dos_module_item_cat_cat_id = c.cat_id', array())
                ->where('cat_id = ?', $data['id']);
        return $this->_db->fetchOne($select);
    }

    public function countCat() {
        $select = $this->_db->select()->from($this->_name, array('count(cat_id)'));
        return $this->_db->fetchOne($select);
    }

    public function countSubcat($cat_id) {
        $this->loopCat($cat_id); //loop find subcat

        $data['numcat'] = $this->_cat_id;
        $data['numitemcat'] = $this->_numitem;
        return $data;
    }

    private function loopCat($cat_id) {
        $select = $this->_db->select()->from($this->_name, array('cat_id'))
                ->where('cat_parent_id = ?', $cat_id);
        $result = $this->_db->fetchAll($select);

        foreach ($result as $value) {
            $this->_cat_id++;
            $this->_numitem += $this->countItembyCat($value['cat_id']);
            $this->loopCat($value['cat_id']);
        }
    }

    private function countItembyCat($id) {
        $select = $this->_db->select()
                ->from('dos_module_' . $this->_module, array('COUNT(record_id)'))
                ->where('dos_module_item_cat_cat_id = ?', $id);
        return $this->_db->fetchOne($select);
    }

    public function findcatParent($cat_id, $cat_parent_id) {
        $select = $this->_db->select()->from($this->_name, array('cat_id'))
                ->where('cat_parent_id = ?', $cat_id);
        $result = $this->_db->fetchAll($select);

        foreach ($result as $value) {
            $where = 'cat_id = ' . $value['cat_id'];
            $this->update(array('cat_parent_id' => $cat_parent_id), $where);
        }
    }

    //Xóa tất cả sản phẩm của phân loại con
    public function loopDelItemtoCat($cat_id) {
        $select = $this->_db->select()->from($this->_name, array('cat_id'))
                ->where('cat_parent_id = ?', $cat_id);
        $result = $this->_db->fetchAll($select);

        $item = new $this->_model();
        foreach ($result as $value) {
            //update dos_module_gallery_cat_cat_id
            $item->deleteItem($value['cat_id']);

            $this->loopDelItemtoCat($value['cat_id']);
        }
    }

    //Di chuyển tất cả sản phẩm của phân loại con đến phân loại:
    public function loopMoveItemtoCat($cat_id, $cat_id_new) {
        $select = $this->select()->from($this->_name, array('cat_id'))
                ->where('cat_parent_id = ?', $cat_id);
        $result = $this->fetchAll($select);

        $item = new Gallery_Model_Gallery();
        foreach ($result as $value) {
            //update dos_module_product_cat_cat_id
            $item->updateItem($value['cat_id'], $cat_id_new);

            $this->loopMoveItemtoCat($value['cat_id'], $cat_id_new);
        }
    }

    //xóa phân loại con
    public function loopDelSubCat($cat_id) {
        $select = $this->select()->from($this->_name, array('cat_id'))
                ->where('cat_parent_id = ?', $cat_id);
        $result = $this->fetchAll($select);

        foreach ($result as $value) {
            $where = 'cat_id = ' . $value['cat_id'];
            $this->delete($where);
            $this->loopDelSubCat($value['cat_id']);
        }
    }

    public function delCat($cid) {
        $where = 'cat_id = ' . $cid;
        $this->delete($where);
    }

    //Back end - Kich hoat mẫu tin
    public function activeItem($data = NULL) {
        $flag = isset($data['factive']) ? $data['factive'] : 'disable';
        $ids = isset($data['ids']) ? $data['ids'] : '';

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
                $where = 'cat_id = -1';
                $data = array('cat_enable' => $active);

                foreach ($record_id as $value) {
                    $id = intval($value);
                    if ($id) {
                        $where .= ' OR cat_id=' . $id;
                    }
                }
                $this->update($data, $where);
            }
        }
    }

    // Back end - Get cat_parent_id, cat_order
    public function getCatParent_CatOrder($cid) {
        $select = $this->select()
                ->from($this->_name, array('cat_parent_id', 'cat_order'))
                ->where('cat_id = ?', $cid);
        return $this->fetchRow($select);
    }

    // Back end - Get cat_id, cat_order Next
    public function getCatid_CatOrder_Next($cid, $order) {
        $select = $this->select()
                ->from($this->_name, array('cat_id', 'cat_order'))
                ->where('cat_parent_id = ?', $cid)
                ->where('cat_order > ?', $order)
                ->order('cat_order ASC');
        return $this->fetchRow($select);
    }

    // Back end - Get cat_id, cat_order Previous
    public function getCatid_CatOrder_Previous($cid, $order) {
        $select = $this->select()
                ->from($this->_name, array('cat_id', 'cat_order'))
                ->where('cat_parent_id = ?', $cid)
                ->where('cat_order < ?', $order)
                ->order('cat_order DESC');
        return $this->fetchRow($select);
    }

    // Back end - Update for up, down
    public function updateUpDown($cat_info, $next_info, $cid) {
        $this->update(array('cat_order' => $next_info['cat_order']), 'cat_id = ' . $cid);
        $this->update(array('cat_order' => $cat_info['cat_order']), 'cat_id = ' . $next_info['cat_id']);
    }

}
