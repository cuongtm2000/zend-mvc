<?php

class UsernamesController extends AgentController {

    public function actionIndex() {
        $model = new Username;
        $this->render('index', $model->listItemAgent(Yii::app()->agentUser->agentType, Yii::app()->agentUser->id));
    }
}