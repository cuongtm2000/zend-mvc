<?php

class ConfigsController extends AdminController {

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

	public function actionIndex() {
		$this->render('index');
	}

	public function actionMenu() {
		$model = new Menus;
		//Submit
		if (Yii::app()->request->getIsPostRequest()) {
			$model->addItem(Yii::app()->request);
			$this->refresh();
		}
		$this->render('menu', array('models' => $model->listMenuByAdmin()));
	}

	public function actionWeb() {
		$model = new Web;
		//Submit
		if (Yii::app()->request->getIsPostRequest()) {
			$model->addItem(Yii::app()->request);
			$this->refresh();
		}
		$this->render('web', array('models' => $model->listRecord()));
	}

	public function actionLangs() {
		$model_class = new UserLangs();
		$models = $model_class->getLangs();
		//Submit
		if (Yii::app()->request->getIsPostRequest()) {
			$model_class->addItem(Yii::app()->request);
			$this->refresh();
		}
		$this->render('langs', array('models' => $models));
	}

	public function actionSeo() {
		Yii::app()->clientScript->registerCssFile(Yii::app()->theme->baseUrl . '/css/tab.css');
		Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl . '/js/tab.js');

		$model = new Menus;
		//Submit
		if (Yii::app()->request->getIsPostRequest()) {
			$model->addItemSeo(Yii::app()->request);
			$this->refresh();
		}

		$this->render('seo', array('models' => $model->listMenuByAdmin(1)));
	}

	public function actionTemplates() {
		$business_class = new Bussiness();
		$tempaltes_business_class = new TemplatesBussiness();

		$model = new Username('templates');
		$id = isset($_POST['Username']['dos_bussiness_bussiness_id']) ? $_POST['Username']['dos_bussiness_bussiness_id'] : 'root';

		if (isset($_POST['Username'])) {
			if (isset($_POST['btn-submit'])) {
				$model->attributes = $_POST['Username'];
				if ($model->validate()) {
					Username::model()->updateByPk(Yii::app()->user->id, array('dos_templates_template' => $model->dos_templates_template));
					Yii::app()->clientScript->registerScript('', 'alert("Chức mừng! thay đổi mẫu Website thành công"); window.location="' . Yii::app()->request->baseUrl . '/admin/configs' . '"', CClientScript::POS_HEAD);
				}
			} else {
				$model->dos_bussiness_bussiness_id = $id;
			}
		}

		$this->render('templates', array('model' => $model, 'templatesBusiness' => $tempaltes_business_class->listTempaltesByBusiness($id, 1), 'listBusiness' => $business_class->listCats(1)));
	}
}