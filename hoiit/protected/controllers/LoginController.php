<?php

class LoginController extends Controller {

    public function actionIndex() {
        $model = new LoginForm;
        if (isset($_POST['LoginForm'])) {
            $model->attributes = $_POST['LoginForm'];
            if($model->validate() && $model->login()){
				Yii::app()->request->redirect(Yii::app()->user->returnUrl);
            }
        }else if(Yii::app()->session['activated']){
            Yii::app()->user->setFlash('message','Successful registration, you can log in to use the services of Hoiit.com.');
        }

        $this->render(Yii::app()->theme->name . '/index', array('model' => $model));
    }

}