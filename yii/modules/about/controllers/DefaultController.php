<?php

class DefaultController extends Controller{
	public function actionIndex(){
		//echo Yii::app()->session['subdomain'];
		//$this->pageTitle = 'My new page title';
        //echo LANG;
        //echo Yii::app()->request->getQuery('id');
        
        //$this->layout = 'admin';
        
        $about = new About();
        $data['item'] = $about->firstRecord();
        
		$this->render(Yii::app()->session['template'].'/index', $data);
	}
    public function actionView($id){
        $about = new About();
        $data['item'] = $about->detailRecord($id);
        
        $this->render(Yii::app()->session['template'].'/view', $data);
    }
}