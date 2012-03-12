<?php

class AdminController extends CController {
	public $module_user = array();
	public $lang = array(); //language
	public $layout = '//layouts/column1';
	public $menu = array();
	public $breadcrumbs = array();

	public function init() {
		//Check user administrator
		if (isset(Yii::app()->user->role) && (Yii::app()->user->role != 'administrator')) {
			$this->redirect(Yii::app()->request->baseUrl . '/error');
		}

		//Setup module user
		$this->module_user = ModulesUsernames::model()->moduleUser(Yii::app()->user->name);

		define('USERFILES', '/public/userfiles/images/' . Yii::app()->user->id . '/images');

		//Setup lang
		$this->lang = Langs::setLangs();
	}

	public function filters() {
		return array(
			'accessControl',
		);
	}

	public function accessRules() {
		return array(
			array(
				'allow',
				//'actions' => array('index'),
				'users' => array('@'),
			),
			array('deny'),
		);

	}
}