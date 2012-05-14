<?php

class DefaultController extends AgentController {

    /*public function filters() {
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
    }*/

    public function filters() {
        return array(
            'adminAccess',
        );
    }

    public function filterAdminAccess($filterChain) {
        if ($filterChain->action->id === 'login' || !Yii::app()->agentUser->isGuest) {
            $filterChain->run();
        }
        else {
            Yii::app()->agentUser->loginRequired();
        }
    }

    public function actionIndex() {
        $this->render('index');
    }
}