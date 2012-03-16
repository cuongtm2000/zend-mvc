<?php

class AdminModule extends CWebModule {

    public function init() {
        // this method is called when the module is being created
        // you may place code here to customize the module or the application
        // import the module-level models and components
        $this->setImport(array(
            'admin.models.*',
            'admin.components.*',
        ));

        //Check user login use theme
        /* if (Yii::app()->user->isGuest) {
          Yii::app()->theme = 'admin-login-blue';
          } else {
          Yii::app()->clientScript->registerCoreScript('jquery');
          Yii::app()->theme = 'admin-blue';
          $this->layout = '//layouts/column1';
          } */

        Yii::app()->clientScript->registerCoreScript('jquery');
        Yii::app()->theme = 'admin-blue';
        $this->layout = '//layouts/column1';
    }

    public function beforeControllerAction($controller, $action) {
        if (parent::beforeControllerAction($controller, $action)) {
            //Setup lang
            $controller->lang = Langs::setLangs(1);
            return true;
        }
        else
            return false;
    }

}
