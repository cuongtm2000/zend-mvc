<?php

class AgentController extends CController {
    public $breadcrumbs = array();

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
}