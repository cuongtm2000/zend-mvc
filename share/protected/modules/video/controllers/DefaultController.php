<?php

class DefaultController extends Controller {
	public function actionIndex() {
		$this->setSeoPage(); //set Seo page

		$model = ucfirst($this->module->id);
		$model_class = new $model();
		$this->render(Yii::app()->session['template'] . '/index', array('listItemIndex' => $model_class->listItemsIndex()));
	}

	public function actionCats($cid, $page = 0) {
		$model = ucfirst($this->module->id);
		$model_cat = $model . 'Cat';

		$model_cat_class = new $model_cat();
		$model_class = new $model();

		$info_cat = $model_cat_class->findCatByTag($cid); //find cat_id
		$this->render(Yii::app()->session['template'] . '/cats', array('info_cat' => $info_cat, 'list_items' => $model_class->listItemByCat($info_cat['cat_id'])));
	}
}