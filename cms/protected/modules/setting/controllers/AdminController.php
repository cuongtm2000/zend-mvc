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

    public function actionPosition($id) {
        if (Yii::app()->request->getIsPostRequest()) {
            Position::model()->addItem($id, Yii::app()->request);
            $this->refresh();
        }
        $this->render('position', array('id' => $id, 'items' => Position::model()->getFuncByModule($id), 'listFunction' => Functions::model()->listFunction(), 'listPosition' => Position::model()->dataPosition()));
    }
}