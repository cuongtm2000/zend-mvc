<?php

class AdminController extends BackEndController {
    public function actionIndex() {
        $model_class = ucfirst($this->module->id);
        $model = new $model_class();

        //Submit
        if (Yii::app()->request->getIsPostRequest()) {
            $model->activeItem(Yii::app()->request);
            $this->refresh();
        }
        $this->render('index', $model->listItemAdmin());

        //$languages = Language::model()->findAll();
        //$abouts = About::model()->findAll();

        /*foreach ($languages as $project) {
            echo $project->name . " has " . count($project->users) . " users. They are:<br />";
            foreach ($project->users as $user) {
                echo $user->username . "<br />";
            }
            echo "<br />";
        }

        echo "<hr />";*/

        /*foreach ($abouts as $user) {
            echo $user->record_id . " is associated with " . count($user->Language) . " Language. They are:<br />";
            foreach ($user->Language as $project) {
                echo $project->language_name . "<br />";
            }
            echo "<br />";
        }*/

        //$viewer = About::model()->findByPk(1);
        //var_dump($viewer->AboutLanguage['vi']['title']);

    }

    public function actionAdd() {
        $model_class = ucfirst($this->module->id);
        $model_form_class = $model_class . 'Form';
        $model = new $model_class();
        $model_form = new $model_form_class();

        /*Yii::app()->clientScript->registerCssFile(Yii::app()->theme->baseUrl.'/css/tipsy.css');
        Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl.'/js/jquery.tipsy.js');
        Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl.'/js/jquery.tooltip.tipsy.js');*/

        Yii::app()->clientScript->registerScriptFile(Yii::app()->request->baseUrl . '/public/plugin/tiny_mce/tiny_mce.js');
        Yii::app()->clientScript->registerScriptFile(Yii::app()->request->baseUrl . '/public/plugin/tiny_mce/config.js');

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
        Yii::app()->clientScript->registerScriptFile(Yii::app()->request->baseUrl . '/public/plugin/tiny_mce/tiny_mce.js');
        Yii::app()->clientScript->registerScriptFile(Yii::app()->request->baseUrl . '/public/plugin/tiny_mce/config.js');

        $model_class = ucfirst($this->module->id);
        $model_form_class = $model_class . 'Form';
        $model_language_class = $model_class . 'Language';
        $model = new $model_class();
        $model_form = new $model_form_class();
        $model_language = new $model_language_class();

        //Load Edit
        $model_data = $model->loadEdit($id);
        $model_form['hot'] = $model_data['hot'];
        $model_form['enable'] = $model_data['enable'];

        $model_language_data = $model_language->loadEdit($id);
        foreach ($model_language_data as $key => $value) {
            $model_form['title' . $value['language_id']] = $value['title'];
            $model_form['content' . $value['language_id']] = $value['content'];
            $model_form['tag' . $value['language_id']] = $value['tag'];
            $model_form['description' . $value['language_id']] = $value['description'];
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

    /*public function actionUrl() {
        Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl . '/js/jquery.tablednd.0.7.min.js');
        $model = new Urls();
        if (Yii::app()->request->getIsPostRequest()) {
            $model->addItem($this->module->id, Yii::app()->request);
            $this->refresh();
        }
        $this->render('url', array('items' => $model->listByModule($this->module->id)));
    }*/
}