<?php

class AdminController extends BackEndController {
    public function actionIndex() {
        $this->render('index');
    }

    public function actionDashboard() {
        //$this->render('index');
    }

    public function actionLogout() {
        Yii::app()->user->logout();
        $this->redirect(Yii::app()->homeUrl);
    }

    public function actionForgot() {
        //$this->render('index');
    }

    public function actionConfig() {
        $model = new Setting();
        $data = $model->getSetting();

        if (isset($_POST['Setting'])) {
            $model->attributes = $_POST['Setting'];
            if ($model->validate()) {
                if($model->saveSetting()){
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

    // Uncomment the following methods and override them if needed
    /*
   public function filters()
   {
       // return the filter configuration for this controller, e.g.:
       return array(
           'inlineFilterName',
           array(
               'class'=>'path.to.FilterClass',
               'propertyName'=>'propertyValue',
           ),
       );
   }

   public function actions()
   {
       // return external action classes, e.g.:
       return array(
           'action1'=>'path.to.ActionClass',
           'action2'=>array(
               'class'=>'path.to.AnotherActionClass',
               'propertyName'=>'propertyValue',
           ),
       );
   }
   */
}