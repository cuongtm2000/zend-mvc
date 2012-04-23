<?php

class UsersController extends Controller {

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

    }
    public function actionEdit(){
        $this->render('edit');
    }
}