<?php

class AboutusController extends HomeController {

	public function actionIndex() {
		Yii::app()->getModule('about');
		$model_class = new About();

		$this->render('index', array('model_menu' => $model_class->listMenuByDos(), 'item' => $model_class->firstRecordByDos()));
	}

	public function actionView($id) {
		Yii::app()->getModule('about');
		$model_class = new About();

		$this->render('view', array('model_menu' => $model_class->listMenuByDos(), 'item' => $model_class->detailRecordByDos($id)));
	}

}