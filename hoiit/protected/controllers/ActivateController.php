<?php

class ActivateController extends Controller {

    public function actionIndex($email, $code) {
        if(isset($email) && isset($code)){
            $model = new Usernames;
            if($model->getUsername($email, $code)){
                Yii::app()->session['activated'] = true;
            }
            $this->redirect(array('/login'));
        }
    }

}