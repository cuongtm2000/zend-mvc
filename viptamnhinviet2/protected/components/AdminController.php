<?php

class AdminController extends CController {
	public $module_user = array();
	public $lang = array(); //language
	public $layout = '//layouts/column1';
	/**
	 * @var array context menu items. This property will be assigned to {@link CMenu::items}.
	 */
	public $menu = array();

	public function init(){
		//Setup module user
		$this->module_user = ModulesUsernames::model()->moduleUser(Yii::app()->user->name);

		//Setup lang
		$this->lang = Langs::setLangs();
	}

	public $breadcrumbs = array();

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