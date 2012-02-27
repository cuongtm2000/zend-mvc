<?php

class LoginController extends Controller {

    public function actionIndex() {
        $this->layout = 'column1';
        $model = new LoginForm;
        if (isset($_POST['LoginForm'])) {
            $model->attributes = $_POST['LoginForm'];
            if ($model->validate() && $model->login()) {
                $this->redirect(Yii::app()->user->returnUrl);
            }
        } elseif (Yii::app()->session['activated']) {
            Yii::app()->user->setFlash('message', 'Successful registration.');
        }

        $this->render(Yii::app()->theme->name . '/index', array('model' => $model));
    }

}