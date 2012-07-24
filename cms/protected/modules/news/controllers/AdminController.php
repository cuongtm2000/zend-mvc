<?php

class AdminController extends BackEndController {

    public function actionCat() {
        $model_class = ucfirst($this->module->id) . 'Cat';
        $model = new $model_class;

        if (Yii::app()->request->getIsPostRequest()) {
            $model->activeItem(Yii::app()->request);
            $this->refresh();
        }

        $this->render('cat', array('listCats' => $model->listCats(0, null, 1)));
    }

    public function actionAddCat() {
        $model_class = ucfirst($this->module->id) . 'Cat';
        $model_form_class = $model_class . 'Form';
        $model = new $model_class;
        $model_form = new $model_form_class();

        if (isset($_POST[$model_form_class])) {
            $model_form->attributes = $_POST[$model_form_class];

            if ($model_form->validate()) {
                $model->saveRecord($model_form);
                $this->redirect(array('cat'));
            }
        }

        $this->render('addcat', array('model' => $model_form));
    }

    public function actionEditCat($id) {
        $model_class = ucfirst($this->module->id) . 'Cat';
        $model_form_class = $model_class . 'Form';
        $model_language_class = $model_class . 'Language';
        $model = new $model_class;
        $model_form = new $model_form_class();
        $model_language = new $model_language_class();

        //Load Edit
        $model_data = $model->loadEdit($id);
        $model_form['cat_id'] = $id;
        $model_form['pic_thumb'] = $model_data['pic_thumb'];
        $model_form['cat_hot'] = $model_data['cat_hot'];
        $model_form['cat_enable'] = $model_data['cat_enable'];

        $model_language_data = $model_language->loadEdit($id);
        foreach ($model_language_data as $value) {
            $model_form['cat_title' . $value['language_id']] = $value['cat_title'];
            $model_form['preview' . $value['language_id']] = $value['preview'];
            $model_form['tag' . $value['language_id']] = $value['tag'];
            $model_form['description' . $value['language_id']] = $value['description'];
        }

        if (isset($_POST[$model_form_class])) {
            $model_form->attributes = $_POST[$model_form_class];

            if ($model_form->validate()) {
                $model->saveRecord($model_form, $id);
                $this->redirect(array('cat'));
            }
        }

        $this->render('editcat', array('model' => $model_form));
    }

    public function actionDelcat($id) {
        Yii::app()->getModule($this->ID);
        $model = ucfirst($this->ID);
        $model_cat = $model . 'Cat';

        $model_cat_class = new $model_cat();
        $model_class = new $model();

        $data['infocat'] = $model_cat_class->getInfoCat($id); //Tên phân loại
        $data['numcat'] = $model_cat_class->countItemCat($id); //Số sản phẩm con
        $data['subcat'] = $model_cat_class->countSubcat($id);
        $data['listcat'] = $model_cat_class->listCats(0, null, 1, $id);

        if (Yii::app()->request->getIsPostRequest()) {
            $model_class->delItembyCat(Yii::app()->request);
            $this->redirect(array('cats'));
        }
        $this->render('delcat', $data);
    }

    public function actionUpcat($id) {
        $model_class = ucfirst($this->module->id) . 'Cat';
        $model = new $model_class;

        $cat_info = $model->getCatParent_CatOrder($id);
        //Next info
        $next_info = $model->getCatid_CatOrder_Next($cat_info['cat_parent_id'], $cat_info['cat_order']);

        if (isset($next_info['cat_id']) && isset($next_info['cat_order'])) {
            $model->updateUpDown($cat_info, $next_info, $id);
        }
        $this->redirect(array('cat'));
    }

    public function actionDowncat($id) {
        $model_class = ucfirst($this->module->id) . 'Cat';
        $model = new $model_class;

        $cat_info = $model->getCatParent_CatOrder($id);
        //Previous info
        $previous_info = $model->getCatid_CatOrder_Previous($cat_info['cat_parent_id'], $cat_info['cat_order']);

        if (isset($previous_info['cat_id']) && isset($previous_info['cat_order'])) {
            $model->updateUpDown($cat_info, $previous_info, $id);
        }
        $this->redirect(array('cat'));
    }

    public function actionIndex() {
        $model_class = ucfirst($this->module->id);
        $model = new $model_class;

        //Submit
        if (Yii::app()->request->getIsPostRequest()) {
            $model->activeItem(Yii::app()->request);
            $this->refresh();
        }

        $this->render('index', $model->listItemAdmin());
    }

    public function actionAdd() {
        Yii::app()->clientScript->registerScriptFile(Yii::app()->request->baseUrl . '/public/plugin/tiny_mce/tiny_mce.js');
        Yii::app()->clientScript->registerScriptFile(Yii::app()->request->baseUrl . '/public/plugin/tiny_mce/config.js');

        Yii::app()->getModule($this->ID);
        $model = ucfirst($this->ID);
        $module_cat = $model . 'Cat';

        $model_cat_class = new $module_cat();
        $model_class = new $model();

        if (isset($_POST[$model])) {
            $model_class->attributes = $_POST[$model];

            if ($model_class->validate()) {
                $model_class->save();
                $this->redirect(array('index'));
            }
        }

        $this->render('add', array('model' => $model_class, 'listItemsCat' => $model_cat_class->listCats()));
    }

    public function actionEdit($id) {
        Yii::app()->clientScript->registerScriptFile(Yii::app()->request->baseUrl . '/public/plugin/tiny_mce/tiny_mce.js');
        Yii::app()->clientScript->registerScriptFile(Yii::app()->request->baseUrl . '/public/plugin/tiny_mce/config.js');

        Yii::app()->getModule($this->ID);
        $model = ucfirst($this->ID);
        $module_cat = $model . 'Cat';

        $model_cat_class = new $module_cat();
        $model_class = new $model();
        $model_class = $model_class->loadEdit($id); //load form models

        if (isset($_POST[$model])) {
            $model_class->attributes = $_POST[$model];
            if ($model_class->validate()) {
                $model_class->save();
                $this->redirect(array('index'));
            }
        }

        $this->render('edit', array('model' => $model_class, 'listItemsCat' => $model_cat_class->listCats()));
    }

}