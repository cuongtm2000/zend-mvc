<?php

class PostsController extends Controller {

    public function filters() {
        return array(
            'accessControl',
        );
    }

    public function accessRules() {
        return array(
            array(
                'allow',
                'users' => array('@'),
            ),
            array('deny'),
        );
    }

    public function actionIndex() {
        $model = new Posts;
        //Submit
        if(Yii::app()->request->getIsPostRequest()){
            $model->activeItem(Yii::app()->request);
        }
        $this->render('index', $model->listItemAdmin());
    }
    public function actionAdd() {
        Yii::app()->clientScript->registerScriptFile(Yii::app()->request->baseUrl.'/public/plugin/ckeditor/ckeditor.js');
        $script = "$('#Posts_post_description').keyup(function(){var max=250;var valLen=$(this).val().length;$('.info-keyup').text( valLen+'/'+max); var val = $(this).val(); if (val.length > 250){ $(this).val(val.slice(0, 250));}});";
        Yii::app()->clientScript->registerScript('', $script, CClientScript::POS_READY);
        
        $model = new Posts;
        if (isset($_POST['Posts'])) {
            $model->attributes = $_POST['Posts'];
            if ($model->validate()) {
                if ($model->save()) {
                    $this->redirect(array('index'));
                }
            }
        }

        $this->render('add', array('model' => $model));
    }
    public function actionEdit($id){
        Yii::app()->clientScript->registerScriptFile(Yii::app()->request->baseUrl.'/public/plugin/ckeditor/ckeditor.js');
        $script = "$('#Posts_post_description').keyup(function(){var max=250;var valLen=$(this).val().length;$('.info-keyup').text( valLen+'/'+max); var val = $(this).val(); if (val.length > 250){ $(this).val(val.slice(0, 250));}});";
        Yii::app()->clientScript->registerScript('', $script, CClientScript::POS_READY);
        
        $model = new Posts;
        $model = $model->loadEdit($id); //load form models
        if(isset($_POST['Posts'])){
            $model->attributes = $_POST['Posts'];
            
            if($model->validate()){
                $model->save();
                $this->redirect(array('index'));
            }
        }
        $this->render('edit', array('model' => $model));
    }
}