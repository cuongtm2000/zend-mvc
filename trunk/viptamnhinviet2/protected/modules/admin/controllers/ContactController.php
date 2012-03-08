<?php

class ContactController extends AdminController {

    public function actionIndex() {
        $module = ucfirst($this->getId());
        Yii::app()->getModule($this->getId());
        $model = new $module();

        //Submit
        if (Yii::app()->request->getIsPostRequest()) {
            $model->activeItem(Yii::app()->request);
        }
        $this->render('index', $model->listItemAdmin());
    }

    public function actionAdd() {
        $module = ucfirst($this->getId());
        Yii::app()->getModule($this->getId());
        $model = new $module();

        Yii::app()->clientScript->registerScriptFile(Yii::app()->request->baseUrl . '/public/plugin/ckeditor/ckeditor.js');
        $script = "$('#" . $module . "_description').keyup(function(){var max=250;var valLen=$(this).val().length;$('.info-keyup').text( valLen+'/'+max); var val = $(this).val(); if (val.length > 250){ $(this).val(val.slice(0, 250));}});";
        Yii::app()->clientScript->registerScript('', $script, CClientScript::POS_READY);

        if (isset($_POST[$module])) {
            $model->attributes = $_POST[$module];

            if ($model->validate()) {
                $model->save();
                $this->redirect(array('index'));
            }
        }

        $this->render('add', array('model' => $model));
    }

    public function actionEdit($id) {
        $module = ucfirst($this->getId());
        Yii::app()->getModule($this->getId());
        $model = new $module();

        Yii::app()->clientScript->registerScriptFile(Yii::app()->request->baseUrl . '/public/plugin/ckeditor/ckeditor.js');
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

        $this->render('edit', array('model' => $model));
    }

}