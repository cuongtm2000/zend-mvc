<?php

class DefaultController extends Controller {
    public function actionIndex() {
        Yii::app()->clientScript->registerCssFile(Yii::app()->theme->baseUrl . '/css/page-nav-forms.css');
        $this->setSeoPage(); //set Seo page

        $model = ucfirst($this->module->getName());
        $items = new $model();

        $data['item'] = $items->listItem();
        $this->render(Yii::app()->session['template'] . '/index', $data);
    }

    public function actionView($id) {
        Yii::app()->clientScript->registerCssFile(Yii::app()->theme->baseUrl . '/css/page-nav-forms.css');
        $model = ucfirst($this->module->getName());
        $items = new $model();

        $data['item'] = $items->detailRecord($id);

        $this->render(Yii::app()->session['template'] . '/view', $data);
    }
}