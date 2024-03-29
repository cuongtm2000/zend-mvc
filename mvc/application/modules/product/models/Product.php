<?php

class Product_Model_Product extends Zend_Db_Table {

    protected $_name = 'dos_module_product';
    protected $_primary = 'record_id';
    private $_config = NULL;
    private $_web = NULL;
    private $_xss = NULL;
    private $_isupload_new = FALSE; //kiem tra upload editproduct

    public function init() {
        $this->_config = Zend_Registry::get("config");
        $this->_web = Zend_Registry::get("web");
        $this->_xss = Zend_Registry::get('xss');
    }

    //Front end - Danh sách bản tin Hot=1
    public function listHotItem() {
        $select = $this->select()
                ->from($this->_name, array('record_id', 'postdate', 'pic_thumb', 'title' . LANG, 'hits', 'tag'))
                ->where('hot=1')
                ->where('enable=1')
                ->order('record_order DESC')
                ->limit(4);
        return $this->fetchAll($select)->toArray();
    }

    //Front end - Danh sách bản tin đặc biệt
    public function listSpecials() {
        $select = $this->select()
                ->from($this->_name, array('record_id', 'postdate', 'pic_thumb', 'title' . LANG, 'preview' . LANG, 'unit', 'tag'))
                ->where('specials=1')
                ->where('enable=1')
                ->order('record_order DESC')
                ->limit(4);
        return $this->fetchAll($select)->toArray();
    }

    //Front end - Danh sách bản tin nhiều người xem
    public function listTopHitView() {
        $select = $this->select()
                ->from($this->_name, array('record_id', 'postdate', 'pic_thumb', 'title' . LANG, 'tag'))
                ->where('enable=1')
                ->order('hits DESC')
                ->limit(4);
        return $this->fetchAll($select)->toArray();
    }

    //Front end - Danh sách bản tin mới nhất
    public function listItemNew() {
        $select = $this->select()
                ->from($this->_name, array('record_id', 'postdate', 'pic_thumb', 'title' . LANG, 'preview' . LANG, 'unit', 'tag'))
                ->where('enable=1')
                ->order('record_order DESC')
                ->limitPage(0, 6);
        return $this->fetchAll($select)->toArray();
    }

    //Back end - List Item admin
    public function listItemadmin($data = NULL) {
        //get paging number
        $paginator = $data['paginator'];
        if ($paginator['itemCountPerPage'] > 0) {
            $page = $paginator['currentPage'];
            $rowCount = $paginator['itemCountPerPage'];
        }

        $select = $this->_db->select()->from(array('p' => $this->_name), array('record_id', 'postdate', 'title' . LANG, 'hits', 'record_order', 'hot', 'enable'))
                ->join(array('c' => $this->_name . '_cat'), 'p.dos_module_product_cat_cat_id = c.cat_id', array('cat_title' . LANG))
                ->order('record_order DESC')
                ->limitPage($page, $rowCount);
        return $this->_db->query($select)->fetchAll();
    }

    //Back end - Đếm số mẩu tin Danh mục
    public function countItembyCatID($cid) {
        $select = $this->_db->select()->from($this->_name, array('COUNT(record_id)'))
                ->where('dos_module_product_cat_cat_id = ?', $this->getCatIDByTag($cid));
        return $this->_db->fetchOne($select);
    }

