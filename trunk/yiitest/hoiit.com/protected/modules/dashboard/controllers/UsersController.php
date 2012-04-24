<?php

class UsersController extends Controller {

	public function filters() {
		return array(
			'accessControl',
		);
	}

	public function accessRules() {
		return array(
			array(
				'allow',
				'users' => array('@'),
			),
			array('deny'),
		);
	}

	public function actionIndex() {

	}

	public function actionEdit() {
		$model = new Usernames();
		$model = $model->loadEdit(Yii::app()->user->id); //load form models

		if (isset($_POST['Usernames'])) {
			$model->attributes = $_POST['Usernames'];
			if ($model->validate()) {
				$model->save();
				$this->redirect(array('/dashboard'));
			}
		}
		$this->render('edit', array('model' => $model));
	}
}