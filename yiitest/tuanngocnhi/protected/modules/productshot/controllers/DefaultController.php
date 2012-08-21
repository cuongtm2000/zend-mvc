<?php

class DefaultController extends Controller {
    public function actionIndex() {
        $this->layout = '//layouts/column-3';
		Yii::app()->clientScript->registerCssFile(Yii::app()->theme->baseUrl . '/css/main.css');
        $data = Products::model()->listItemHot();
        $this->render(Yii::app()->session['template'] . '/index', $data);
    }
}