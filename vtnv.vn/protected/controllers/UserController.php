<?php

class UserController extends Controller {
    public function filters() {
        return array(
            'accessControl', // perform access control for CRUD operations
        );
    }
    public function accessRules() {
        return array(

        );
    }

    public function actionView() {
        $this->render('view', array(
            'model' => $this->loadModel(Yii::app()->user->name),
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

    public function actionMap() {
        $user = new User();
        $this->render('map', array(
            'tree' => $user->createTree(Yii::app()->user->name),
            'listUserQuanly' => '',
        ));
    }
    public function actionChangepass() {
        /*$user = new User();
        $this->render('map', array(
            'tree' => $user->createTree(Yii::app()->user->name),
            'listUserQuanly' => '',
        ));*/
		$this->render('changepass');
    }
    
    public function actionTransferv() {
        $model = new TransferForm();
        if (isset($_POST['TransferForm'])) {
            $model->attributes = $_POST['TransferForm'];
            if ($model->validate() ) {
                $model->transfer();
                $this->redirect(array('/log'));
            }
        }        
        $this->render('transferv', array(
            'model' => $model,
            'user' => User::model()->findByPk(Yii::app()->user->name),
        ));
    }

    public function loadModel($id) {
        $model = User::model()->findByPk($id);
        if ($model === null)
            throw new CHttpException(404, 'The requested page does not exist.');
        return $model;
    }

}

