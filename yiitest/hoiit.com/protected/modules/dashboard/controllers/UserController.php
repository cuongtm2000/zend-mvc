<?php

class UserController extends Controller {

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

    public function actionChangepass() {
        $model = new ChangePassForm;
        if (isset($_POST['ChangePassForm'])) {
            $model->attributes = $_POST['ChangePassForm'];
            if ($model->validate()) {
                Usernames::model()->changePass($model->pass_new);

                Yii::app()->user->setFlash('ChangeSuccess', 'Congratulations! Change password successfully');
                $this->refresh();
            }
        }
        $this->render('changepass', array('model' => $model));
    }
}