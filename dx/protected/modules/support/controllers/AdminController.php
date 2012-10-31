<?php

class AdminController extends BackEndController {
    public function actionIndex() {
        Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl . '/js/jquery.tablednd.0.7.min.js');

        $model_class = ucfirst($this->module->id);
        $model = new $model_class();
        if (Yii::app()->request->getIsPostRequest()) {
            $model->addItem(Yii::app()->request);
            $this->refresh();
        }
        $this->render('index', array('model' => $model, 'items' => $model->listItemAdmin()));
    }
}