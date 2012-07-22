<?php

class DefaultController extends Controller{
	public function actionIndex(){
		$this->setSeoPage(); //set Seo page

        $model = ucfirst($this->module->getName());
        $items = new $model();

        $data['item'] = $items->firstRecord();
		$this->render(Yii::app()->session['template'].'/index', $data);
	}
    public function actionView($id){
        $this->layout = '//layouts/column-3';
        $model = ucfirst($this->module->getName());
        $items = new $model();
        $this->render(Yii::app()->session['template'].'/view', array('item' => $items->detailRecord($id)));
    }
}