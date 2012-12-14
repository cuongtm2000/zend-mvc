<?php

class LoginController extends Controller {

    public function actionIndex() {
        Yii::app()->theme = 'login';
        $this->layout = null;

        $model = new LoginForm;
        // if it is ajax validation request
        if (isset($_POST['ajax']) && $_POST['ajax'] === 'login-form') {
            echo CActiveForm::validate($model);
            Yii::app()->end();
        }

        // collect user input data
        if (isset($_POST['LoginForm'])) {
            $model->attributes = $_POST['LoginForm'];
            // validate user input and redirect to the previous page if valid
            if ($model->validate() && $model->login()){
				$_SESSION['KCFINDER'] = array();
				$_SESSION['KCFINDER']['disabled'] = false;
				$_SESSION['KCFINDER']['uploadURL'] = Yii::app()->baseUrl.'/public/userfiles';
				$_SESSION['KCFINDER']['maxImageWidth'] = 660;
				$_SESSION['KCFINDER']['maxImageHeight'] = 550;
				
                $this->redirect(Yii::app()->user->returnUrl);
			}
        }
        // display the login form
        $this->render('index', array('model' => $model));
    }

}