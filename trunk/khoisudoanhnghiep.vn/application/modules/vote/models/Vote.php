<?php

class Vote_Model_Vote extends Zend_Db_Table {

    protected $_name = 'dos_module_vote';
    protected $_primary = 'record_id';
    private $_config = NULL;
    private $_xss = NULL;

    public function init() {
        $this->_config = Zend_Registry::get("config");
        $this->_xss = Zend_Registry::get('xss');
    }

    //Front end - Danh sách
    public function getListmenu() {
        $select = $this->select()->from($this->_name, array('record_id', 'pic_thumb', 'title' . LANG, 'url', 'description', 'position', 'type'))
                ->where('enable = ?', 1)
                ->order('order ASC');
        $result = $this->fetchAll($select)->toArray();
        return $result;
    }
    
    public function getFirstVote(){
         $time= time();
         $select = $this->select()->from($this->_name, array('record_id', 'question'))
         		->where('begin_date < ?', $time)
                        ->where('end_date > ?',$time)
                        ->order('order ASC');
        $result= $this->fetchRow($select)->toArray();
        
        $ans= new Vote_Model_Answer();
        $result['answer']= $ans->getAnswerView($result['record_id']);     
        return $result;
    }
    

    public function getDetail($id) {
        $select = $this->select()->from($this->_name, array('record_id', 'question','begin_date'))
                ->where('record_id = ?', $id);
        $result= $this->fetchRow($select)->toArray();
        
        $ans= new Vote_Model_Answer();
        $result['answer']= $ans->getAnswerView($result['record_id']);     
        return $result;    
    }

    //Back end - Danh sách menu trong Admin
    public function menuAdmin() {
        $menu[] = array('url' => 'vote', 'name' => 'Bài viết', 'nameen' => 'Post', 'namefr' => 'Post', 'num' => $this->countItem());
        return $menu;
    }

    //Back end - Thêm mới mẫu tin
    public function addItem($data = NULL) {
        $tmp= explode('-', $data['begin_date']);
        $begin_date=  mktime(0, 0, 0, $tmp[1], $tmp[0], $tmp[2]);
        $tmp= explode('-', $data['end_date']);
        $end_date=  mktime(0, 0, 0, $tmp[1], $tmp[0], $tmp[2]);
        
        $data1 = array(
            'question' => $this->_xss->purify($data['question']),
            'begin_date' => $begin_date,
            'end_date' => $end_date,           
            'enable' => $this->_xss->purify($data['active']),
        );
        $id=$this->insert($data1);
        $ans= new Vote_Model_Answer();
        $ans->addItem($id, $data['answer'], $data['url']);
    }

    //Back end - Get chi tiết bản tin
    public function editItem($data = NULL) {
        $where = 'record_id = ' . $data['id'];
        $result = $this->fetchRow($where);
        if (count($result)) {
            $t= $result->toArray();
            $t['begin_date']=date("d-m-Y", $t['begin_date']);
            $t['end_date']=date("d-m-Y", $t['end_date']);
            return $t;
        } else {
            $lang = Zend_Registry::get("lang");
            echo $lang['norecord'];
        }
    }

    //Back end - Cập nhật bản tin
    public function saveItem($data = NULL) {
        $where = 'record_id = ' . $data['id'];
        
        $tmp= explode('-', $data['begin_date']);
        $begin_date=  mktime(0, 0, 0, $tmp[1], $tmp[0], $tmp[2]);
        $tmp= explode('-', $data['end_date']);
        $end_date=  mktime(0, 0, 0, $tmp[1], $tmp[0], $tmp[2]);
        
        $data1 = array(
            'question' => $this->_xss->purify($data['question']),
            'begin_date' => $begin_date,
            'end_date' => $end_date,           
            'enable' => $this->_xss->purify($data['active']),
        );
        $this->update($data1, $where);
        $ans= new Vote_Model_Answer();
        $ans->updateItem($data);        
    }

    //Back end - Đếm tổng số mẫu tin
    public function countItem() {
        $db = Zend_Registry::get('connectDb');
        $select = $db->select()->from($this->_name, array('count(record_id) as totalItem'));
        return $db->fetchOne($select);
    }

    //Back end - Danh sách mẫu tin
    public function listItem($data = NULL) {
        //get paging number
        $paginator = $data['paginator'];
        if ($paginator['itemCountPerPage'] > 0) {
            $page = $paginator['currentPage'];
            $rowCount = $paginator['itemCountPerPage'];
        }
        try {
            $select = $this->select()->from($this->_name, array('*'))
                    ->order('order ASC')
                    ->order('create_date DESC')
                    ->limitPage($page, $rowCount);
            $result = $this->fetchAll($select)->toArray();
        } catch (Exception $e) {
            var_dump($e);
        }
        if (count($result) > 0) {
            return $result;
        } else {
            $lang = Zend_Registry::get("lang");
            return $lang['norecord'];
        }
    }

    //Back end - Show, hide, delete item
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
                        $this->update(array('order' => $order), 'record_id=' . $id);
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
                        $ans=new Vote_Model_Answer();
                        if ($id) {
                            $where .= ' OR record_id=' . $id;
                            $ans->del($id);
                        }
                    }

                    $this->delete($where);
                }
            }
        }
    }

}