<?php

class DefaultController extends Controller {

    public function filters() {
        return array(
            'accessControl',
        );
    }

    public function accessRules() {
        return array(
            array(
                'allow',
                'users' => array('@'),
            ),
            array('deny'),
        );
    }

    public function actionIndex() {
        $this->render('index');
    }

}