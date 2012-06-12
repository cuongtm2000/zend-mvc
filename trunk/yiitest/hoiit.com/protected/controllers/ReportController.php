<?php

class ReportController extends Controller {

    public function actionDenied() {
        $this->render(Yii::app()->theme->name . '/denied');
    }
}