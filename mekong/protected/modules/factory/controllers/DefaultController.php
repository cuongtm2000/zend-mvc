<?php

class DefaultController extends Controller {

    public function actionIndex() {
        $module = ucfirst($this->module->id);
        $this->render('index', array('item' => $module::model()->firstRecord()));
    }

    public function actionView($id) {
        $model_class = ucfirst($this->module->id) . 'Language';

        $this->render('view', array('item' => $model_class::model()->detailRecord($id)));
    }

}