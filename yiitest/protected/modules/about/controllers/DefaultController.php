<?php

class DefaultController extends Controller{
	public function actionIndex(){
        $model = ucfirst($this->module->getName());
        $items = new $model();

        $data['item'] = $items->firstRecord();
		$this->render(Yii::app()->session['template'].'/index', $data);
	}
    public function actionView($id){
        $model = ucfirst($this->module->getName());
        $items = new $model();

        $this->render(Yii::app()->session['template'].'/view', array('item' => $items->detailRecord($id)));
    }
}