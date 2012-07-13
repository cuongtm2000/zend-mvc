<?php

class GLT_Model_Comments extends Zend_Db_Table {

    protected $_name = '';
    protected $_primary = 'cmt_id';
    protected $_config = null;
    private $_xss = NULL;

    public function init() {
        $this->_config = Zend_Registry::get("config");
        $this->_xss = Zend_Registry::get('xss');
    }

    public function addItem($data = NULL) {
        try {
            $bind = array(
                'cmt_name' => $this->_xss->purify(trim($data['cmt_name'])),
                'cmt_title' => $this->_xss->purify(trim($data['cmt_title'])),
                'cmt_content' => $this->_xss->purify($data['cmt_content']),
                'cmt_email' => $this->_xss->purify($data['cmt_email']),
                'cmt_date' => time(),
                'dos_module_item_record_id' => $this->_xss->purify($data['id']),
            );
            return $this->insert($bind);
        } catch (Exception $e) {
            var_dump($e);
        }
    }

    public function listItem($id) {
        try {
            $select = $this->select()
                    ->from($this->_name, array('cmt_id', 'cmt_name', 'cmt_title', 'cmt_content', 'cmt_date'))
                    ->where('cmt_enable = 1')
                    ->where('dos_module_item_record_id = ?', $id)
                    ->order('cmt_date ASC')
            ;
            return $this->fetchAll($select)->toArray();
        } catch (Exception $exc) {
            var_dump($exc);
        }
    }

    public function listItems($data = NULL) {
        //get paging number
        $paginator = $data['paginator'];
        if ($paginator['itemCountPerPage'] > 0) {
            $page = $paginator['currentPage'];
            $rowCount = $paginator['itemCountPerPage'];
        }
        $select = $this->select()->from($this->_name, array('cmt_id', 'cmt_title', 'cmt_content', 'cmt_email', 'cmt_enable', 'cmt_name', 'dos_module_item_record_id', 'cmt_date'))
                ->order('cmt_date DESC')
                ->limitPage($page, $rowCount)
        ;

        try {
            return $this->fetchAll($select)->toArray();
        } catch (Exception $exc) {
            echo $exc->getTraceAsString();
        }
    }

    public function getItem($id) {
        $db = $this->getAdapter();
        $select = $db->select()->from($this->_name, array('cmt_title', 'cmt_content'))
                ->where('cmt_id = ?', $id);
        try {
            return $db->fetchRow($select);
        } catch (Exception $exc) {
            echo $exc->getTraceAsString();
        }
    }

    public function countItem() {
        $db = $this->getAdapter();
        $select = $db->select()->from($this->_name, array('count(cmt_id)'));
        return $db->fetchOne($select);
    }

    public function delItem($id) {
        $this->delete('cmt_id=' . $id);
    }

    public function delItemFrom($post_id) {
        $this->delete('dos_module_item_record_id=' . $post_id);
    }

    public function enableItem($id) {
        try {
            $r = $this->update(array('cmt_enable' => 1), 'cmt_id=\'' . $id . '\'');
        } catch (Exception $e) {
            var_dump($e);
        }
    }

    public function updateItem($data = NULL) {
        try {
            $r = $this->update(array(
                'cmt_title' => $this->_xss->purify(trim($data['cmt_title'])),
                'cmt_content' => $this->_xss->purify($data['cmt_content'])
                    ), 'cmt_id=\'' . $data['id'] . '\'');
        } catch (Exception $e) {
            var_dump($e);
        }
    }

    public function disableItem($id) {
        try {
            $r = $this->update(array('cmt_enable' => 0), 'cmt_id=\'' . $id . '\'');
        } catch (Exception $e) {
            var_dump($e);
        }
    }

}