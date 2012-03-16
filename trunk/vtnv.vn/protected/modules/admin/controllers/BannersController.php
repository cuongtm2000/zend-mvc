<?php

class BannersController extends AdminController {

	public function actionIndex() {
		Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl . '/js/jquery.nyromodal.custom.min.js');
		Yii::app()->clientScript->registerCssFile(Yii::app()->theme->baseUrl . '/css/nyromodal.css');
		Yii::app()->clientScript->registerScript('', "$(function() { $('.nyroModal').nyroModal();});", CClientScript::POS_READY);

		$module = ucfirst($this->getId());
		$model = new $module();

		//Submit
		if (Yii::app()->request->getIsPostRequest()) {
			$model->activeItem(Yii::app()->request);
			$this->refresh();
		}

		$this->render('index', $model->listItemAdmin());
	}

	public function actionAdd() {
		Yii::app()->clientScript->registerScript('', "$('#Banners_txt_file_name').hide(); $('#Banners_change_file_name').click(function(){ $('#Banners_txt_file_name').toggle(this.checked);});", CClientScript::POS_READY);

		$module = ucfirst($this->getId());
		$model = new $module('add');

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
		Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl . '/js/jquery.nyromodal.custom.min.js');
		Yii::app()->clientScript->registerCssFile(Yii::app()->theme->baseUrl . '/css/nyromodal.css');
		Yii::app()->clientScript->registerScript('', "$(function() { $('.nyroModal').nyroModal();});", CClientScript::POS_READY);

		$module = ucfirst($this->getId());
		$model = new $module('edit');
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