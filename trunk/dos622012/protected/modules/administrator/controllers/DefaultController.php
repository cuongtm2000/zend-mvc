<?php

class DefaultController extends Controller {

    public function filters() {
        return array(
            'accessControl',
        );
    }

    public function accessRules() {
        echo 2;
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

}