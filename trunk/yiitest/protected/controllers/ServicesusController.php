<?php

class ServicesusController extends HomeController {

	public function actionIndex() {
		Yii::app()->getModule('services');
		$model_class = new Services();

		$this->render('index', array('model_menu' => $model_class->listMenuByDos(), 'item' => $model_class->firstRecordByDos()));
	}

	public function actionView($id) {
		Yii::app()->getModule('services');
		$model_class = new Services();

		$this->render('view', array('model_menu' => $model_class->listMenuByDos(), 'item' => $model_class->detailRecordByDos($id)));
	}

}