    public function countItemadmin() {
        $select = $this->_db->select()->from($this->_name, array('count(record_id)'));
        return $this->_db->fetchOne($select);
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
                            $this->delPicMulti($id);
                            $this->delPic($id);
                        }
                    }
                    $this->delete($where);
                }
            }
        }
    }

    public function addItem($data = NULL) {
        //Upload multi file
        $file_desc_multi = array();
        $file_desc = $_FILES['file_desc'];
        $desc_name = $file_desc['name'];

        $i = 0;
        foreach ($desc_name as $value) {
            if (!empty($desc_name[$i])) {
                $upload = new GLT_File_Upload();
                $upload->uploadMulti($file_desc['name'][$i], $file_desc['size'][$i], $file_desc['tmp_name'][$i], $this->_config['product_width'], $this->_config['product_height'], $this->_config['sys_size_upload'], PUBLIC_PATH . '/userfiles/images/product/');

                if ($upload->isVail() == false) {
                    $file_desc_multi[] = $upload->transferFile(); //upload file
                } else {
                    print_r($upload->_errors);
                }
            }
            $i++;
        }

        $file_thumb = null;
        if (!empty($_FILES['file_thumb']['name'])) {
            $upload = new GLT_File_Upload();
            $upload->upload($_FILES['file_thumb'], $this->_config['product_width_thumb'], $this->_config['product_height_thumb'], $this->_config['sys_size_upload'], PUBLIC_PATH . '/userfiles/images/product/');

            if ($upload->isVail() == false) {
                $file_thumb = $upload->transferFile(); //upload file
            }
        }

        $file_full = null;
        if (!empty($_FILES['file_full']['name'])) {
            $upload = new GLT_File_Upload();
            $upload->upload($_FILES['file_full'], $this->_config['product_width'], $this->_config['product_height'], $this->_config['sys_size_upload'], PUBLIC_PATH . '/userfiles/images/product/');

            if ($upload->isVail() == false) {
                $file_full = $upload->transferFile(); //upload file
            }
        }

        //Get max record
        $db = $this->getAdapter();
        $select = $db->select()->from($this->_name, array('max(record_order) as max'));
        $max_record = $db->fetchOne($select) + 1;

        $bind = array('pic_thumb' => $file_thumb,
            'pic_full' => $file_full,
            'pic_desc' => implode("|", $file_desc_multi),
            'title' => $this->_xss->purify($data['title']),
            'titleen' => $this->_xss->purify($data['titleen']),
            'titlefr' => $this->_xss->purify($data['titlefr']),
            'titlekr' => $this->_xss->purify($data['titlekr']),
            'preview' => $this->_xss->purify($data['preview']),
            'previewen' => $this->_xss->purify($data['previewen']),
            'previewfr' => $this->_xss->purify($data['previewfr']),
            'previewkr' => $this->_xss->purify($data['previewkr']),
            'detail' => $this->_xss->purify($data['detail']),
            'detailen' => $this->_xss->purify($data['detailen']),
            'detailfr' => $this->_xss->purify($data['detailfr']),
            'detailkr' => $this->_xss->purify($data['detailkr']),
            'tag' => $this->_xss->purify($data['tag']),
            'description' => $this->_xss->purify($data['description']),
            'record_order' => $max_record,
            'extra_field1' => $this->_xss->purify($data['extra1']),
            'extra_field2' => $this->_xss->purify($data['extra2']),
            'extra_field3' => $this->_xss->purify($data['extra3']),
            'extra_field4' => $this->_xss->purify($data['extra4']),
            'unit' => $this->_xss->purify($data['unit']),
            'hot' => $this->_xss->purify($data['hot']),
            'specials' => $this->_xss->purify($data['specials']),
            'enable' => $this->_xss->purify($data['active']),
            'dos_module_product_cat_cat_id' => $this->_xss->purify($data['parentcat']));
        $this->insert($bind);
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
        //Upload multi file
        $file_upload_new = array();
        $file_desc_multi = array();
        $file_desc = $_FILES['file_desc'];
        $desc_name = $file_desc['name'];

        $i = 0;
        foreach ($desc_name as $value) {
            if (!empty($desc_name[$i])) {
                $upload = new GLT_File_Upload();
                $upload->uploadMulti($file_desc['name'][$i], $file_desc['size'][$i], $file_desc['tmp_name'][$i], $this->_config['product_width'], $this->_config['product_height'], $this->_config['sys_size_upload'], PUBLIC_PATH . '/userfiles/images/product/');

                if ($upload->isVail() == false) {
                    $file_desc_multi[] = $upload->transferFile(); //upload file
                } else {
                    print_r($upload->_errors);
                }

                //kiem tra xem co upload không?
                if (!$this->_isupload_new) {
                    $this->_isupload_new = TRUE;
                }
            }
            $i++;
        }

        //kiem tra có upload moi hay khong?
        if ($this->_isupload_new) {
            foreach ($data['file_old'] as $value) {
                $upload = new GLT_File_Upload();
                $upload->removeFile(PUBLIC_PATH . '/userfiles/images/product/' . $value);
            }
            $file_upload_new = $file_desc_multi;
        } else {
            $file_upload_new = $data['file_old'];
        }

        $file_thumb = $data['fileold_thumb'];
        if (!empty($_FILES['file_thumb']['name'])) {
            $upload = new GLT_File_Upload();
            $upload->upload($_FILES['file_thumb'], $this->_config['product_width_thumb'], $this->_config['product_height_thumb'], $this->_config['sys_size_upload'], PUBLIC_PATH . '/userfiles/images/product/');

            if ($upload->isVail() == false) {
                $file_thumb = $upload->transferFile(); //upload file
                $upload->removeFile(PUBLIC_PATH . '/userfiles/images/product/' . $data['fileold_thumb']);
            }
        }

        $file_full = $data['fileold_full'];
        if (!empty($_FILES['file_full']['name'])) {
            $upload = new GLT_File_Upload();
            $upload->upload($_FILES['file_full'], $this->_config['product_width'], $this->_config['product_height'], $this->_config['sys_size_upload'], PUBLIC_PATH . '/userfiles/images/product/');

            if ($upload->isVail() == false) {
                $file_full = $upload->transferFile(); //upload file
                $upload->removeFile(PUBLIC_PATH . '/userfiles/images/product/' . $data['fileold_full']);
            }
        }

        $where = 'record_id = ' . $data['id'];
        $data = array('pic_thumb' => $file_thumb,
            'pic_full' => $file_full,
            'pic_desc' => implode("|", $file_upload_new),
            'title' => $this->_xss->purify($data['title']),
            'titleen' => $this->_xss->purify($data['titleen']),
            'titlefr' => $this->_xss->purify($data['titlefr']),
            'titlekr' => $this->_xss->purify($data['titlekr']),
            'preview' => $this->_xss->purify($data['preview']),
            'previewen' => $this->_xss->purify($data['previewen']),
            'previewfr' => $this->_xss->purify($data['previewfr']),
            'previewkr' => $this->_xss->purify($data['previewkr']),
            'detail' => $this->_xss->purify($data['detail']),
            'detailen' => $this->_xss->purify($data['detailen']),
            'detailfr' => $this->_xss->purify($data['detailfr']),
            'detailkr' => $this->_xss->purify($data['detailkr']),
            'tag' => $this->_xss->purify($data['tag']),
            'description' => $this->_xss->purify($data['description']),
            'extra_field1' => $this->_xss->purify($data['extra1']),
            'extra_field2' => $this->_xss->purify($data['extra2']),
            'extra_field3' => $this->_xss->purify($data['extra3']),
            'extra_field4' => $this->_xss->purify($data['extra4']),
            'unit' => $this->_xss->purify($data['unit']),
            'hot' => $this->_xss->purify($data['hot']),
            'specials' => $this->_xss->purify($data['specials']),
            'enable' => $this->_xss->purify($data['active']),
            'dos_module_product_cat_cat_id' => $this->_xss->purify($data['parentcat']));
        $this->update($data, $where);
    }

    public function menuAdmin() {
        $cat = new Product_Model_ProductCat();
        $menu[] = array('url' => 'product/cat', 'name' => 'Danh mục', 'nameen' => 'Category', 'namefr' => 'Category', 'num' => $cat->countItem());
        $menu[] = array('url' => 'product/index', 'name' => 'Bài viết', 'nameen' => 'Post', 'namefr' => 'Post', 'num' => $this->countItemadmin());
        return $menu;
    }

    // Product by cat_id
    public function productByCat($data = NULL) {
        //get paging number
        $paginator = $data['paginator'];
        if ($paginator['itemCountPerPage'] > 0) {
            $page = $paginator['currentPage'];
            $rowCount = $paginator['itemCountPerPage'];
        }

        $select = $this->select()
                ->from($this->_name, array('record_id', 'pic_thumb', 'title' . LANG, 'preview' . LANG, 'unit', 'tag'))
                ->where('dos_module_product_cat_cat_id =?', $this->getCatIDByTag($data['id']))
                ->where('enable = 1')
                ->limitPage($page, $rowCount);
        return $this->fetchAll($select)->toArray();
    }

    private function getCatIDByTag($tag) {
        return $this->_db->fetchOne("SELECT cat_id FROM dos_module_product_cat  WHERE tag = ?", array($tag));
    }
    private function getRecordByTag($tag){
        return $this->_db->fetchOne("SELECT record_id FROM ".$this->_name." WHERE tag = ?", array($tag));
    }

    // Product by cat_id other
    public function productByCatNoneid($cid, $id) {
        $select = $this->select()->from($this->_name, array('record_id', 'pic_thumb', 'title' . LANG, 'preview' . LANG, 'unit', 'tag'))
                ->where('dos_module_product_cat_cat_id =?', $cid)
                ->where('record_id NOT IN (?)', $this->getRecordByTag($id))
                ->where('enable = 1');
        return $this->fetchAll($select)->toArray();
    }

    // Get detail product
    public function getDetail($id) {
        $select = $this->select()
                ->from($this->_name, array('record_id', 'pic_thumb', 'pic_full', 'pic_desc', 'title' . LANG, 'detail' . LANG, 'extra_field1', 'extra_field2', 'extra_field3', 'extra_field4', 'unit', 'dos_module_product_cat_cat_id', 'tag'))
                ->where('enable = ?', 1)
                ->where('tag = ?', $id);
         $result = $this->fetchRow($select);
        
        if (count($result)) {
            $this->updateHits($result['record_id']);
            return $result->toArray();
        }
    }

    //send mail
    public function orderSendmail($data = NULL, $order = NULL) {
        $html = 'Xin chào: <strong>' . $this->_web['admin_name'] . '</strong><br /><br />';
        $html .= 'Thông tin khách hàng liên hệ đặt hàng tại website: <strong>' . $_SERVER['HTTP_HOST'] . '</strong><br />';
        $html .= 'Họ và tên: ' . $data['fullname'] . '<br />';
        $html .= 'Địa chỉ: ' . $data['address'] . '<br />';
        $html .= 'Điện thoại: ' . $data['phone'] . '<br />';
        $html .= 'Email: ' . $data['email'] . '<br />';

        $html .= '<table align="center" cellspacing="0" cellpadding="5" border="1">
						<thead>
						  <tr align="center">
							<td>Tên sản phẩm</td>
							<td>Đơn giá</td>
							<td width="80">Số lượng</td>
							<td>Thành tiền</td>
						  </tr>
						</thead>
						<tbody>';

        $cartSession = new Zend_Session_Namespace('cart');
        $ssInfo = $cartSession->getIterator();

        $total = 0;
        foreach ($order as $value) {
            foreach ($ssInfo as $ss) {
                $total_item = $value['unit'] * $ss[$value['record_id']];
                $total = $total + $total_item;
                $html .= '<tr align="center"><td>' . $value['title' . LANG] . ' - ' . $value['cat_title' . LANG] . '</td><td>' . $value['unit'] . '</td><td>' . $ss[$value['record_id']] . '</td><td>' . $total_item . ' VND</td></tr>';
            }
        }

        $html .= '<tr><td colspan="3">Tổng cộng: </td><td align="center">' . number_format($total, 3) . ' VND</td></tr>';

        $html .= '</tbody>
					</table>';
        $html .= '<br />Email này được gửi từ hệ thống của công ty Thương Hội.<br />Cảm ơn đã sử dụng dịch vụ công ty chúng tôi<br />--<br/>Thuonghoi.com';

        //send mail
        //$mail = new GLT_System_Mail();
        //$mail->sendMailLocal($this->_config['sys_email_send'], $this->_web['admin_email'], $this->_config['sys_name_send'], $this->_web['admin_name'], $this->_web['email_subject'], $html);
        //send mail
        $mail = new GLT_System_Mail();
        if ($this->_web['type'] == 1) {
            $mail->sendMailSmtp($data['email'], $this->_web['admin_email'], $data['fullname'], $this->_web['admin_name'], $this->_web['email_subject'], $html);
        } else {
            $mail->sendMailLocal($data['email'], $this->_web['admin_email'], $data['fullname'], $this->_web['admin_name'], $this->_web['email_subject'], $html);
        }
    }

    public function delPic($id) {
        $select = $this->select()
                ->from($this->_name, array('pic_thumb', 'pic_full'))->where('record_id =?', $id);
        $result = $this->fetchRow($select)->toArray();

        foreach ($result as $value) {
            if ($value) {
                @unlink(PUBLIC_PATH . '/userfiles/images/product/' . $value);
            }
        }
    }

    private function delPicMulti($id) {
        $select = $this->select()->from($this->_name, array('pic_desc'))->where('record_id =?', $id);
        $result = $this->fetchRow($select)->toArray();

        $str = explode('|', $result['pic_desc']);
        foreach ($str as $value) {
            @unlink(PUBLIC_PATH . '/userfiles/images/product/' . $value);
        }
    }

    public function delProductbyCat($data = NULL) {
        $db = Zend_Registry::get('connectDb');
        $select = $db->select()->from($this->_name, array('record_id'))->where('dos_module_product_cat_cat_id =?', $data['id']);
        $result = $db->query($select)->fetchAll();

        if ($data['delproduct'] == 'del') {
            foreach ($result as $value) {
                //delete item
                $this->delPicMulti($value['record_id']); //delete picture multi
                $this->delPic($value['record_id']); //delete picture
                $where = 'record_id = ' . $value['record_id'];
                $this->delete($where);
            }
        } elseif ($data['delproduct'] == 'move') {
            foreach ($result as $value) {
                //move item
                $where = 'record_id = ' . $value['record_id'];
                $this->update(array('dos_module_product_cat_cat_id' => $data['catmove']), $where);
            }
        }

        //move all subcat to new cat parent
        $cat = new Product_Model_ProductCat();

        if ($data['delcat'] == 'move') {
            $cat->findcatParent($data['id'], $data['movetocat']);
        } elseif ($data['delcat'] == 'del') {
            if ($data['movecat'] == 'del') {
                $cat->loopDelProducttoCat($data['id']);
            } elseif ($data['movecat'] == 'move') {
                $cat->loopMoveProducttoCat($data['id'], $data['moveprotocat']);
            }
            //delete all subcat
            $cat->loopDelSubCat($data['id']);
        }
        //delete cat
        $cat->delCat($data['id']);
    }

    //update item to new cat
    public function updateItem($cat_id, $cat_id_new) {
        $where = 'dos_module_product_cat_cat_id = ' . $cat_id;
        $this->update(array('dos_module_product_cat_cat_id' => $cat_id_new), $where);
    }

    //delete item to new cat
    public function deleteItem($cat_id) {
        $db = Zend_Registry::get('connectDb');
        $select = $db->select()->from($this->_name, array('record_id'))->where('dos_module_product_cat_cat_id = ?', $cat_id);
        $result = $db->fetchAll($select);
        foreach ($result as $value) {
            $this->delPic($value['record_id']);
        }
        $where = 'dos_module_product_cat_cat_id = ' . $cat_id;
        $this->delete($where);
    }

    //Lấy danh sách record cho shopping cart
    public function listItem($arrParam = array()) {
        if (empty($arrParam))
            return;
        $ids = implode(',', array_keys($arrParam));
        $select = $this->_db->select()->from(array('p' => $this->_name), array('record_id', 'pic_thumb', 'title' . LANG, 'unit', 'hot', 'enable'))
                ->joinLeft(array('c' => $this->_name . '_cat'), 'p.dos_module_product_cat_cat_id = c.cat_id', array('cat_title' . LANG))
                ->where('enable = 1')
                ->where('p.record_id IN(' . $ids . ')');

        return $this->_db->fetchAll($select);
    }
    public function updateHits($record_id) {
        $db = Zend_Registry::get('connectDb');
        $sql = "UPDATE `" . $this->_name . "` SET `hits` = `hits`+1 WHERE `record_id` = " . $record_id . ";";
        $db->query($sql);
    }

}