<?php

class DefaultController extends Controller {

	public function filters() {
		return array(
			'accessControl',
		);
	}

	public function accessRules() {
		return array(
			array('deny', 'actions' => array('add', 'list'), 'users' => array('?')),
		);

	}

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
		$this->render('view');
	}

	public function actionAdd() {
		Yii::app()->clientScript->registerScriptFile(Yii::app()->request->baseUrl . '/public/plugin/ckeditor/ckeditor.js');
		Yii::app()->clientScript->registerScript('', "$('#Products_description').keyup(function(){var max=250;var valLen=$(this).val().length;$('.info-keyup').text( valLen+'/'+max); var val = $(this).val(); if (val.length > 250){ $(this).val(val.slice(0, 250));}});", CClientScript::POS_READY);

		$model_cat_class = new ProductsCat();
		$model = new Products();
		if (isset($_POST['Products'])) {
			$model->attributes = $_POST['Products'];

			if ($model->validate()) {
				$model->save();
				$this->redirect(array('/san-pham/danh-sach'));
			}
		}

		$this->render('add', array('model' => $model, 'listCats' => $model_cat_class->listCats()));
	}

	public function actionList() {
		$model = new Products();
		$this->render('list', $model->listItemByUser());
	}
}