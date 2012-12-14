<?php

class CounterValue extends CActiveRecord {

    public function tableName() {
        return 'hoiit_module_counter_value';
    }

    public function init() {
        parent::init();

        $keys = array('max_visit_day', 'max_visit_value', 'time_start_today', 'today_visited', 'total_visited', 'yesterday_visited');

        foreach ($keys as $value) {
            $r = $this->exists('save_name = :v', array(':v' => $value));
            if (!$r) {
                $command = Yii::app()->db->createCommand('insert INTO ' . $this->tableName() . ' values(:key,0)');
                $command->bindParam(":key", $value, PDO::PARAM_STR);
                $command->query();
            }
        }
    }

    public function getSaveValue($save_name) {
        $r = $this->findByPk($save_name);
        return $r->save_value;
    }

    public function updateTimeStampToday() {
        $tmp = mktime(0, 0, 0, date("m"), date("d"), date("Y"));
        $this->updateByPk('time_start_today', array('save_value' => $tmp));
    }

    public function updateSaveValue($save_name) {
        $r = $this->findByPk($save_name);
        $visit = $r->save_value + 1;
        $this->updateByPk($save_name, array('save_value' => $visit));
        return $visit;
    }

    public function setSaveValue($save_name, $value) {
        $this->updateByPk($save_name, array('save_value' => $value));
    }

    public function resetNewDay() {
        $this->updateTimeStampToday();
        $visit = $this->getSaveValue('today_visited');
        $this->setSaveValue('yesterday_visited', $visit);
        $this->setSaveValue('today_visited', 0);
    }

    public function updateNewVisit() {
        $this->updateSaveValue('total_visited');
        $visit_today = $this->updateSaveValue('today_visited');
        $max_visit_value = $this->getSaveValue('max_visit_value');

        if ($visit_today > $max_visit_value) {
            $tmp = mktime(0, 0, 0, date("m"), date("d"), date("Y"));
            $this->setSaveValue('max_visit_value', $visit_today);
            $this->setSaveValue('max_visit_day', $tmp);
        }
    }

    public function setMaxVisitValue($value) {
        $this->updateByPk('max_visit_value', array('save_value' => $value));
    }

}