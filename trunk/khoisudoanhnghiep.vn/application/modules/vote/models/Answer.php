<?php

class Vote_Model_Answer extends Zend_Db_Table {

    protected $_name = 'dos_module_vote_rows';
    protected $_primary = 'id';

    //Back end - Thêm mới mẫu tin
    public function addItem($vid, $answer, $url) {
        $size = count($answer);
        for ($i = 0; $i < $size; $i++) {
            if ($answer[$i] != '') {
                $data = array(
                    'answer' => $answer[$i],
                    'url' => $url[$i],
                    'vote_id' => $vid,
                );
                $this->insert($data);
            }
        }
    }
    public function del($vid){
        $this->delete('vote_id = '.$vid);
    }

    public function updateItem($data = NULL) {
        $size = count($data['answer']);
        for ($i = 0; $i < $size; $i++) {
            $where = 'id = ' . $data['ids'][$i] . ' and vote_id = ' . $data['id'];
            if ($data['answer'][$i] != '') {
                $data1 = array(
                    'answer' => $data['answer'][$i],
                    'url' => $data['url'][$i],
                    'vote_id' => $data['id'],
                );
                if ($data['ids'][$i] != 0)
                    $this->update($data1, $where);
                else
                    $this->insert($data1);
            }else {
                $this->delete($where);
            }
        }
    }

    public function getAnswer($vid) {
        $select = $this->select()->from($this->_name, array('*'))->where('vote_id=?', $vid);
        $r = $this->fetchAll($select)->toArray();
        $tmp = null;
        if (count($r)) {
            foreach ($r as $value) {
                $tmp['answer'][] = $value['answer'];
                $tmp['url'][] = $value['url'];
                $tmp['ids'][] = $value['id'];
            }
        }
        return $tmp;
    }
    public function getAnswerView($vid) {
        $select = $this->select()->from($this->_name, array('*'))->where('vote_id=?', $vid);
        return $this->fetchAll($select)->toArray();
    }
    public function updateVote($vid,$id) {
        $_db = Zend_Registry::get('connectDb');
        $sql = "UPDATE `".$this->_name."` SET `num_vote` = `num_vote`+1 WHERE `id` = ".$id." and `vote_id` = ".$vid.";";
    	$_db->query($sql);
    }
    

}