<?php

class DefaultController extends Controller {
    public function actionIndex() {
        $model_class = ucfirst($this->module->id) . 'Cat';
        $model = new $model_class;

        $this->render('index', array('items' => $model->listItem()));
    }

    public function actionCats($cid, $page = 0) {
        $model_class = ucfirst($this->module->id) . 'Cat';
        $model = new $model_class;

        $cat_id = ProductsCatLanguage::model()->findCatByTag($cid);
        $this->render('cats', array('sub_cats' => $model->listItem($cat_id), 'items' => Products::model()->listItemByCat($cat_id)));
    }

    public function actionView($id) {
		Yii::app()->clientScript->registerCssFile(Yii::app()->theme->baseUrl . '/css/scroll.css');
		Yii::app()->clientScript->registerCssFile(Yii::app()->theme->baseUrl . '/css/jquery.fancybox.css');

		Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl . '/js/jcarousellite_1.0.1.js');
		Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl . '/js/scroller.js');
		Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl . '/js/jquery.fancybox.js');
		Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl . '/js/jquery.scroll-1.4.2-min.js');
		Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl . '/js/jquery.serialScroll-1.2.2-min.js');
		Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl . '/js/product.js');

        $model_class = ucfirst($this->module->id);
        $model = new $model_class();
        $data['item'] = $model->detailItem($id);
        $data['other_items'] = $model->listOtherItems($data['item']['record_id'], $data['item']['hoiit_module_item_cat_cat_id']);
        $this->render('view', $data);
    }
}