<?php

class DefaultController extends Controller {

    public function actionIndex() {
        $this->layout = '//layouts/column-3';

		$this->setSeoPage(); //set Seo page
        $this->render(Yii::app()->session['template'] . '/index');
    }

}