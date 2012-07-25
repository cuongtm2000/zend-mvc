<?php

class ReportController extends AdminController {

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
		$this->render('index');
	}

	public function actionCode() {
		$model = new Web;
		//Submit
		if (Yii::app()->request->getIsPostRequest()) {
			$model->addItemSample(Yii::app()->request);
			$this->refresh();
		}
		$this->render('code', array('item' => $model->setWebValue('analytics')));
	}

}