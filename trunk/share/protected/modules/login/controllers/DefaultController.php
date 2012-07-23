<?php

class DefaultController extends Controller {
    public function actionIndex() {
        $this->layout = '//layouts/column-2';

        if(Yii::app()->session['logged'])
            $this->redirect(Yii::app()->user->returnUrl);
            
        $model = new LoginForm;
        if (isset($_POST['LoginForm'])) {
            $model->attributes = $_POST['LoginForm'];
            if ($model->validate() && $model->login()) {
				$_SESSION['KCFINDER'] = array();
				$_SESSION['KCFINDER']['disabled'] = false;
				$_SESSION['KCFINDER']['uploadURL'] = Yii::app()->baseUrl.'/public/userfiles/image/'.Yii::app()->user->id;
                //Yii::app()->session['logged'] = 1; //session for ckfinder logged
                //Yii::app()->session['user'] = Yii::app()->user->id; //session for ckfinder subdomain
                $this->redirect(Yii::app()->user->returnUrl);
            }
        } elseif (Yii::app()->session['activated']) {
            Yii::app()->user->setFlash('message', 'Successful registration.');
        }

        $this->render(Yii::app()->session['template'] . '/index', array('model' => $model));
    }
	public function actionLogout() {
		Yii::app()->user->logout();
		$this->redirect(Yii::app()->homeUrl);
	}
}