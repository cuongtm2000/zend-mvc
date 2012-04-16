<?php

class ContactController extends AdminController {

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
        $module = ucfirst($this->getId());
        Yii::app()->getModule($this->getId());
        $model = new $module();

        //Submit
        if (Yii::app()->request->getIsPostRequest()) {
            $model->activeItem(Yii::app()->request);
        }
        $this->render('index', $model->listItemAdmin());
    }

    public function actionAdd() {
        $module = ucfirst($this->getId());
        Yii::app()->getModule($this->getId());
        $model = new $module();

		Yii::app()->clientScript->registerScriptFile(Yii::app()->request->baseUrl . '/public/plugin/tiny_mce/tiny_mce.js');
		Yii::app()->clientScript->registerScriptFile(Yii::app()->request->baseUrl . '/public/plugin/tiny_mce/config.js');

        if (isset($_POST[$module])) {
            $model->attributes = $_POST[$module];

            if ($model->validate()) {
                $model->save();
                $this->redirect(array('index'));
            }
        }

        $this->render('add', array('model' => $model));
    }

    public function actionEdit($id) {
        $module = ucfirst($this->getId());
        Yii::app()->getModule($this->getId());
        $model = new $module();

		Yii::app()->clientScript->registerScriptFile(Yii::app()->request->baseUrl . '/public/plugin/tiny_mce/tiny_mce.js');
		Yii::app()->clientScript->registerScriptFile(Yii::app()->request->baseUrl . '/public/plugin/tiny_mce/config.js');

        $model = $model->loadEdit($id); //load form models

        if (isset($_POST[$module])) {
            $model->attributes = $_POST[$module];

            if ($model->validate()) {
                $model->save();
                $this->redirect(array('index'));
            }
        }

        $this->render('edit', array('model' => $model));
    }

}