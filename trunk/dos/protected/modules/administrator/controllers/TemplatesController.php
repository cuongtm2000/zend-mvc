<?php

class TemplatesController extends AdministratorController {

    public function actionIndex() {
        $module = ucfirst($this->getId());
        $model = new $module();
        
        //Submit
        if (Yii::app()->request->getIsPostRequest()) {
            $model->activeItem(Yii::app()->request);
            $this->refresh();
        }
        
        $this->render('index', $model->listItemAdmin());
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

				$business = new TemplatesBussiness();
				$business->addItem($_POST[$module]['choose_business'], $model->template);
                
                $this->redirect(array('index'));
            }
        }
        
        $this->render('add', array('model' => $model));
    }
    public function actionEdit($id) {
        Yii::app()->clientScript->registerCoreScript('jquery');
        
        $module = ucfirst($this->getId());
        $model = new $module('edit');
        $model = $model->loadEdit($id); //load form models

        $config = new Configs;
        
        if (isset($_POST[$module])) {
            $model->attributes = $_POST[$module];
            if ($model->validate()) {
                $model->save();
                
                $config->addItem(Yii::app()->request, $model->template);

				$business = new TemplatesBussiness();
				$business->addItem($_POST[$module]['choose_business'], $model->template);

                $this->redirect(array('index'));
            }
        }
        
        $this->render('edit', array('model' => $model, 'configs'=>$config->configByTemplate($id)));
    }
    public function actionModule($id){
        Yii::app()->clientScript->registerCoreScript('jquery');
        
        $template_module_class = new TemplateModule;
        $modules_class = new Modules;
        $values_class = new Values;
        
        //Submit
        if (Yii::app()->request->getIsPostRequest()) {
            $template_module_class->addItem(Yii::app()->request, $id);
            $this->refresh();
        }
        
        $this->render('module', array('id' => $id, 'moduleValueByTemplate'=>$template_module_class->moduleValueByTemplate($id), 'modules' => $modules_class->listModules(1), 'values' => $values_class->listValues()));
    }
    public function actionFile($id){
        Yii::app()->clientScript->registerCoreScript('jquery');
        
        $template_module_class = new Loadfiles;
        $modules_class = new Modules;
        
        //Submit
        if (Yii::app()->request->getIsPostRequest()) {
            $template_module_class->addItem(Yii::app()->request, $id);
            $this->refresh();
        }
        
        $this->render('file', array('id' => $id, 'moduleFileByTemplate'=>$template_module_class->moduleFileByTemplate($id), 'modules' => $modules_class->listModules(1)));
    }
}