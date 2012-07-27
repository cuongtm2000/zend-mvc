<?php

class AdminController extends BackEndController {
    public function actionIndex() {
        $this->render('index');
    }

    public function actionModules() {
        $model = new Module();
        /*if (Yii::app()->request->getIsPostRequest()) {
            $model->activeItem(Yii::app()->request);
            $this->refresh();
        } */
        $this->render('modules', array('model' => $model->listItemAdmin()));
    }

    public function actionConfig() {
        $model = new Setting();
        $data = $model->getSetting();

        if (isset($_POST['Setting'])) {
            $model->attributes = $_POST['Setting'];
            if ($model->validate()) {
                if ($model->saveSetting()) {
                    Yii::app()->user->setFlash('message', 'Success! System Configuration updated successfully!');
                    $this->refresh();
                }
            }
        } else {
            $model->title = $data['title'];
            $model->default_language = $data['default_language'];
            $model->keywords = $data['keywords'];
            $model->description = $data['description'];
        }

        $this->render('config', array('model' => $model));
    }

    public function actionPosition($id) {
        Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl.'/js/jquery.tablednd.0.7.min.js');
        if (Yii::app()->request->getIsPostRequest()) {
            Position::model()->addItem($id, Yii::app()->request);
            $this->refresh();
        }
        $this->render('position', array('id' => $id, 'items' => Position::model()->getFuncByModule($id), 'listFunction' => Functions::model()->listFunction(), 'listPosition' => Position::model()->dataPosition()));
    }
}