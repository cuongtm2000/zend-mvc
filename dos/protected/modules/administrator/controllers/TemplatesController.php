<?php

class TemplatesController extends AdministratorController {

    public function actionIndex() {
        $this->render('index');
    }
    public function actionAdd() {
        Yii::app()->clientScript->registerCoreScript('jquery');
        
        $module = ucfirst($this->getId());
        $model = new $module('add');
        
        if (isset($_POST[$module])) {
            $model->attributes = $_POST[$module];

            if ($model->validate()) {
                $model->save();
                
                $configs = new Configs;
                $configs->addItem(Yii::app()->request, $model->template);
                
                $this->redirect(array('index'));
            }
        }
        
        $this->render('add', array('model' => $model));
    }
}