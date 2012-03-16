<?php

class RegisterController extends Controller {

    public function actionIndex() {

        $model = new User('create');

        if (isset($_POST['User'])) {
            $model->attributes = $_POST['User'];
            if ($model->save())
               $this->redirect(array('/user/view', 'id' => $model->username));
        }

        $this->render('index', array(
            'model' => $model,
        ));
    }

    public function actionSuccess() {
        if (Yii::app()->session['reg_success']) {
            $this->render(Yii::app()->theme->name . '/success');
        } else {
            $this->redirect(Yii::app()->request->baseUrl . '/' . $this->id);
        }
    }

}