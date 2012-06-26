<?php

class DefaultController extends Controller {

    public function actionIndex() {
        Yii::app()->clientScript->registerCssFile(Yii::app()->theme->baseUrl . '/css/page-nav-customer.css');
        $this->setSeoPage(); //set Seo page

        $model = new CustomersCat();
        $this->render(Yii::app()->session['template'] . '/index', array('items' => $model->listItem()));
    }

    public function actionCats($cid, $page = 0) {
        Yii::app()->clientScript->registerCssFile(Yii::app()->theme->baseUrl . '/css/page-nav-customer.css');
        $model = new CustomersCat();
        $items = new Customers();

        $info_cat = $model->findCatByTag($cid); //find cat_id
        $this->render(Yii::app()->session['template'] . '/cats', array('info_cat' => $info_cat, 'list_sub_cats' => $model->listItem($info_cat['cat_id']), 'list_items' => $items->listItemByCat($info_cat['cat_id'])));
    }

    /*public function actionView($id) {
        $model = ucfirst($this->module->id);
        $model_class = new $model();

        $data['item'] = $model_class->detailItem($id);
        $data['item_other'] = $model_class->listItemOther($data['item']['record_id'], $data['item']['dos_module_item_cat_cat_id']);
        $this->render(Yii::app()->session['template'] . '/view', $data);
    }*/
}