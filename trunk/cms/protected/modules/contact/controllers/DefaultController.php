<?php

class DefaultController extends Controller {
    public function actionIndex() {
		$this->layout = '//layouts/column-2';
	
        $model = ucfirst($this->module->id);

        $this->render('index', array('item' => $model::model()->firstItem()));
    }
}