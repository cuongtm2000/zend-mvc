<?php

class RequestController extends Controller {

    public function actions() {
        return array(
            // captcha action renders the CAPTCHA image displayed on the contact page
            'captcha' => array(
                'class' => 'CCaptchaAction',
                'backColor' => 0xEEEEEE,
            )
        );
    }

    public function actionIndex() {
        $model = new RequestForm;

        if (isset($_POST['RequestForm'])) {
            $model->attributes = $_POST['RequestForm'];
            if ($model->validate()) {
                //send mail here
                Yii::app()->user->setFlash('contactSuccess', 'Thank you for contacting us. We will respond to you as soon as possible.');
                $this->refresh();
            }
        }

        $this->render(Yii::app()->theme->name . '/index', array('model' => $model));
    }
}