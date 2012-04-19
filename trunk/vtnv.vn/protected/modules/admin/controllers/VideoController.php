<?php

class VideoController extends AdminController {

	public function actionCats() {
		$module = ucfirst($this->getId());
		$module_cat = $module . 'Cat';
		Yii::app()->getModule($this->getId());

		$model_cat_class = new $module_cat();
		$model_class = new $module();

		//Submit
		if (Yii::app()->request->getIsPostRequest()) {
			$model_cat_class->activeItem(Yii::app()->request);
			$this->refresh();
		}

		$this->render('cats', array('model' => $model_class, 'listCats' => $model_cat_class->listCats(0, null, 1)));
	}

	public function actionAddCat() {
		$module = ucfirst($this->getId());
		$module_cat = $module . 'Cat';
		Yii::app()->getModule($this->getId());

		$model_cat_class = new $module_cat();


		$script = "$('#".$module_cat."_description').keyup(function(){var max=250;var valLen=$(this).val().length;$('.info-keyup').text( valLen+'/'+max); var val = $(this).val(); if (val.length > 250){ $(this).val(val.slice(0, 250));}});";
		Yii::app()->clientScript->registerScript('', $script, CClientScript::POS_READY);

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
		$module = ucfirst($this->getId());
		$module_cat = $module . 'Cat';
		Yii::app()->getModule($this->getId());

		$model_cat_class = new $module_cat();

		$model_cat_class = $model_cat_class->loadEdit($id); //load form models

		$script = "$('#".$module_cat."_description').keyup(function(){var max=250;var valLen=$(this).val().length;$('.info-keyup').text( valLen+'/'+max); var val = $(this).val(); if (val.length > 250){ $(this).val(val.slice(0, 250));}});";
		Yii::app()->clientScript->registerScript('', $script, CClientScript::POS_READY);

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
		$module = ucfirst($this->getId());
		$module_cat = $module . 'Cat';
		Yii::app()->getModule($this->getId());

		$model_cat_class = new $module_cat();
		$model_class = new $module();

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
		$module = ucfirst($this->getId());
		$module_cat = $module . 'Cat';
		Yii::app()->getModule($this->getId());

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
		$module = ucfirst($this->getId());
		$module_cat = $module . 'Cat';
		Yii::app()->getModule($this->getId());

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
		$module = ucfirst($this->getId());
		Yii::app()->getModule($this->getId());

		$model_class = new $module();

		//Submit
		if (Yii::app()->request->getIsPostRequest()) {
			$model_class->activeItem(Yii::app()->request);
			$this->refresh();
		}

		$this->render('index', $model_class->listItemAdmin());
	}

	public function actionAdd() {
		$module = ucfirst($this->getId());
		$module_cat = $module . 'Cat';
		Yii::app()->getModule($this->getId());

		$model_cat_class = new $module_cat();
		$model_class = new $module();

		$script = "$('#" . $module . "_description').keyup(function(){var max=250;var valLen=$(this).val().length;$('.info-keyup').text( valLen+'/'+max); var val = $(this).val(); if (val.length > 250){ $(this).val(val.slice(0, 250));}});";
		Yii::app()->clientScript->registerScript('', $script, CClientScript::POS_READY);

		if (isset($_POST[$module])) {
			$model_class->attributes = $_POST[$module];

			if ($model_class->validate()) {
				$model_class->save();
				$this->redirect(array('index'));
			}
		}

		$this->render('add', array('model' => $model_class, 'listItemsCat' => $model_cat_class->listCats()));
	}

	public function actionEdit($id) {
		$module = ucfirst($this->getId());
		$module_cat = $module . 'Cat';
		Yii::app()->getModule($this->getId());

		$model_cat_class = new $module_cat();
		$model_class = new $module();
		$model_class = $model_class->loadEdit($id); //load form models

		$script = "$('#" . $module . "_description').keyup(function(){var max=250;var valLen=$(this).val().length;$('.info-keyup').text( valLen+'/'+max); var val = $(this).val(); if (val.length > 250){ $(this).val(val.slice(0, 250));}});";
		Yii::app()->clientScript->registerScript('', $script, CClientScript::POS_READY);

		if (isset($_POST[$module])) {
			$model_class->attributes = $_POST[$module];
			if ($model_class->validate()) {
				$model_class->save();
				$this->redirect(array('index'));
			}
		}

		$this->render('edit', array('model' => $model_class, 'listItemsCat' => $model_cat_class->listCats()));
	}

}