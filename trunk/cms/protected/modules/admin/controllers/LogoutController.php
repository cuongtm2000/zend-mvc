<?php

class LogoutController extends AdminController {

    public function actionIndex() {
        Yii::app()->user->logout();
        $this->redirect(Yii::app()->homeUrl);
    }

}