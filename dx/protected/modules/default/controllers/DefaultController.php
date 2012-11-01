<?php

class DefaultController extends Controller {
    public function actionIndex() {
		$this->layout = '//layouts/column-home';
        $this->render('index');
    }
}