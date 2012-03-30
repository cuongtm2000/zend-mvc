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
        $this->render('langs');
    }

	public function actionSeo() {
		Yii::app()->clientScript->registerCssFile(Yii::app()->theme->baseUrl.'/css/tab.css');
		Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl.'/js/tab.js');

		$model = new Menus;
		//Submit
		if (Yii::app()->request->getIsPostRequest()) {
			$model->addItemSeo(Yii::app()->request);
			$this->refresh();
		}
		$this->render('seo', array('models' => $model->listMenuByAdmin(1)));
	}
}