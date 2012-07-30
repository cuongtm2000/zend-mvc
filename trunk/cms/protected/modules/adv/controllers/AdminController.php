<?php

class AdminController extends BackEndController {
    public function actionIndex() {
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
        Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl . '/js/jquery-ui-1.8.14.custom.min.js');
        Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl . '/js/jquery.ui.datepicker-vi.js');
        Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl . '/js/jquery.datepicker.config.js');
        Yii::app()->clientScript->registerCssFile(Yii::app()->theme->baseUrl . '/css/jquery-ui-1.8.14.custom.css');

        $model_class = ucfirst($this->module->id);
        $model = new $model_class('add');
        //$model->setScenario('add');
        //$model->scenario = 'register';

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
        Yii::app()->clientScript->registerCssFile(Yii::app()->theme->baseUrl . '/css/nyromodal.css');
        Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl . '/js/jquery.nyromodal.custom.min.js');
        Yii::app()->clientScript->registerScript('', "$(function() { $('.nyroModal').nyroModal();});", CClientScript::POS_READY);

        Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl . '/js/jquery-ui-1.8.14.custom.min.js');
        Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl . '/js/jquery.ui.datepicker-vi.js');
        Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl . '/js/jquery.datepicker.config.js');
        Yii::app()->clientScript->registerCssFile(Yii::app()->theme->baseUrl . '/css/jquery-ui-1.8.14.custom.css');

        $model_class = ucfirst($this->module->id);
        $model = new $model_class('edit');
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
	
	public function actionUpload() {
		if (Yii::app()->request->getIsPostRequest()) {
            Config::model()->addItem($this->module->id, Yii::app()->request);
            $this->refresh();
        }
		$this->render('upload', array('items' => Config::model()->getNameValue($this->module->id)));
	}
}