<?php

class CounterSession extends CActiveRecord {

    private $_TIME_TO_LIVE = 1800; //

    public function tableName() {
        return 'hoiit_module_counter_session';
    }

    public function updateTimeFromId($sid) {
        $this->updateByPk($sid, array('session_time' => time()));
    }

    public function clean() {
        $time= time() - $this->_TIME_TO_LIVE;        
        $command = Yii::app()->db->createCommand('delete FROM ' . $this->tableName() . ' WHERE session_time < '.$time.';');
        $command->query();
    }

    public function add($id) {
        $this->session_id=$id;
        $this->session_time=  time();
        $this->save();
    }

    public function isExistID($id) {
        return $this->exists('session_id=:id', array(':id' => $id));        
    }

}