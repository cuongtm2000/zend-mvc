<?php

class DefaultController extends Controller {

    public function actionIndex() {
        $this->layout = '//layouts/column-2';
        $model = new Username('register');
        if (isset($_POST['Username'])) {
            $model->attributes = $_POST['Username'];
         //   var_dump($_POST['Username']);
            if ($model->save()) {
                Yii::app()->session['reg_success'] = true;
               $this->redirect(Yii::app()->baseUrl . '/dang-ky/thanh-cong');
            }
        }

        $this->render(Yii::app()->session['template'] . '/index', array('model' => $model));
    }

    public function actionSuccess() {
        $this->layout = '//layouts/column-2';
        if (!Yii::app()->session['reg_success']) {
            $this->redirect(Yii::app()->request->baseUrl . '/dang-ky');
        }
        $this->render(Yii::app()->session['template'] . '/success');
    }

}