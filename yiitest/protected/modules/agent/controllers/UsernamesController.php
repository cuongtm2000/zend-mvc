<?php

class UsernamesController extends AgentController {

    public function actionIndex() {
        $model = new Username;
        $this->render('index', $model->listItemAgent(Yii::app()->agentUser->agentType, Yii::app()->agentUser->id));
    }

    public function actionEdit($id) {
        Yii::app()->clientScript->registerCssFile(Yii::app()->theme->baseUrl . '/css/jquery-ui-1.8.14.custom.css');
        Yii::app()->clientScript->registerCoreScript('jquery');
        Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl . '/js/jquery-ui-1.8.14.custom.min.js');
        Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl . '/js/jquery.ui.datepicker-vi.js');
        Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl . '/js/jquery.datepicker.config.js');

        $model = new Username();
        $business_class = new Bussiness();
        $province_class = new Provinces();

        $model = $model->loadEdit($id); //load form models
        $model->setScenario('changeInfo');

        if (isset($_POST['Username'])) {
            $model->attributes = $_POST['Username'];
            if ($model->validate()) {
                $model->changeInfo($model->email, $model->fullname, $model->phone, $model->company, $model->dos_provinces_province_id, $model->dos_bussiness_bussiness_id, $id, $model->expired);
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
                $model->changePass($model->pass_new, $id);
                $this->redirect(array('./usernames'));
            }
        }
        $this->render('password', array('model' => $model));
    }
}