<?php
class SupportsController extends Controller{
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
	    $module = ucfirst($this->getId());
        $model = new $module();
        
        //Submit
        if(Yii::app()->request->getIsPostRequest()){
            $model->addItem(Yii::app()->request);
        }
        
        $this->render('index', array('models'=>$model->listItemAdmin()));
	}
}