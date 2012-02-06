<?php

class RegisterController extends Controller {

    public function actionIndex() {
        $this->layout = 'column1';

        $model = new Usernames('index');
        if (isset($_POST['Usernames'])) {
            $model->attributes = $_POST['Usernames'];
            if ($model->validate()) {
                Yii::app()->session['username'] = $model->username;
                Yii::app()->session['password'] = $model->password;
                Yii::app()->session['email'] = $model->email;
                Yii::app()->session['group_code'] = $model->group_code;
                Yii::app()->session['province_id'] = $model->hoiit_provinces_province_id;
                $this->redirect(array('update'));
            }
        }
        $this->render(Yii::app()->theme->name . '/index', array('model' => $model));
    }

    public function actionUpdate() {
        if (Yii::app()->session['username']) {
            $this->layout = 'column1';
            $model = new Usernames;
            if (isset($_POST['Usernames'])) {
                $model->attributes = $_POST['Usernames'];
                if ($model->validate()) {
                    if ($model->save()) {
                        /*$code = $model->createCode();
                        $model::model()->updateByPk($model->username, array('code' => 'REG-' . $code)); //update code
                        
                        Yii::import('application.extensions.phpmailer.JPhpMailer');
                        $mail = new JPhpMailer;
                        $html = 'Hello <b>' . $model->username . '</b>!<br /><br />Welcome to with Website <a href="http://hoiit.com">http://hoiit.com</a>, We specialized tutorial Php framework, Asp.net, C#, VB, Jquery, Javascript, Web template, Outsourcing of programming languages​​, answer questions about programming for programmers, Where exchange and learning experience programming, Construction projects for charity<br /><br />This email helps us confirm you are the owner account <b>' . $model->username . '</b>. Please click the link below to activate your account<br />Link activate: <a href="http://hoiit.com/activate/' . $model->email . '/' . $code . '">http://hoiit.com/activate/' . $model->email . '/' . $code . '</a><br/><br/>Good success, enjoy<br />--<br/>The development team Hoiit.com';
                        $mail->sendMailSmtp('info@hoiit.com', $model->email, 'Hoiit.com', $model->username, 'Hoiit.com: activation account ' . $model->username, $html);
                        
                        Yii::app()->session['reg_success'] = true; //register success
						*/
                    }
                    $this->redirect(array('/login'));
                }
            }
            $this->render(Yii::app()->theme->name . '/update', array('model' => $model));
        } else {
            $this->redirect(Yii::app()->request->baseUrl . '/' . $this->id);
        }
    }
    public function actionSuccess() {
        if (Yii::app()->session['reg_success']) {
            $this->render(Yii::app()->theme->name . '/success');
        } else {
            $this->redirect(Yii::app()->request->baseUrl . '/' . $this->id);
        }
    }
}