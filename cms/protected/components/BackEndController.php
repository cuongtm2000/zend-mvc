<?php

/**
 * Controller is the customized base controller class.
 * All controller classes for this application should extend from this base class.
 */
class BackEndController extends CController {
    public $layout = '//layouts/column1';
    public $breadcrumbs = array();

    public $setting = array();
	public $listLang = array();

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

    public function init() {
        Yii::app()->getClientScript()->registerCoreScript('jquery');
		
        Common::setLanguage(); //Setup language
        Yii::app()->theme = 'admin'; //Setup template
		
		//Get list language
        $this->listLang = Language::model()->listItem();

        //Get Setting
        $this->setting = Setting::model()->getSetting();
    }
}