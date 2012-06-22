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

	public function actionRead(){
		$content = file_get_contents('http://dos.vn/read-rss');
		echo $content;
	}

    public function actionIndex() {
        $this->layout = '//layouts/column2';
        Yii::app()->clientScript->registerScript('', '$("#load-news").load("'.Yii::app()->request->baseUrl.'/admin/default/read");', CClientScript::POS_READY);
        
        //static counter
        $counter = PcounterSave::model()->findByAttributes(array('save_name'=>'counter'));
        $this->render('index', array('counter' => $counter));
    }

}