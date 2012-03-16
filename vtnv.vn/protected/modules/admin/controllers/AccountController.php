<?php

class AccountController extends AdminController {

    public function filters() {
        return array(
            'accessControl',
        );
    }

    public function accessRules() {
        return array(
            array(
                'allow',
                //'actions' => array('index'),
                'users' => array('@'),
            ),
            array('deny'),
        );
    }

    public function actionIndex() {
        $model = new Username('changeInfo');

        $model = $model->loadEdit(); //load form models
        if (isset($_POST['Username'])) {
            $model->attributes = $_POST['Username'];
            if ($model->validate()) {
                $model->save();
                $this->refresh();
            }
        }
        $this->render('index', array('model' => $model));
    }

    public function actionChangepass() {
        $model = new ChangePassForm;
        if (isset($_POST['ChangePassForm'])) {
            $model->attributes = $_POST['ChangePassForm'];
            if ($model->validate()) {
                $user = new Username;
                $user->changePass($model->pass_new);
                $this->redirect(array('/admin/account'));
            }
        }
        $this->render('changepass', array('model' => $model));
    }

}