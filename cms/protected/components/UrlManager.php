<?php
class UrlManager extends CUrlManager {
    protected function processRules() {
        $command = Yii::app()->db->createCommand("SELECT pattern, route FROM hoiit_urls");
        $urlRules = $command->queryAll();

        foreach ($urlRules as $value) {
            //$this->addRules(array('viet-nam' => 'vietnam/default/index'));
            $this->addRules(array($value['pattern'] => $value['route']));
        }
        parent::processRules();
    }
}