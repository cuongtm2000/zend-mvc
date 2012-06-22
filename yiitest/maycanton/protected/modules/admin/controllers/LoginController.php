<?php

class LoginController extends AdminController {

    public function actionIndex() {
        $model = new LoginForm;

        if (isset($_POST['LoginForm'])) {
            $model->attributes = $_POST['LoginForm'];
            // validate user input and redirect to the previous page if valid
            if ($model->validate() && $model->login()) {
                //Yii::app()->session['logged'] = 1; //session for ckfinder logged
                Yii::app()->session['subdomain'] = Yii::app()->user->id; //coi lai 1 so cai can thoi
				$_SESSION['KCFINDER'] = array();
				$_SESSION['KCFINDER']['disabled'] = false;
				$_SESSION['KCFINDER']['uploadURL'] = "/public/userfiles/image/" . Yii::app()->user->id;
				$_SESSION['KCFINDER']['maxImageWidth'] = Configs::configTemplate('max_image_width', Yii::app()->session['template']);
				$_SESSION['KCFINDER']['maxImageHeight'] = Configs::configTemplate('max_image_height', Yii::app()->session['template']);

                Yii::app()->request->redirect(Yii::app()->user->returnUrl);
            }
        }
        $this->render('index', array('model' => $model));
    }

}