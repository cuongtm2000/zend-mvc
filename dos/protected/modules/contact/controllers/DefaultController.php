<?php

class DefaultController extends Controller {

    public function actionIndex() {
        $model = ucfirst($this->module->getName());
        $items = new $model();

        $data['item'] = $items->firstItem();
        $this->render(Yii::app()->session['template'] . '/index', $data);
    }

}