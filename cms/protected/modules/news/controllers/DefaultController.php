<?php

class DefaultController extends Controller {
    public function actionIndex() {
        $this->render('index');
    }

    public function actionView($id) {
        $model_class = ucfirst($this->module->id);
        $model = new $model_class();

        $this->render('view', array('item' => $model->detailItem($id)));
    }
}