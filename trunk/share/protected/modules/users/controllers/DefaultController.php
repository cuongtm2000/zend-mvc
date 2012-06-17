<?php

class DefaultController extends Controller {
    public function actionIndex() {
        $this->layout = '//layouts/column-2';

        $this->render(Yii::app()->session['template'].'/index', Username::model()->listUsernames());
    }
}