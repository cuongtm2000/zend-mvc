<?php

class DefaultController extends Controller {
    public function actionIndex() {
        //$this->pageTitle= 'aaa';
        $this->render('index');
    }
}