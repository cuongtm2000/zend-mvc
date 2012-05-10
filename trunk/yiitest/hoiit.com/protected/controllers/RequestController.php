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
                Yii::import('application.extensions.phpmailer.JPhpMailer');
                $mail = new JPhpMailer;
                $html = 'Chào <b>Hoiit.com</b>!<br /><br />Bên dưới là thông tin mà người dùng cần sự trợ giúp từ Hoiit.com:<br/><br/><strong>Name:</strong> '.$model['name'].'<br/><strong>Email:</strong> '.$model['email'].'<br/><strong>Phone:</strong> '.$model['phone'].'<br/><strong>Subject:</strong> '.$model['subject'].'<br/><strong>Content:</strong> '.nl2br($model['content']).'<br/><br/>Good success, enjoy<br />--<br/>The development team Hoiit.com';
                $mail->sendMailSmtp('info@hoiit.com', 'info@hoiit.com', $model['name'], 'Hoiit.com', 'Hoiit.com: Send request - ' . $model['subject'], $html, 1, $model['email'], $model['name']);

                Yii::app()->user->setFlash('contactSuccess', 'Thank you for contacting us. We will respond to you as soon as possible.');
                $this->refresh();
            }
        }

        $this->render(Yii::app()->theme->name . '/index', array('model' => $model));
    }
}