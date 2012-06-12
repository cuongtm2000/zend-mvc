<?php

class PostsController extends AdministratorController {

    public function actionIndex() {
        $model = new Posts;
        //Submit
        if (Yii::app()->request->getIsPostRequest()) {
            $model->activeItem(Yii::app()->request);
        }
        $this->render('index', $model->listItemAdmin(1));
    }

    public function actionEdit($id) {
        Yii::app()->clientScript->registerScriptFile(Yii::app()->request->baseUrl . '/public/plugin/tiny_mce/tiny_mce.js');
        $script = "$('#Posts_post_description').keyup(function(){var max=250;var valLen=$(this).val().length;$('.info-keyup').text( valLen+'/'+max); var val = $(this).val(); if (val.length > 250){ $(this).val(val.slice(0, 250));}});";
        Yii::app()->clientScript->registerScript('', $script, CClientScript::POS_READY);

        $model = new Posts;
        $model = $model->loadEdit($id, 1); //load form models
        if (isset($_POST['Posts'])) {
            $model->attributes = $_POST['Posts'];

            if ($model->validate()) {
                $model->save();
                $this->redirect(array('index'));
            }
        }
        $this->render('edit', array('model' => $model));
    }
}