<?php

class UsernamesController extends AgentController {

    public function actionIndex() {
        $model = new Username;
        $this->render('index', $model->listItemAgent(Yii::app()->agentUser->agentType, Yii::app()->agentUser->id));
    }

    public function actionEdit($id) {
        $model = new Username();
        $business_class = new Bussiness();
        $province_class = new Provinces();

        $model = $model->loadEdit($id); //load form models
        $model->setScenario('changeInfo');

        if (isset($_POST['Username'])) {
            $model->attributes = $_POST['Username'];
            if ($model->validate()) {
                $model->changeInfo($model->email, $model->fullname, $model->phone, $model->company, $model->dos_provinces_province_id, $model->dos_bussiness_bussiness_id, $id);
                $this->redirect(array('./usernames'));
            }
        }
        $this->render('edit', array('model' => $model, 'listBusiness' => $business_class->listCats(), 'listProvinces' => $province_class->listProvinceByCountry('VND')));
    }
    public function actionPassword($id) {
        $model = new Username();
        $model->setScenario('changePass');

        if (isset($_POST['Username'])) {
            $model->attributes = $_POST['Username'];
            if ($model->validate()) {
                $model->changePass($model->pass_new);
                $this->redirect(array('./usernames'));
            }
        }
        $this->render('password', array('model' => $model));
    }
}