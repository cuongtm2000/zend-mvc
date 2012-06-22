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
        $model->setScenario('add');

        if (isset($_POST['Agents'])) {
            $model->attributes = $_POST['Agents'];
            if ($model->validate()) {
                if ($model->save()) {
                    $this->redirect(array('index'));
                }
            }
        }
        $this->render('add', array('model' => $model, 'listProvinces' => Provinces::model()->listProvinceByCountry('VND')));
    }

    public function actionEdit($id) {
        $model = new Agents();
        $model = $model->loadEdit($id); //load form models
        $model->setScenario('edit');

        if (isset($_POST['Agents'])) {
            $model->attributes = $_POST['Agents'];
            if ($model->validate()) {
                if ($model->save()) {
                    $this->redirect(array('index'));
                }
            }
        }
        $this->render('edit', array('model' => $model, 'listProvinces' => Provinces::model()->listProvinceByCountry('VND')));
    }

    public function actionPassword($id) {
        $model = new Agents();
        $model->setScenario('changePass');

        if (isset($_POST['Agents'])) {
            $model->attributes = $_POST['Agents'];
            if ($model->validate()) {
                $model->changePass($model->pass_new, $id);
                $this->redirect(array('index'));
            }
        }
        $this->render('password', array('model' => $model));
    }
}