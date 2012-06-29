<?php

class DefaultController extends Controller
{
	public function actionIndex()
	{
		//$this->layout = 'test';
		$this->render('index');
	}
}