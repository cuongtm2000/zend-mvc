<?php
class AboutController extends Controller{
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
    public function actionPage(){
        Yii::app()->getModule($this->getId());
        
        $dataProvider=new CActiveDataProvider('About', array('pagination'=>array('pageSize'=>5,),));
        $this->render('page', array('dataProvider' => $dataProvider));
    }
	public function actionIndex(){
        Yii::app()->getModule($this->getId());
        $about = new About();
        
        //Submit
        if(Yii::app()->request->getIsPostRequest()){
            $about->activeItem(Yii::app()->request);
        }
        
        $criteria = new CDbCriteria();
        $criteria->order = 'record_order DESC, created DESC';
        $criteria->condition = 'dos_usernames_username=:user';
        $criteria->params = array(':user' => Yii::app()->session['subdomain']);
        $count = About::model()->count($criteria);
        $pages = new CPagination($count);
        
        // elements per page
        $pages->pageSize = 5;
        $pages->applyLimit($criteria);
        
        // sorting
        $sort = new CSort(ucfirst($this->getId()));
        $sort->attributes = array('title', 'hit', 'created', 'record_order',);
        $sort->applyOrder($criteria);
        
        $models = About::model()->findAll($criteria); 
        $this->render('index', array('models' => $models, 'pages' => $pages, 'sort' => $sort,));
	}
    public function actionAdd(){
        Yii::app()->clientScript->registerScriptFile(Yii::app()->request->baseUrl.'/public/plugin/ckeditor/ckeditor.js');
        
        Yii::app()->getModule($this->getId());
        $model = new About();

        if(isset($_POST[ucfirst($this->getId())])){
            $model->attributes = $_POST[ucfirst($this->getId())];
            
            if($model->validate()){
                $model->record_order = $model->maxRecordOrder();
                $model->dos_usernames_username = Yii::app()->session['subdomain'];
                $model->save();
                $this->redirect('/admin/'.$this->getId().'/index');
            }
        }
        
        $this->render('add', array('model'=>$model));
	}
}