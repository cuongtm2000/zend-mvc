<?php

class AdminController extends BackEndController {
    public function actionIndex() {
        $this->render('index');
    }

    public function actionCreate() {
        die('this is default create');
    }

    public function actionEdit($id) {
        die('this is default edit = ' . $id);
    }
}