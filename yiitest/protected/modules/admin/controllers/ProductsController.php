<?php

class ProductsController extends AdminController {

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

    public function actionCats() {
        Yii::app()->getModule($this->getId());
        $model = new ProductsCat();

        //Submit
        if (Yii::app()->request->getIsPostRequest()) {
            $model->activeItem(Yii::app()->request);
        }

        $this->render('cats', $model->listItemAdmin());
    }

    public function actionAddCat() {
        Yii::app()->getModule($this->getId());
        $model = new ProductsCat();

        //$script = "$('#ProductsCat_description').keyup(function(){var max=250;var valLen=$(this).val().length;$('.info-keyup').text( valLen+'/'+max); var val = $(this).val(); if (val.length > 250){ $(this).val(val.slice(0, 250));}});";
        //Yii::app()->clientScript->registerScript('', $script, CClientScript::POS_READY);

        if (isset($_POST['ProductsCat'])) {
            $model->attributes = $_POST['ProductsCat'];

            if ($model->validate()) {
                $model->save();
                $this->redirect(array('cats'));
            }
        }

        $this->render('addcat', array('model' => $model));
    }

    public function actionEditCat($id) {
        Yii::app()->getModule($this->getId());
        $model = new ProductsCat();
        $model = $model->loadEdit($id); //load form models

        //$script = "$('#ProductsCat_description').keyup(function(){var max=250;var valLen=$(this).val().length;$('.info-keyup').text( valLen+'/'+max); var val = $(this).val(); if (val.length > 250){ $(this).val(val.slice(0, 250));}});";
        //Yii::app()->clientScript->registerScript('', $script, CClientScript::POS_READY);

        if (isset($_POST['ProductsCat'])) {
            $model->attributes = $_POST['ProductsCat'];

            if ($model->validate()) {
                $model->save();
                $this->redirect(array('cats'));
            }
        }

        $this->render('editcat', array('model' => $model));
    }

    public function actionUpcat($id) {
        Yii::app()->getModule($this->getId());
        $model = new ProductsCat();

        $cat_info = $model->getCatParent_CatOrder($id);
        //Next info
        $next_info = $model->getCatid_CatOrder_Next($cat_info['cat_parent_id'], $cat_info['cat_order']);

        if (isset($next_info['cat_id']) && isset($next_info['cat_order'])) {
            $model->updateUpDown($cat_info, $next_info, $id);
        }
        $this->redirect(array('cats'));
    }

    public function actionDowncat($id) {
        Yii::app()->getModule($this->getId());
        $model = new ProductsCat();

        $cat_info = $model->getCatParent_CatOrder($id);
        //Previous info
        $previous_info = $model->getCatid_CatOrder_Previous($cat_info['cat_parent_id'], $cat_info['cat_order']);

        if (isset($previous_info['cat_id']) && isset($previous_info['cat_order'])) {
            $model->updateUpDown($cat_info, $previous_info, $id);
        }
        $this->redirect(array('cats'));
    }

    public function actionDelcat($id) {
        Yii::app()->getModule($this->getId());
        $model = new ProductsCat();

        $data['infocat'] = $model->getInfoCat($id); //Tên phân loại
        $data['numcat'] = $model->countItemCat($id); //Số sản phẩm con
        $data['subcat'] = $model->countSubcat($id);
        $data['listcat'] = $model->listItemAdmin($id);

        if (Yii::app()->request->getIsPostRequest()) {
            $item = new Products();
            $item->delItembyCat(Yii::app()->request);
            $this->redirect(array('cats'));
        }
        $this->render('delcat', $data);
    }

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
        //$script = "$('#" . $module . "_description').keyup(function(){var max=250;var valLen=$(this).val().length;$('.info-keyup').text( valLen+'/'+max); var val = $(this).val(); if (val.length > 250){ $(this).val(val.slice(0, 250));}});";
        //Yii::app()->clientScript->registerScript('', $script, CClientScript::POS_READY);

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
        $model = $model->loadEdit($id); //load form models

        Yii::app()->clientScript->registerScriptFile(Yii::app()->request->baseUrl . '/public/plugin/ckeditor/ckeditor.js');
        //$script = "$('#" . $module . "_description').keyup(function(){var max=250;var valLen=$(this).val().length;$('.info-keyup').text( valLen+'/'+max); var val = $(this).val(); if (val.length > 250){ $(this).val(val.slice(0, 250));}});";
        //Yii::app()->clientScript->registerScript('', $script, CClientScript::POS_READY);

        Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl . '/js/jquery.nyromodal.custom.min.js');
        Yii::app()->clientScript->registerCssFile(Yii::app()->theme->baseUrl . '/css/nyromodal.css');
        Yii::app()->clientScript->registerScript('', "$(function() { $('.nyroModal').nyroModal();});", CClientScript::POS_READY);

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