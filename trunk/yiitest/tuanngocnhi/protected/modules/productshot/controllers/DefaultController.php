<?php

class DefaultController extends Controller {
    public function actionIndex() {
        $this->layout = '//layouts/column-2';
        $data = Products::model()->listItemHot();
        $this->render(Yii::app()->session['template'] . '/index', $data);
    }
}