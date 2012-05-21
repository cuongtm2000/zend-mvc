<?php

class DefaultController extends AgentController {

    public function actionIndex() {
        $this->render('index');
    }
}