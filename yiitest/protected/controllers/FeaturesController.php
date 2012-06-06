<?php

class FeaturesController extends HomeController {

	public function actionIndex() {
		$model_class = new Features();

		$this->render('index', array('model_menu' => $model_class->listMenu(), 'item' => $model_class->firstRecord()));
	}

	public function actionView($id) {
        $model_class = new Features();

		$this->render('view', array('model_menu' => $model_class->listMenu(), 'item' => $model_class->detailRecord($id)));
	}

}