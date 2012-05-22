<?php

class AccountController extends AdminController {

    public function filters() {
        return array(
            'accessControl',
        );
    }

    public function accessRules() {
        return array(
            array(
                'allow',
                //'actions' => array('index'),
                'users' => array('@'),
            ),
            array('deny'),
        );
    }

    public function actionIndex() {
        $model = new Username();
		$business_class = new Bussiness();
		$province_class = new Provinces();

        $model = $model->loadEdit(Yii::app()->user->id); //load form models
        $model->setScenario('changeInfo');

        if (isset($_POST['Username'])) {
            $model->attributes = $_POST['Username'];
            if ($model->validate()) {
                $model->changeInfo($model->email, $model->fullname, $model->phone, $model->company, $model->dos_provinces_province_id, $model->dos_bussiness_bussiness_id, Yii::app()->user->id);
                $this->refresh();
            }
        }
        $this->render('index', array('model' => $model, 'listBusiness' => $business_class->listCats(), 'listProvinces' => $province_class->listProvinceByCountry('VND')));
    }

    public function actionChangepass() {
        $model = new ChangePassForm;
        if (isset($_POST['ChangePassForm'])) {
            $model->attributes = $_POST['ChangePassForm'];
            if ($model->validate()) {
                $user = new Username;
                $user->changePass($model->pass_new);
                $this->redirect(array('/admin/account'));
            }
        }
        $this->render('changepass', array('model' => $model));
    }

}