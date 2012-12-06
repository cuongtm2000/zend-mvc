<?php

class AdminController extends BackEndController {
    public function actionIndex() {
        $this->layout = '//layouts/column-2';
        Yii::app()->clientScript->registerScript('', '$("#alexa").load("' . Yii::app()->baseUrl . '/admin/rank");', CClientScript::POS_READY);

        $this->render('index');
    }

    public function actionRank() {
        $test = simplexml_load_file('http://data.alexa.com/data?cli=10&dat=s&url=' . $_SERVER['HTTP_HOST']);
        echo '<strong>' . number_format(intval($test->SD[1]->POPULARITY['TEXT'])) . '</strong> - ';
        echo $test->SD[1]->COUNTRY['CODE'] . ': ';
        echo '<strong>' . number_format(intval($test->SD[1]->COUNTRY['RANK'])) . '</strong>';
    }

    public function actionLogout() {
        Yii::app()->user->logout();
        $this->redirect(Yii::app()->homeUrl);
    }
}