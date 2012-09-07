<?php

class DefaultController extends Controller {
    public function actionIndex() {
        $model_class = ucfirst($this->module->id);
        $model = new $model_class();

        $this->render('index', array('listItemIndex' => $model->listItemsIndex()));
    }

    public function actionCats($cid, $page = 0) {
        $info_cat = NewsCatLanguage::model()->findCatByTag($cid);
        $this->render('cats', array('info_cat' => $info_cat, 'items' => News::model()->listItemByCat($info_cat['cat_id'])));
    }

    public function actionView($id) {
        $model_class = ucfirst($this->module->id);
        $model = new $model_class();
		
		$id = NewsLanguage::model()->getIDByTag($id);

        $this->render('view', array('item' => $model->detailItem($id), 'items_other' => $model->listItemOther($id)));
    }
}