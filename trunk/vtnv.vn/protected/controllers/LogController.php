<?php

class LogController extends Controller {
    public function actionIndex() {
        $model_class = new Log();
        $this->render('index', array('listLog' => $model_class->getLogByReceiver(Yii::app()->user->name)));
    }
}