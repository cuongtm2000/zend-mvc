<?php

class DefaultController extends Controller {
    public function actionIndex() {
        $model_class = ucfirst($this->module->id) . 'Cat';
        $model = new $model_class;

        $this->render('index', array('items' => $model->listItem(), 'new_items' => Products::model()->listItemsNewTops()));
    }

    public function actionCats($cid, $page = 0) {
        $model_class = ucfirst($this->module->id) . 'Cat';
        $model = new $model_class;

        $info_cat = ProductsCatLanguage::model()->findCatByTag($cid);
        $this->render('cats', array('info_cat' => $info_cat, 'sub_cats' => $model->listItem($info_cat['cat_id']), 'items' => Products::model()->listItemByCat($info_cat['cat_id'])));
    }

    public function actionView($id) {
        $model_class = ucfirst($this->module->id);
        $model = new $model_class();
        $data['item'] = $model->detailItem($id);
        $data['new_items'] = Products::model()->listItemsNewTops();
        $data['other_items'] = $model->listOtherItems($data['item']['record_id'], $data['item']['hoiit_module_item_cat_cat_id']);
        $this->render('view', $data);
    }
}