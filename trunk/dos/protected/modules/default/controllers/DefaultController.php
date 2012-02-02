<?php

class DefaultController extends Controller{
	public function actionIndex(){
		$this->render(Yii::app()->session['template'].'/index');
	}
}