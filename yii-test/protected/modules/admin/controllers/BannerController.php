<?php
class BannerController extends Controller{
    public function filters(){
		return array(
			'accessControl',
		);
	}

	public function accessRules(){
		return array(
			array(
				'allow',
				//'actions' => array('index'),
				'users' => array('@'),
			),
			array('deny'),
		);
	}
	public function actionIndex(){
        Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl.'/js/jquery.nyromodal.custom.min.js');
        Yii::app()->clientScript->registerCssFile(Yii::app()->theme->baseUrl.'/css/nyromodal.css');
        Yii::app()->clientScript->registerScript('', "$(function() { $('.nyroModal').nyroModal();});", CClientScript::POS_READY);
               
	    $module = ucfirst($this->getId());
        $model = new $module();
        
        //Submit
        if(Yii::app()->request->getIsPostRequest()){
            $model->activeItem(Yii::app()->request);
        }
        
        $this->render('index', $model->listItemAdmin());
	}
    public function actionAdd(){
        $module = ucfirst($this->getId());
        $model = new $module();

        if(isset($_POST[$module])){
            $model->attributes = $_POST[$module];
            
            if($model->validate()){
                $model->banner_order = $model->maxRecordOrder();
                $model->dos_usernames_username = Yii::app()->session['subdomain'];
                $model->save();
                $this->redirect(array('index'));
            }
        }
        
        $this->render('add', array('model'=>$model));
	}
    public function actionEdit($id){
        Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl.'/js/jquery.nyromodal.custom.min.js');
        Yii::app()->clientScript->registerCssFile(Yii::app()->theme->baseUrl.'/css/nyromodal.css');
        Yii::app()->clientScript->registerScript('', "$(function() { $('.nyroModal').nyroModal();});", CClientScript::POS_READY);
        
        $module = ucfirst($this->getId());
        $model = new $module();
        $model = $model->loadEdit($id); //load form models
        
        if(isset($_POST[$module])){
            $model->attributes = $_POST[$module];
            if($model->validate()){                
                $model->save();
                $this->redirect(array('index'));
            }
        }

        $this->render('edit', array('model'=>$model));
    }
}