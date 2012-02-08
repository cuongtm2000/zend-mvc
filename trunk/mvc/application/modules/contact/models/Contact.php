<?php

class Contact_Model_Contact extends Zend_Db_Table {

    protected $_name = 'dos_module_contact';
    protected $_primary = 'record_id';
    protected $_config = NULL;
    private $_web = NULL;
    private $_xss = NULL;

    public function init() {
        $this->_config = Zend_Registry::get("config");
        $this->_web = Zend_Registry::get("web");
        $this->_xss = Zend_Registry::get('xss');
    }

    public function getHomeRecord() {
        $where = 'hot = 1 AND enable = 1';
        $order = '';
        $count = 0;
        $offset = 1;

        $result = $this->fetchRow($where, $order, $count, $offset);
        if (count($result) > 0) {
            $result = $result->toArray();
        }
        return $result;
    }

    public function getFristRecord() {
        $where = 'hot = 0 AND enable = 1';
        $order = '';
        $count = 0;
        $offset = 1;

        $result = $this->fetchRow($where, $order, $count, $offset);
        if (count($result) > 0) {
            $result = $result->toArray();
        }
        return $result;
    }

    public function menuAdmin() {
        $menu[] = array('url' => 'contact', 'name' => 'Bài viết', 'nameen' => 'Post', 'namefr' => 'Post', 'num' => $this->countItem());
        return $menu;
    }

    public function listItem($data = NULL) {
        $paginator = $data['paginator'];
        if ($paginator['itemCountPerPage'] > 0) {
            $page = $paginator['currentPage'];
            $rowCount = $paginator['itemCountPerPage'];
        }

        $select = $this->select()->from('dos_module_contact', array('record_id', 'create_date', 'title' . LANG, 'hot', 'enable'))->limitPage($page, $rowCount);
        $result = $this->fetchAll($select);

        if (count($result) > 0) {
            return $result->toArray();
        } else {
            $lang = Zend_Registry::get("lang");
            return $lang['norecord'];
        }
    }

    public function countItem() {
        $db = Zend_Registry::get('connectDb');
        $select = $db->select()->from('dos_module_contact', array('count(record_id) as totalItem'));
        return $db->fetchOne($select);
    }

    public function addItem($data = NULL) {
        $data = array('title' => $this->_xss->purify($data['title']), 'titleen' => $this->_xss->purify($data['titleen']), 'titlefr' => $this->_xss->purify($data['titlefr']), 'titlekr' => $this->_xss->purify($data['titlekr']), 'content' => $this->_xss->purify($data['detail']), 'contenten' => $this->_xss->purify($data['detailen']), 'contentfr' => $this->_xss->purify($data['detailfr']), 'contentkr' => $this->_xss->purify($data['detailkr']), 'hot' => $this->_xss->purify($data['hot']), 'enable' => $this->_xss->purify($data['active']));
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
        $where = 'record_id = ' . $data['id'];
        $data = array('title' => $this->_xss->purify($data['title']), 'titleen' => $this->_xss->purify($data['titleen']), 'titlefr' => $this->_xss->purify($data['titlefr']), 'titlekr' => $this->_xss->purify($data['titlekr']), 'content' => $this->_xss->purify($data['detail']), 'contenten' => $this->_xss->purify($data['detailen']), 'contentfr' => $this->_xss->purify($data['detailfr']), 'contentkr' => $this->_xss->purify($data['detailkr']), 'hot' => $this->_xss->purify($data['hot']), 'enable' => $this->_xss->purify($data['active']));
        $this->update($data, $where);
    }

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
                    }
                }

                $this->delete($where);
            }
        }
    }

    //send mail
    public function orderSendmail($data = NULL) {
        $html = 'Xin chào: <strong>' . $this->_web['admin_name'] . '</strong><br /><br />';
        $html .= 'Dưới đây là thông tin mà khách hàng liên hệ tại website: <strong>' . $_SERVER['HTTP_HOST'] . '</strong><br /><br />';
        $html .= 'Họ và tên: ' . $data['fullname'] . '<br />';
        $html .= 'Địa chỉ: ' . $data['address'] . '<br />';
        $html .= 'Điện thoại: ' . $data['phone'] . '<br />';
        $html .= 'Email: ' . $data['email'] . '<br />';
        $html .= 'Nội dung: ' . $data['content'] . '<br />';
        $html .= '<br />Email này được gửi từ hệ thống của công ty Thương Hội, quý khách hãy liên hệ với Khách hàng để tư vấn sản phẩm - dịch vụ của mình.<br />Cảm ơn đã sử dụng dịch vụ công ty chúng tôi<br />--<br/>Thuonghoi.com';

        //send mail
        $mail = new GLT_System_Mail();
        if ($this->_web['type'] == 1) {
            $mail->sendMailSmtp($data['email'], $this->_web['admin_email'], $data['fullname'], $this->_web['admin_name'], $this->_web['email_subject'], $html);
        } else {
            $mail->sendMailLocal($data['email'], $this->_web['admin_email'], $data['fullname'], $this->_web['admin_name'], $this->_web['email_subject'], $html);
        }
    }

}