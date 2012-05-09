<?php

class LoginController extends Controller {

    public function actionIndex() {
        $model = new LoginForm;
        if (isset($_POST['LoginForm'])) {
            $model->attributes = $_POST['LoginForm'];
            if ($model->validate() && $model->login()) {
                Yii::app()->request->redirect(Yii::app()->user->returnUrl);
            }
        } else if (Yii::app()->session['activated']) {
            Yii::app()->user->setFlash('message', 'Successful registration, you can log in to use the services of Hoiit.com.');
        }

        $this->render(Yii::app()->theme->name . '/index', array('model' => $model));
    }

    public function actionForgot() {
        $model = new ForgotForm();
        if (isset($_POST['ForgotForm'])) {
            $model->attributes = $_POST['ForgotForm'];
            if ($model->validate()) {
                $code = Usernames::model()->createCode();
                $username = Usernames::model()->getUsernameByEmail($model['email']);
                Usernames::model()->updateByPk($username['username'], array('code' => 'FORGOT-' . $code)); //update code

                Yii::import('application.extensions.phpmailer.JPhpMailer');
                $mail = new JPhpMailer;
                $html = 'Chào <b>' . $username['username'] . '</b>!<br /><br />Hoiit.com nhận được yêu cầu cấp phát lại mật khẩu mới. Nếu đúng bạn cần đặt lại mật khẩu hãy nhấn vào liên kết: <a href="http://hoiit.com/reset-password/' . $model['email'] . '/' . $code . '">http://hoiit.com/reset-password/' . $model['email'] . '/' . $code . '</a><br/>Nếu không cần thiết bạn có thể bỏ qua email này.<br/><br/>Good success, enjoy<br />--<br/>The development team Hoiit.com';
                $mail->sendMailSmtp('info@hoiit.com', $model['email'], 'Hoiit.com', $username['username'], 'Hoiit.com: Forgot password ' . $username['username'], $html);

                Yii::app()->user->setFlash('contactSuccess', 'Please check email: ' . $model['email'] . ' to restore password your');
                $this->refresh();
            }
        }
        $this->render(Yii::app()->theme->name . '/forgot', array('model' => $model));
    }

    public function actionReset($email, $code) {
        $model = new ResetPassForm();

        if (Usernames::model()->checkResetPassUser($email, $code)) {
            if (isset($_POST['ResetPassForm'])) {
                $model->attributes = $_POST['ResetPassForm'];
                if ($model->validate()) {
                    Usernames::model()->resetPassUser($email, $model['pass_new']);

                    Yii::app()->user->setFlash('contactSuccess', 'Password successfully changed! You can now <a href="http://' . $_SERVER['HTTP_HOST'] . Yii::app()->request->baseUrl . '/login" title="Login">access your Account</a>, change your account settings.');
                    $this->refresh();
                }
            }
        } else {
            Yii::app()->user->setFlash('contactSuccess', 'Password Recovery is unsuccessful, please try again at the link <a href="http://' . $_SERVER['HTTP_HOST'] . Yii::app()->request->baseUrl . '/forgot-password" title="Forgot password">http://' . $_SERVER['HTTP_HOST'] . Yii::app()->request->baseUrl . '/forgot-password</a>');
        }

        $this->render(Yii::app()->theme->name . '/reset', array('model' => $model));
    }
}