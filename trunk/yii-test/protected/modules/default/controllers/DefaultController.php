<?php

class DefaultController extends Controller
{
    public $param = 'value';
	public function actionIndex()
	{
        //echo $_GET['language'];
        $data['menu_about'] = '123'; 
		$this->render('index', $data);
	}
}