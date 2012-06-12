<?php

class AdministratorController extends CController {

    public $breadcrumbs = array();

    public function init() {
        //Check user administrator
        if (isset(Yii::app()->user->role) && (Yii::app()->user->role != 'administrator')) {
            $this->redirect('report/denied');
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
                'users' => array('@'),
            ),
            array('deny'),
        );
    }

}