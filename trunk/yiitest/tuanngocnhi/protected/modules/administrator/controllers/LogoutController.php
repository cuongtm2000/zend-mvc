<?php

class LogoutController extends CController {

    public function actionIndex() {
        Yii::app()->user->logout();
        $this->redirect(Yii::app()->homeUrl);
    }

}