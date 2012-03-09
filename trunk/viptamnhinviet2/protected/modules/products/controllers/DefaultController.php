<?php

class DefaultController extends Controller {

    public function actionIndex() {
        $model = new ProductsCat();

        $this->render('index', array('items' => $model->listItem(0)));
    }

    public function actionCats($cid, $page = 0) {
        $model = new ProductsCat();
        $items = new Products();

        $info_cat = $model->findCatByTag($cid); //find cat_id
        $this->render('cats', array('info_cat' => $info_cat, 'list_sub_cats' => $model->listItem($info_cat['cat_id']), 'list_items' => $items->listItemByCat($info_cat['cat_id'])));
    }

    public function actionView($id) {
        $model = ucfirst($this->module->id);
        $model_class = new $model();

        //$this->render(Yii::app()->session['template'] . '/view', array('item' => $model_class->detailItem($id)));
    }
	public function actionAdd(){
		$this->render('add');
	}
	public function actionList(){
		$this->render('list');
	}
}