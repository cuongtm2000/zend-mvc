<?php

class DefaultController extends AdminController {

    public function filters() {
        return array(
            'accessControl',
        );
    }

    public function accessRules() {
        return array(
            array(
                'allow',
                //'actions' => array('index'),
                'users' => array('@'),
            ),
            array('deny'),
        );
    }

    public function actionIndex() {
        $this->layout = '//layouts/column2';
        
        $script = '$("#load-news").load("/read-rss");';
        Yii::app()->clientScript->registerScript('', $script, CClientScript::POS_READY);
        
        //static counter
        $counter = PcounterSave::model()->findByAttributes(array('save_name'=>'counter', 'dos_usernames_username'=>Yii::app()->user->id));
        $this->render('index', array('counter' => $counter));
    }

}