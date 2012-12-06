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
        $model_class = ucfirst($this->module->id);
        $model = new $model_class();

        if (isset($_POST[$model_class])) {
            $model->attributes = $_POST[$model_class];
            if ($model->validate()) {
                $model->save();
                $this->redirect(array('index'));
            }
        }

        $this->render('add', array('model' => $model));
    }

    public function actionEdit($id) {
        $model_class = ucfirst($this->module->id);
        $model = new $model_class();
        $model = $model->loadEdit($id);

        if (isset($_POST[$model_class])) {
            $model->attributes = $_POST[$model_class];
            if ($model->validate()) {
                $model->save();
                $this->redirect(array('index'));
            }
        }

        $this->render('edit', array('model' => $model));
    }
}