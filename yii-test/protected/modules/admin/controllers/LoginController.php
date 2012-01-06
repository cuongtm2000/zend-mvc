<?php
class LoginController extends Controller{

	public function actionIndex(){		
		$model = new LoginForm;
            
		if(isset($_POST['LoginForm'])){
			$model->attributes=$_POST['LoginForm'];
			// validate user input and redirect to the previous page if valid
			if($model->validate() && $model->login()){
                Yii::app()->session['logged'] = 1; //session for ckfinder
				$this->redirect(Yii::app()->request->baseUrl.'/admin');
			}
		} 
		$this->render('index', array('model'=>$model));
	}
}