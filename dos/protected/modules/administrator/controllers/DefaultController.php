<?php

class DefaultController extends AdministratorController {

    public function actionIndex() {
        $this->render('index');
    }

}