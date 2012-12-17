<?php

class LoginController extends Controller {
    public function actionIndex() {
		$model_class = ucfirst($this->module->id).'LoginForm';
        $model = new $model_class;
		
		if (isset($_POST[$model_class])) {
            $model->attributes = $_POST[$model_class];
            if ($model->validate() && $model->login()){
                $this->redirect(Yii::app()->user->returnUrl);
            }
        }
		
		$this->render('index', array('model' => $model));
    }
	public function actionLogout() {
        Yii::app()->memberProducts->logout();
        $this->redirect(Yii::app()->homeUrl);
    }
}