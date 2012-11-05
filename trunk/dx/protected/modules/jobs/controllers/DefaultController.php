<?php

class DefaultController extends Controller {
    public function actionIndex() {
        $model_class = ucfirst($this->module->id);
        $model = new $model_class();

        $this->render('index', array('listItemIndex' => $model->listItemsIndex()));
    }

    public function actionCats($cid, $page = 0) {
        $info_cat = JobsCatLanguage::model()->findCatByTag($cid);
        $this->render('cats', array('info_cat' => $info_cat, 'items' => Jobs::model()->listItemByCat($info_cat['cat_id'])));
    }

    public function actionView($id) {
        $model_class = ucfirst($this->module->id);
        $model = new $model_class();
        $item = $model->getIDByTag($id);

        $this->render('view', array('item' => $item, 'items_other' => $model->listItemOther($item['record_id'], $item['hoiit_module_item_cat_cat_id'])));
    }
}