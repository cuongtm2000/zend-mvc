<?php

class DefaultController extends Controller {
	public $menu_about;

	public function actionIndex() {
		$model = ucfirst($this->module->getName());
		$model_class = new $model();

		$this->menu_about = $model_class->listMenu();

		$this->render('index', array('item' => $model_class->firstRecord()));
	}

	public function actionView($id) {
		$model = ucfirst($this->module->getName());
		$model_class = new $model();

		$this->menu_about = $model_class->listMenu();

		$this->render('view', array('item' => $model_class->detailRecord($id)));
	}
}