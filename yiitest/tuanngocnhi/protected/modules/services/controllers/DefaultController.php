<?php

class DefaultController extends Controller{
	public function actionIndex(){
		$this->layout = '//layouts/column-2';
		Yii::app()->clientScript->registerCssFile(Yii::app()->theme->baseUrl . '/css/main.css');
		$this->setSeoPage(); //set Seo page

        $model = ucfirst($this->module->getName());
        $items = new $model();
        
        $data['item'] = $items->firstRecord();
		$this->render(Yii::app()->session['template'].'/index', $data);
	}
    public function actionView($id){
		$this->layout = '//layouts/column-2';
		Yii::app()->clientScript->registerCssFile(Yii::app()->theme->baseUrl . '/css/main.css');
        $model = ucfirst($this->module->getName());
        $items = new $model();

        $data['item'] = $items->detailRecord($id);
        
        $this->render(Yii::app()->session['template'].'/view', $data);
    }
}