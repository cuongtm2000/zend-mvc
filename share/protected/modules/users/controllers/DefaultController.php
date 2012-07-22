<?php

class DefaultController extends Controller {
    public function actionIndex() {
        $this->layout = '//layouts/column-2';

        $this->render(Yii::app()->session['template'].'/index', Username::model()->listUsernames());
    }
     public function actionEdit() {
        $this->layout = '//layouts/column-2';
        $model=  Username::model()->findByPk(Yii::app()->user->id);
        $model['password']='';
        if (isset($_POST['Username'])) {
            $model->attributes = $_POST['Username'];
            if ($model->validate()) {
                $model->updateInfo($_POST['Username']);
               $this->redirect('thay-doi-thong-tin');
            }
        }

        $this->render(Yii::app()->session['template'] . '/edit', array('model' => $model));
    }
}