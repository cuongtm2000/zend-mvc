<?php

class DefaultController extends Controller {

    public function actionIndex() {
		$this->pageTitle = 'asa';
		$this->description = 'an';
		echo $this->module->id;
		echo Yii::app()->session['subdomain'];

        $this->render(Yii::app()->session['template'] . '/index');
    }

}