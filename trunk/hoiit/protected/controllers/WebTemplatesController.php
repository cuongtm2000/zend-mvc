<?php

class WebTemplatesController extends Controller {

    public function actionIndex() {
        $this->render(Yii::app()->theme->name . '/index');
    }
}