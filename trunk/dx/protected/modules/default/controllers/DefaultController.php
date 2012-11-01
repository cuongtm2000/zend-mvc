<?php

class DefaultController extends Controller {
    public function actionIndex() {
        $this->render('index');
        $this->layout = '//layouts/column-3';
    }
}