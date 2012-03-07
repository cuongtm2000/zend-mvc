<?php

class DefaultController extends Controller {
	public function actionIndex() {
		$model = ucfirst($this->module->getName());
		$items = new $model();

		$this->render('index', array('item'=>$items->firstRecord()));
	}
}