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
    }

    public function actionAdd() {
        $model = new Poll();

        Yii::app()->clientScript->registerCssFile(Yii::app()->theme->baseUrl . '/css/jquery-ui-1.8.14.custom.css');
        Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl . '/js/jquery-ui-1.8.14.custom.min.js');
        Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl . '/js/jquery.ui.datepicker-vi.js');


        if (isset($_POST['Poll'])) {
            $model->attributes = $_POST['Poll'];
            if ($model->save()) {
                $this->redirect(array('index'));
            }
        }
        $this->render('add', array('model' => $model));
    }

    public function actionEdit($id) {

        $model = new Poll();
        $model = $model->loadEdit($id);
        ;
        Yii::app()->clientScript->registerCssFile(Yii::app()->theme->baseUrl . '/css/jquery-ui-1.8.14.custom.css');
        Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl . '/js/jquery-ui-1.8.14.custom.min.js');
        Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl . '/js/jquery.ui.datepicker-vi.js');

        if (isset($_POST['Poll'])) {
            $model->attributes = $_POST['Poll'];
            if ($model->save()) {
                $this->redirect(array('index'));
            }            //var_dump($_POST['Poll']);
        }
        $this->render('edit', array('model' => $model));
    }

    /*public function actionUrl() {
        $model = new Urls();
        if (Yii::app()->request->getIsPostRequest()) {
            $model->addItem($this->module->id, Yii::app()->request);
            $this->refresh();
        }
        $this->render('url', array('items' => $model->listByModule($this->module->id)));
    }*/

}