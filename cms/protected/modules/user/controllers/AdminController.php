<?php

class AdminController extends Controller
{
	public function actionIndex()
	{
		$this->render('index');
	}
	public function actionCreate() {
        die('this is default create');
    }

    public function actionEdit($id) {
        die('this is default edit = '.$id);
    }
}