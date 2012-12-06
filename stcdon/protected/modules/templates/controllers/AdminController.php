<?php

class AdminController extends BackEndController {
    public function actionIndex() {
        $model_class = ucfirst($this->module->id);
        $model = new $model_class();

        $this->render('index', $model->listItemAdmin());
    }

    public function actionEdit($id) {
        $model = new Templates();
        $model = $model->loadEdit($id);

        if (isset($_POST['Templates'])) {
            $model->attributes = $_POST['Templates'];
            if ($model->validate()) {
                $model->save();
                $this->redirect(array('index'));
            }
        }

        $this->render('edit', array('model' => $model));
    }
}