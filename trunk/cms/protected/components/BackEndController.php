<?php

/**
 * Controller is the customized base controller class.
 * All controller classes for this application should extend from this base class.
 */
class BackEndController extends CController {
    public $layout = '//layouts/column1';
    public $breadcrumbs = array();

    public $setting = array();
    public $listLanguage = array();
    public $lang = array();

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
        Yii::app()->theme = 'admin'; //Setup template

        $this->setting = Setting::model()->getSetting(); //Get Setting: title, keywords...
        $this->listLanguage = Language::model()->listLanguage(); //Get list language: vi, en
        Common::setLanguage(); //Setup language
        $this->lang = Lang::model()->lang(Yii::app()->language);
    }
}