<?php

class DefaultController extends Controller {

    public function actionIndex() {
		//$this->setSeoPage(); //set Seo page

        $this->render(Yii::app()->session['template'] . '/index');
    }

}