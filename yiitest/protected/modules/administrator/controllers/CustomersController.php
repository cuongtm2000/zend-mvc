<?php

class CustomersController extends AdministratorController {

    public function actionIndex() {
        $model = new Customers();
        //Submit
        if (Yii::app()->request->getIsPostRequest()) {
            $model->activeItem(Yii::app()->request);
            $this->refresh();
        }
        $this->render('index', $model->listItemAdmin());
    }

    public function actionEdit($id) {
        Yii::app()->clientScript->registerCssFile(Yii::app()->theme->baseUrl . '/css/jquery-ui-1.8.14.custom.css');
        Yii::app()->clientScript->registerCoreScript('jquery');
        Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl . '/js/jquery-ui-1.8.14.custom.min.js');
        Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl . '/js/jquery.ui.datepicker-vi.js');
        Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl . '/js/jquery.datepicker.config.js');

        $model = new Customers();
        $business_class = new Bussiness();

        $model = $model->loadEdit($id); //load form models
        $model->setScenario('changeInfo');

        if (isset($_POST['Customers'])) {
            $model->attributes = $_POST['Customers'];
            if ($model->validate()) {
                $model->save();
                //$model->changeInfo($model->customer_id, $model->customer_name, $model->email, $model->phone, $model->address, $model->website, $model->expired_date, $model->dos_bussiness_bussiness_id);
                $this->redirect(array('index'));
            }
        }
        $this->render('edit', array('model' => $model, 'listBusiness' => $business_class->listCats()));
    }
}