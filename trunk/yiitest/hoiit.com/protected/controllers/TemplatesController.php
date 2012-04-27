<?php

class TemplatesController extends Controller {
	public $listCatTemplates = array();

	public function actionView($id) {
		Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl . '/js/jquery-1.7.1.min.js');

		Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl . '/js/jcarousellite_1.0.1.js');
		Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl . '/js/scroller.js');


		Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl . '/js/jquery.fancybox.js');
		Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl . '/js/jquery.scroll-1.4.2-min.js');
		Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl . '/js/jquery.serialScroll-1.2.2-min.js');
		Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl . '/js/product.js');

		/*  Yii::app()->clientScript->registerCssFile(Yii::app()->theme->baseUrl.'/css/gallery-view.css');
				//Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl.'/js/jquery-1.6.4.min.js');
				Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl.'/js/jquery.easing.1.3.js');
				Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl.'/js/jquery-galleryview-1.1/jquery.galleryview-1.1.js');
				Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl.'/js/jquery-galleryview-1.1/jquery.timers-1.1.2.js');
				Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl.'/js/jquery-galleryview-1.1/jquery.galleryview-1.1.config.js');

				Yii::app()->clientScript->registerCssFile(Yii::app()->theme->baseUrl.'/css/jquery.lightbox-0.5.css');
				Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl.'/js/jquery.lightbox-0.5.js');
				Yii::app()->clientScript->registerScript('', '$(".panel a[rel^=\'prettyPhoto\']").lightBox({imageBtnClose: \''.Yii::app()->theme->baseUrl.'/images/lightbox-btn-close.gif\', imageLoading: \''.Yii::app()->theme->baseUrl.'/images/lightbox-ico-loading.gif\', imageBtnNext: \''.Yii::app()->theme->baseUrl.'/images/lightbox-btn-next.gif\', imageBtnPrev: \''.Yii::app()->theme->baseUrl.'/images/lightbox-btn-prev.gif\', imageBlank: \''.Yii::app()->theme->baseUrl.'/images/lightbox-blank.gif\'});', CClientScript::POS_READY);
				*/
		Yii::app()->clientScript->registerCssFile(Yii::app()->theme->baseUrl . '/css/scroll.css');
		Yii::app()->clientScript->registerCssFile(Yii::app()->theme->baseUrl . '/css/jquery.fancybox.css');
		$this->render('view', array('model' => $this->loadModel($id),));
	}

	/**
	 * Lists all models.
	 */
	public function actionIndex() {
		$model = new WebTemplates();
		$model_cat = new WebTemplatesCat();
		$this->listCatTemplates = $model_cat->listCats();

		$this->render(Yii::app()->theme->name . '/index', $model->listRecordIndex());
	}

	public function actionCats() {
		//$model = new Posts;
		//$this->render(Yii::app()->theme->name . '/cats');
	}

	public function loadModel($id) {
		$model = WebTemplates::model()->findByPk($id);
		if ($model === null)
			throw new CHttpException(404, 'The requested page does not exist.');
		return $model;
	}
}
