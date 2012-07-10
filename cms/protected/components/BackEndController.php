<?php

/**
 * Controller is the customized base controller class.
 * All controller classes for this application should extend from this base class.
 */
class BackEndController extends CController {
    public $layout = '//layouts/column1';
    public $breadcrumbs = array();

    public $setting = array();

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
        Yii::app()->theme = 'admin';

        //Get Setting
        $this->setting = Setting::model()->getSetting();
    }
}