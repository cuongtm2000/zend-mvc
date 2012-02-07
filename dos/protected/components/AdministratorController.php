<?php

class AdministratorController extends CController {

    public $breadcrumbs = array();

    public function init() {
        //Check userdamin
        if (isset(Yii::app()->user->role) && (Yii::app()->user->role != 'administrator')) {
            $this->redirect('admin/error');
        }
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