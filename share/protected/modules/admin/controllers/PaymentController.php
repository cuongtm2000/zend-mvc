<?php

class PaymentController extends AdminController {

    public function filters() {
        return array(
            'accessControl',
        );
    }

    public function accessRules() {
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
		$user_class = new Username();

		$this->render('index', array('date' => $user_class->checkExpired(Yii::app()->user->id)));
    }
}