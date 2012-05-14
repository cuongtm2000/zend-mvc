<?php

class LoginController extends AgentController {

    public function actionIndex() {
        $model = new AgentLoginForm();

        if (isset($_POST['AgentLoginForm'])) {
            $model->attributes = $_POST['AgentLoginForm'];
            if ($model->validate() && $model->login()) {
                Yii::app()->request->redirect(Yii::app()->agentUser->returnUrl);
            }
        }
        $this->render('index', array('model' => $model));
    }

}