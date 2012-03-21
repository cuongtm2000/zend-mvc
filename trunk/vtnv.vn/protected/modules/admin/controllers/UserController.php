<?php

class UserController extends AdminController {

	public function actionView($id) {
		$this->render('view', array(
			'model' => $this->loadModel($id),
		));
	}

	public function actionUpdate($id) {
		$model = $this->loadModel($id);

		// Uncomment the following line if AJAX validation is needed
		// $this->performAjaxValidation($model);

		if (isset($_POST['User'])) {
			$model->attributes = $_POST['User'];
			if ($model->save())
				$this->redirect(array('view', 'id' => $model->username));
		}

		$this->render('update', array(
			'model' => $model,
		));
	}

	public function actionDelete($id) {
		if (Yii::app()->request->isPostRequest) {
			// we only allow deletion via POST request
			//    $this->loadModel($id)->delete();
			// if AJAX request (triggered by deletion via admin grid view), we should not redirect the browser
			//  if (!isset($_GET['ajax']))
			//   $this->redirect(isset($_POST['returnUrl']) ? $_POST['returnUrl'] : array('admin'));
		}
		else
			throw new CHttpException(400, 'Invalid request. Please do not repeat this request again.');
	}

	/**
	 * Lists all models.
	 */
	public function actionIndex() {
		$model = new User('search');
		$model->unsetAttributes(); // clear any default values
		if (isset($_GET['User']))
			$model->attributes = $_GET['User'];

		$this->render('admin', array(
			'model' => $model,
		));
	}

	public function actionActive() {
		$model = new User('active');
		if (Yii::app()->request->getIsPostRequest()) {
			$model->activeItem($_POST);
			$this->refresh();
		}
		$this->render('active', array('model' => $model->getUnActive(), 'debug' => $model->debug));
	}

	public function actionThoatban() {
		$model = new User();
		$this->render('thoatban', array(
			'model' => $model->listTVthoatban(),
		));
	}

	public function actionDatchuan() {
		$model = new User();
		if (isset($_POST['ids'])) {
			foreach ($_POST['ids'] as $key => $value) {
				$t = Tables::model()->findByPk($key);
				$t->priority = intval($value);
				$t->save();
			}
			//sort
			$list_u = $model->listTVdatchuan();
			$k = 1;
			foreach ($list_u as $value) {
				$value->priority = $k++;
				$value->save();
			}
		}

		$this->render('datchuan', array(
			'model' => $model->listTVdatchuan(),
			//    'post'  =>$_POST['ids'],
		));
	}


	public function loadModel($id) {
		$model = User::model()->findByPk($id);
		if ($model === null)
			throw new CHttpException(404, 'The requested page does not exist.');
		return $model;
	}

	/**
	 * Performs the AJAX validation.
	 * @param CModel the model to be validated
	 */
	protected function performAjaxValidation($model) {
		if (isset($_POST['ajax']) && $_POST['ajax'] === 'user-form') {
			echo CActiveForm::validate($model);
			Yii::app()->end();
		}
	}

}

