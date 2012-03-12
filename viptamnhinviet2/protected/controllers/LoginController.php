<?php

class LoginController extends Controller {

    public function actionIndex() {
        $this->layout = 'column1';
        $model = new LoginForm;
        if (isset($_POST['LoginForm'])) {
            $model->attributes = $_POST['LoginForm'];
            if ($model->validate() && $model->login()) {
                $u=User::model()->findByPk(Yii::app()->user->name);
                Yii::app()->session['balance']= $u['balance']; //coi lai cai nay, ko nen dung session

				Yii::app()->session['logged'] = 1; //session for ckfinder logged
				Yii::app()->session['user'] = Yii::app()->user->id; //session for ckfinder subdomain
                $this->redirect(Yii::app()->user->returnUrl);
            }
        } elseif (Yii::app()->session['activated']) {
            Yii::app()->user->setFlash('message', 'Successful registration.');
        }

        $this->render('index', array('model' => $model));
    }

}