<?php

class AgentModule extends CWebModule {
    public function init() {
        $this->setImport(array(
            'agent.models.*',
            'agent.components.*',
        ));

        //Check user login use theme
        if (Yii::app()->agentUser->isGuest) {
            Yii::app()->theme = 'admin-login-green';
        } else {
            var_dump(Yii::app()->user);
            var_dump(Yii::app()->agentUser);
            Yii::app()->theme = 'admin-agent';
        }
    }

    public function beforeControllerAction($controller, $action) {
        if (parent::beforeControllerAction($controller, $action)) {
            // this method is called before any module controller action is performed
            // you may place customized code here
            return true;
        }
        else
            return false;
    }
}
