<?php

class DefaultController extends Controller{
    public function actionIndex(){
        /*$criteria = new CDbCriteria();

        if (isset($_POST['txt-search'])) {
            $q = $_POST['txt-search'];
            $criteria->compare('title', $q, true, 'OR');
        }

        $dataProvider = About::model()->findAll($criteria);

        $this->render(Yii::app()->session['template'] . '/index', array('dataProvider' => $dataProvider));*/
        $this->render('index');
    }
}