<?php

class LogoutController extends CController {

    public function actionIndex() {
        Yii::app()->agentUser->logout();
        $this->redirect(Yii::app()->homeUrl);
    }

}