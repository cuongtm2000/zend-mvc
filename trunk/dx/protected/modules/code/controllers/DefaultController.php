<?php

class DefaultController extends Controller {

    public function actionIndex() {
		Yii::app()->clientScript->registerCssFile(Yii::app()->theme->baseUrl.'/images/skin.css');
        $this->render('index', array('items' => Code::model()->listItem()));
    }

    /*public function actionView($id) {
        $model_class = ucfirst($this->module->id) . 'Language';

        $this->render('view', array('item' => $model_class::model()->detailRecord($id)));
    }*/

}