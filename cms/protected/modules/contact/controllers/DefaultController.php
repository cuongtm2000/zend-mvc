<?php

class DefaultController extends Controller {
    public function actionIndex() {
        $model = ucfirst($this->module->id);

        $this->render('index', array('item' => $model::model()->firstItem()));
    }
}