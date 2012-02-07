<?php

class ActivateController extends Controller {

    public function actionIndex() {
        var_dump($_GET);
        $this->render('index');
    }

}