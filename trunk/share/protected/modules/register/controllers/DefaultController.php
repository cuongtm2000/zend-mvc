<?php

class DefaultController extends Controller {

    public function actionIndex() {

        $model = new Username('create');

        if (isset($_POST['User'])) {
            $model->attributes = $_POST['User'];
            if ($model->save()) {
                Yii::app()->session['reg_success'] = true;
            }
        }

        $this->render('index', array(
            'model' => $model,
        ));
    }

    public function actionSuccess() {
        if (!Yii::app()->session['reg_success']) {
            $this->redirect(Yii::app()->request->baseUrl . '/dang-ky-thanh-vien.html');
        }
        $this->render('success');
    }

}