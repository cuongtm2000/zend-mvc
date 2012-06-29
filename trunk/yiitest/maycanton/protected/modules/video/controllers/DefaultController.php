<?php

class DefaultController extends Controller {
    public function actionIndex() {
        Yii::app()->clientScript->registerCssFile(Yii::app()->theme->baseUrl . '/css/page-nav-video.css');
        $this->setSeoPage(); //set Seo page

        $model = ucfirst($this->module->id);
        $model_class = new $model();
        $this->render(Yii::app()->session['template'] . '/index', array('listItemIndex' => $model_class->listItemsIndex()));
    }

    public function actionCats($cid, $page = 0) {
        Yii::app()->clientScript->registerCssFile(Yii::app()->theme->baseUrl . '/css/page-nav-video.css');

        $model = ucfirst($this->module->id);
        $model_cat = $model . 'Cat';

        $model_cat_class = new $model_cat();
        $model_class = new $model();

        $info_cat = $model_cat_class->findCatByTag($cid); //find cat_id
        $this->render(Yii::app()->session['template'] . '/cats', array('info_cat' => $info_cat, 'list_items' => $model_class->listItemByCat($info_cat['cat_id'])));
    }

    public function actionView($id) {
        Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl.'/js/embed-flash.js');
        $model = ucfirst($this->module->id);
        $model_class = new $model();

        $data['item'] = $model_class->detailItem($id);
        $data['item_other'] = $model_class->listItemOther($data['item']['record_id'], $data['item']['dos_module_item_cat_cat_id']);

        $this->render(Yii::app()->session['template'] . '/view', $data);
    }
}