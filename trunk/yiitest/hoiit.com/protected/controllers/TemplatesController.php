<?php

class TemplatesController extends Controller {
    /**
     * @var string the default layout for the views. Defaults to '//layouts/column2', meaning
     * using two-column layout. See 'protected/views/layouts/column2.php'.
     */
    //public $layout='//layouts/column2';

    /**
     * @return array action filters
     */
    public function filters() {
        return array(
            'accessControl', // perform access control for CRUD operations
        );
    }

    /**
     * Specifies the access control rules.
     * This method is used by the 'accessControl' filter.
     * @return array access control rules
     */
    public function accessRules() {
        return array(
            array('allow', // allow all users to perform 'index' and 'view' actions
                'actions' => array('index', 'view'),
                'users' => array('*'),
            ),
            array('allow', // allow authenticated user to perform 'create' and 'update' actions
                'actions' => array('create', 'update'),
                'users' => array('@'),
            ),
            array('allow', // allow admin user to perform 'admin' and 'delete' actions
                'actions' => array('admin', 'delete'),
                'users' => array('admin'),
            ),
            array('deny', // deny all users
                'users' => array('*'),
            ),
        );
    }

    /**
     * Displays a particular model.
     * @param integer $id the ID of the model to be displayed
     */
    public function actionView($id) {
		Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl.'/js/jquery-1.7.1.min.js');

		Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl.'/js/jcarousellite_1.0.1.js');
		Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl.'/js/scroller.js');



		Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl.'/js/jquery.fancybox.js');
		Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl.'/js/jquery.scroll-1.4.2-min.js');
		Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl.'/js/jquery.serialScroll-1.2.2-min.js');
		Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl.'/js/product.js');

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
		Yii::app()->clientScript->registerCssFile(Yii::app()->theme->baseUrl.'/css/scroll.css');
		Yii::app()->clientScript->registerCssFile(Yii::app()->theme->baseUrl.'/css/jquery.fancybox.css');
        $this->render('view', array('model' => $this->loadModel($id),));
    }

    /**
     * Creates a new model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     */
    public function actionCreate() {
        $model = new WebTemplates;

        // Uncomment the following line if AJAX validation is needed
        // $this->performAjaxValidation($model);

        if (isset($_POST['WebTemplates'])) {
            $model->attributes = $_POST['WebTemplates'];
            if ($model->save())
                $this->redirect(array('view', 'id' => $model->template_id));
        }

        $this->render('create', array(
            'model' => $model,
        ));
    }

    /**
     * Updates a particular model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id the ID of the model to be updated
     */
    public function actionUpdate($id) {
        $model = $this->loadModel($id);

        // Uncomment the following line if AJAX validation is needed
        // $this->performAjaxValidation($model);

        if (isset($_POST['WebTemplates'])) {
            $model->attributes = $_POST['WebTemplates'];
            if ($model->save())
                $this->redirect(array('view', 'id' => $model->template_id));
        }

        $this->render('update', array(
            'model' => $model,
        ));
    }

    /**
     * Deletes a particular model.
     * If deletion is successful, the browser will be redirected to the 'admin' page.
     * @param integer $id the ID of the model to be deleted
     */
    public function actionDelete($id) {
        if (Yii::app()->request->isPostRequest) {
            // we only allow deletion via POST request
            $this->loadModel($id)->delete();

            // if AJAX request (triggered by deletion via admin grid view), we should not redirect the browser
            if (!isset($_GET['ajax']))
                $this->redirect(isset($_POST['returnUrl']) ? $_POST['returnUrl'] : array('admin'));
        }
        else
            throw new CHttpException(400, 'Invalid request. Please do not repeat this request again.');
    }

    /**
     * Lists all models.
     */
    public function actionIndex() {
        $model = new WebTemplates();
        $this->render(Yii::app()->theme->name . '/index', $model->listRecordIndex());
    }
    public function actionCats(){
        //$model = new Posts;
        //$this->render(Yii::app()->theme->name . '/cats');
    }

    /**
     * Manages all models.
     */
    public function actionAdmin() {
        $model = new WebTemplates('search');
        $model->unsetAttributes(); // clear any default values
        if (isset($_GET['WebTemplates']))
            $model->attributes = $_GET['WebTemplates'];

        $this->render('admin', array(
            'model' => $model,
        ));
    }

    /**
     * Returns the data model based on the primary key given in the GET variable.
     * If the data model is not found, an HTTP exception will be raised.
     * @param integer the ID of the model to be loaded
     */
    public function loadModel($id) {
        $model = WebTemplates::model()->findByPk($id);
        if ($model === null)
            throw new CHttpException(404, 'The requested page does not exist.');
        return $model;
    }

    /**
     * Performs the AJAX validation.
     * @param CModel the model to be validated
     */
    protected function performAjaxValidation($model) {
        if (isset($_POST['ajax']) && $_POST['ajax'] === 'web-templates-form') {
            echo CActiveForm::validate($model);
            Yii::app()->end();
        }
    }

}
