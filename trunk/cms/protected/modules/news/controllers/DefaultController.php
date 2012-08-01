<?php

class DefaultController extends Controller {
    public function actionIndex() {
        $model_class = ucfirst($this->module->id);
        $model = new $model_class();

        $this->render('index', array('listItemIndex' => $model->listItemsIndex()));
    }

    public function actionView($id) {
        $model_class = ucfirst($this->module->id);
        $model = new $model_class();

        $this->render('view', array('item' => $model->detailItem($id)));
    }
}