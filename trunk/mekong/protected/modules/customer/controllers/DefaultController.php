<?php

class DefaultController extends Controller {

    public function actionIndex() {
        $this->render('index', array('item' => Customer::model()->listItemAdmin()));
    }

    public function actionView($id) {
        $model_class = ucfirst($this->module->id);
        $this->render('view', array('item' => $model_class::model()->loadEdit($id)));
    }

}