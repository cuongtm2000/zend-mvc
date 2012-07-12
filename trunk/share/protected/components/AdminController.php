<?php

class AdminController extends CController {
	public $module_user = array();
	public $lang = array(); //language

	public function init() {
		Common::setLanguage(); //setting language
		
		if(isset(Yii::app()->user->role) && Yii::app()->user->role!='admin') die;

		$user_class = new Username();
		Yii::app()->session['userAdmin'] = $user_class->getUserByRole('admin');
		define('USERFILES', '/public/userfiles/image/' . Yii::app()->session['userAdmin'] . '/image');

		//Setup module user
		$this->module_user = ModuleUsername::model()->moduleUser(Yii::app()->user->id);
	}
}