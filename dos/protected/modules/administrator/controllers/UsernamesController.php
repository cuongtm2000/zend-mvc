<?php

class UsernamesController extends AdministratorController {

    public function actionIndex() {
        $model = new Username;
        //Submit
        if (Yii::app()->request->getIsPostRequest()) {
            $model->activeItem(Yii::app()->request);
            $this->refresh();
        }
        $this->render('index', $model->listItemAdmin());
    }
}