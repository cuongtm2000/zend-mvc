<?php

class TutorialController extends AdministratorController {
    public function actionCat() {
        $this->render('cat');
    }

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
        $module = ucfirst($this->getId());
        $model = new $module();
        $cat = new TutorialCat();

		Yii::app()->clientScript->registerScriptFile(Yii::app()->request->baseUrl . '/public/plugin/tiny_mce/tiny_mce.js');
		Yii::app()->clientScript->registerScriptFile(Yii::app()->request->baseUrl . '/public/plugin/tiny_mce/config.js');

        $script = "$('#" . $module . "_description').keyup(function(){var max=250;var valLen=$(this).val().length;$('.info-keyup').text( valLen+'/'+max); var val = $(this).val(); if (val.length > 250){ $(this).val(val.slice(0, 250));}});";
        Yii::app()->clientScript->registerScript('', $script, CClientScript::POS_READY);

        if (isset($_POST[$module])) {
            $model->attributes = $_POST[$module];

            if ($model->validate()) {
                $model->save();
                $this->redirect(array('index'));
            }
        }

        $this->render('add', array('model' => $model, 'list_item_cat' => $cat->listItemAdminAction()));
    }
    public function actionEdit($id) {
        $module = ucfirst($this->getId());
        $model = new $module();
        $cat = new TutorialCat();

		Yii::app()->clientScript->registerScriptFile(Yii::app()->request->baseUrl . '/public/plugin/tiny_mce/tiny_mce.js');
		Yii::app()->clientScript->registerScriptFile(Yii::app()->request->baseUrl . '/public/plugin/tiny_mce/config.js');
        $script = "$('#" . $module . "_description').keyup(function(){var max=250;var valLen=$(this).val().length;$('.info-keyup').text( valLen+'/'+max); var val = $(this).val(); if (val.length > 250){ $(this).val(val.slice(0, 250));}});";
        Yii::app()->clientScript->registerScript('', $script, CClientScript::POS_READY);

        $model = $model->loadEdit($id); //load form models
        if (isset($_POST[$module])) {
            $model->attributes = $_POST[$module];

            if ($model->validate()) {
                $model->save();
                $this->redirect(array('index'));
            }
        }

        $this->render('edit', array('model' => $model, 'list_item_cat' => $cat->listItemAdminAction()));
    }
}