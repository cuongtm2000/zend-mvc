<?php

class AgentsController extends AdministratorController {

    public function actionIndex() {
        $model = new Agents();
        //Submit
        if (Yii::app()->request->getIsPostRequest()) {
            $model->activeItem(Yii::app()->request);
            $this->refresh();
        }
        $this->render('index', $model->listItemAdmin());
    }

    public function actionAdd() {
        $model = new Agents();

        if (isset($_POST['Agents'])) {
            $model->attributes = $_POST['Agents'];
            if ($model->validate()) {
                 if($model->save()){

                 }
            }
        }
        $this->render('add', array('model' => $model, 'listProvinces' => Provinces::model()->listProvinceByCountry('VND')));
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
}