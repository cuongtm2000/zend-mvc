<?php

class FoodController extends AdminController {

	public function filters() {
		return array(
			'accessControl',
		);
	}

	public function accessRules() {
		return array(
			array(
				'allow',
				//'actions' => array('index'),
				'users' => array('@'),
			),
			array('deny'),
		);
	}

	public function actionCats() {
		Yii::app()->getModule($this->ID);
		$model = ucfirst($this->ID);
		$module_cat = $model . 'Cat';

		$model_cat_class = new $module_cat();
		$model_class = new $model();

		//Submit
		if (Yii::app()->request->getIsPostRequest()) {
			$model_cat_class->activeItem(Yii::app()->request);
			$this->refresh();
		}

		$this->render('cats', array('model' => $model_class, 'listCats' => $model_cat_class->listCats(0, null, 1)));
	}

	public function actionAddCat() {
		Yii::app()->getModule($this->ID);
		$module_cat = ucfirst($this->ID) . 'Cat';

		$model_cat_class = new $module_cat();

		if (isset($_POST[$module_cat])) {
			$model_cat_class->attributes = $_POST[$module_cat];

			if ($model_cat_class->validate()) {
				$model_cat_class->save();
				$this->redirect(array('cats'));
			}
		}

		$this->render('addcat', array('model' => $model_cat_class));
	}

	public function actionEditCat($id) {
		Yii::app()->getModule($this->ID);
		$module_cat = ucfirst($this->ID) . 'Cat';

		$model_cat_class = new $module_cat();
		$model_cat_class = $model_cat_class->loadEdit($id); //load form models

		if (isset($_POST[$module_cat])) {
			$model_cat_class->attributes = $_POST[$module_cat];

			if ($model_cat_class->validate()) {
				$model_cat_class->save();
				$this->redirect(array('cats'));
			}
		}

		$this->render('editcat', array('model' => $model_cat_class));
	}

	public function actionDelcat($id) {
		Yii::app()->getModule($this->ID);
		$model = ucfirst($this->ID);
		$model_cat = $model . 'Cat';

		$model_cat_class = new $model_cat();
		$model_class = new $model();

		$data['infocat'] = $model_cat_class->getInfoCat($id); //Tên phân loại
		$data['numcat'] = $model_cat_class->countItemCat($id); //Số sản phẩm con
		$data['subcat'] = $model_cat_class->countSubcat($id);
		$data['listcat'] = $model_cat_class->listCats(0, null, 1, $id);

		if (Yii::app()->request->getIsPostRequest()) {
			$model_class->delItembyCat(Yii::app()->request);
			$this->redirect(array('cats'));
		}
		$this->render('delcat', $data);
	}

	public function actionUpcat($id) {
		Yii::app()->getModule($this->ID);
		$module_cat = ucfirst($this->ID) . 'Cat';

		$model_cat_class = new $module_cat();

		$cat_info = $model_cat_class->getCatParent_CatOrder($id);
		//Next info
		$next_info = $model_cat_class->getCatid_CatOrder_Next($cat_info['cat_parent_id'], $cat_info['cat_order']);
		if (isset($next_info['cat_id']) && isset($next_info['cat_order'])) {
			$model_cat_class->updateUpDown($cat_info, $next_info, $id);
		}
		$this->redirect(array('cats'));
	}

	public function actionDowncat($id) {
		Yii::app()->getModule($this->ID);
		$module_cat = ucfirst($this->ID) . 'Cat';

		$model_cat_class = new $module_cat();

		$cat_info = $model_cat_class->getCatParent_CatOrder($id);
		//Previous info
		$previous_info = $model_cat_class->getCatid_CatOrder_Previous($cat_info['cat_parent_id'], $cat_info['cat_order']);

		if (isset($previous_info['cat_id']) && isset($previous_info['cat_order'])) {
			$model_cat_class->updateUpDown($cat_info, $previous_info, $id);
		}
		$this->redirect(array('cats'));
	}

	public function actionIndex() {
		Yii::app()->getModule($this->ID);
		$model = ucfirst($this->ID);
		$model_class = new $model();

		//Submit
		if (Yii::app()->request->getIsPostRequest()) {
			$model_class->activeItem(Yii::app()->request);
			$this->refresh();
		}

		$this->render('index', $model_class->listItemAdmin());
	}

	public function actionAdd() {
		Yii::app()->clientScript->registerScriptFile(Yii::app()->request->baseUrl . '/public/plugin/tiny_mce/tiny_mce.js');
		Yii::app()->clientScript->registerScriptFile(Yii::app()->request->baseUrl . '/public/plugin/tiny_mce/config.js');

		Yii::app()->getModule($this->ID);
		$model = ucfirst($this->ID);
		$module_cat = $model . 'Cat';

		$model_cat_class = new $module_cat();
		$model_class = new $model();

		if (isset($_POST[$model])) {
			$model_class->attributes = $_POST[$model];

			if ($model_class->validate()) {
				$model_class->save();
				$this->redirect(array('index'));
			}
		}

		$this->render('add', array('model' => $model_class, 'listItemsCat' => $model_cat_class->listCats()));
	}

	public function actionEdit($id) {
		Yii::app()->clientScript->registerScriptFile(Yii::app()->request->baseUrl . '/public/plugin/tiny_mce/tiny_mce.js');
		Yii::app()->clientScript->registerScriptFile(Yii::app()->request->baseUrl . '/public/plugin/tiny_mce/config.js');

		Yii::app()->getModule($this->ID);
		$model = ucfirst($this->ID);
		$module_cat = $model . 'Cat';

		$model_cat_class = new $module_cat();
		$model_class = new $model();
		$model_class = $model_class->loadEdit($id); //load form models

		if (isset($_POST[$model])) {
			$model_class->attributes = $_POST[$model];
			if ($model_class->validate()) {
				$model_class->save();
				$this->redirect(array('index'));
			}
		}

		$this->render('edit', array('model' => $model_class, 'listItemsCat' => $model_cat_class->listCats()));
	}

}