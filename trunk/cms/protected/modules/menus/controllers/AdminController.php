<?php

class AdminController extends BackEndController {
    public function actionIndex() {
        $model_class = ucfirst($this->module->id);
        $model = new $model_class;

        if (Yii::app()->request->getIsPostRequest()) {
            $model->activeItem(Yii::app()->request);
            $this->refresh();
        }

        $this->render('index', array('listCats' => $model->listCats(0, null, 1)));
    }

    public function actionUp($id) {
        $model_class = ucfirst($this->module->id);
        $model = new $model_class;

        $cat_info = $model->getCatParent_CatOrder($id);
        //Next info
        $next_info = $model->getCatid_CatOrder_Next($cat_info['parent_id'], $cat_info['menu_sort']);

        if (isset($next_info['menu_id']) && isset($next_info['menu_sort'])) {
            $model->updateUpDown($cat_info, $next_info, $id);
        }
        $this->redirect(array('index'));
    }

    public function actionDown($id) {
        $model_class = ucfirst($this->module->id);
        $model = new $model_class;

        $cat_info = $model->getCatParent_CatOrder($id);
        //Previous info
        $previous_info = $model->getCatid_CatOrder_Previous($cat_info['parent_id'], $cat_info['menu_sort']);

        if (isset($previous_info['menu_id']) && isset($previous_info['menu_sort'])) {
            $model->updateUpDown($cat_info, $previous_info, $id);
        }
        $this->redirect(array('index'));
    }

    public function actionAdd() {
        $model_class = ucfirst($this->module->id);
        $model_form_class = $model_class . 'Form';
        $model = new $model_class();
        $model_form = new $model_form_class();

        if (isset($_POST[$model_form_class])) {
            $model_form->attributes = $_POST[$model_form_class];
            if ($model_form->validate()) {
                $model->saveRecord($model_form);
                $this->redirect(array('index'));
            }
        }
        $this->render('add', array('model' => $model_form));
    }

    public function actionEdit($id) {
        $model_class = ucfirst($this->module->id);
        $model_form_class = $model_class . 'Form';
        $model_language_class = $model_class . 'Language';
        $model = new $model_class();
        $model_form = new $model_form_class();
        $model_language = new $model_language_class();

        //Load Edit
        $model_data = $model->loadEdit($id);
        $model_form['parent_id'] = $model_data['parent_id'];
        $model_form['menu_type'] = $model_data['menu_type'];
        $model_form['menu_target'] = $model_data['menu_target'];
        $model_form['menu_homepage'] = $model_data['menu_homepage'];
        $model_form['menu_activated'] = $model_data['menu_activated'];

        $model_language_data = $model_language->loadEdit($id);
        foreach($model_language_data as $value){
            $model_form['menu_name'.$value['language_id']] = $value['menu_name'];
            $model_form['menu_url'.$value['language_id']] = $value['menu_url'];
            $model_form['menu_description'.$value['language_id']] = $value['menu_description'];
        }

        if (isset($_POST[$model_form_class])) {
            $model_form->attributes = $_POST[$model_form_class];
            if ($model_form->validate()) {
                $model->saveRecord($model_form, $id);
                $this->redirect(array('index'));
            }
        }
        $this->render('edit', array('model' => $model_form));
    }
}