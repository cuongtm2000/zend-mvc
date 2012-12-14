<?php

class AdminController extends BackEndController {
    public function actionIndex() {
        Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl . '/js/jquery.nyromodal.custom.min.js');
        Yii::app()->clientScript->registerCssFile(Yii::app()->theme->baseUrl . '/css/nyromodal.css');
        Yii::app()->clientScript->registerScript('', "$(function() { $('.nyroModal').nyroModal();});", CClientScript::POS_READY);

        $model_class = ucfirst($this->module->id);
        $model = new $model_class();

        //Submit
        if (Yii::app()->request->getIsPostRequest()) {
            $model->activeItem(Yii::app()->request);
            $this->refresh();
        }

        $this->render('index', $model->listItemAdmin());
    }

    public function actionAdd() {
        $model_class = ucfirst($this->module->id);
        $model = new $model_class();
        $model->scenario = 'add';

        if (isset($_POST[$model_class])) {
            $model->attributes = $_POST[$model_class];
            if ($model->validate()) {
                $model->save();
                $this->redirect(array('index'));
            }
        }

        $this->render('add', array('model' => $model));
    }

    public function actionEdit($id) {
        Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl . '/js/jquery.nyromodal.custom.min.js');
        Yii::app()->clientScript->registerCssFile(Yii::app()->theme->baseUrl . '/css/nyromodal.css');
        Yii::app()->clientScript->registerScript('', "$(function() { $('.nyroModal').nyroModal();});", CClientScript::POS_READY);

        $model_class = ucfirst($this->module->id);
        $model = new $model_class();
        $model->scenario = 'edit';
        $model = $model->loadEdit($id); //load form models

        if (isset($_POST[$model_class])) {
            $model->attributes = $_POST[$model_class];
            if ($model->validate()) {
                $model->save();
                $this->redirect(array('index'));
            }
        }

        $this->render('edit', array('model' => $model));
    }

    public function actionConfig() {
        if (Yii::app()->request->getIsPostRequest()) {
            Config::model()->addItem($this->module->id, Yii::app()->request);
            $this->refresh();
        }
        $this->render('config', array('items' => Config::model()->getNameValue($this->module->id)));
    }

    public function actionLogo() {
        $model = new Logo();
        $data = $model->getLogo();
        $model->banner_picture = $data['banner_picture'];

        if (isset($_POST['Logo'])) {
            $model->attributes = $_POST['Logo'];
            if ($model->validate()) {
                $model->saveItem($model);
                $this->redirect(array('logo'));
            }
        }

        $this->render('logo', array('model' => $model));
    }
}