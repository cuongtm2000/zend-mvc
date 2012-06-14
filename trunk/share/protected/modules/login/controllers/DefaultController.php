<?php

class DefaultController extends Controller
{
    public function actionIndex() {
        $this->layout = '//layouts/column2';

        $model = new LoginForm;
        if (isset($_POST['LoginForm'])) {
            $model->attributes = $_POST['LoginForm'];
            if ($model->validate() && $model->login()) {
                Yii::app()->session['logged'] = 1; //session for ckfinder logged
                Yii::app()->session['user'] = Yii::app()->user->id; //session for ckfinder subdomain
                $this->redirect(Yii::app()->user->returnUrl);
            }
        } elseif (Yii::app()->session['activated']) {
            Yii::app()->user->setFlash('message', 'Successful registration.');
        }

         $this->render(Yii::app()->session['template'].'/index', array('model' => $model));
    }

}