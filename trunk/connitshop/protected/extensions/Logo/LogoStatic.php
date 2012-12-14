<?php

class LogoStatic extends CWidget {
    public $default_logo = true;

    public function run() {
        $this->publishAssets();
    }

    private function publishAssets() {
        $items = Logo::model()->getLogo();
        if ($items['banner_picture']) {
            echo '<a href="' . Yii::app()->baseUrl . Yii::app()->controller->setLangUrl() . '" title="Logo"><img src="' . Yii::app()->baseUrl . Yii::getPathOfAlias('filePathUpload') . '/image/logo/' . $items['banner_picture'] . '" alt="Logo" /></a>';
        } else if ($this->default_logo) {
            echo '<a href="' . Yii::app()->baseUrl . Yii::app()->controller->setLangUrl() . '" title="Logo"><img src="' . Yii::app()->theme->baseUrl . '/images/logo.png" alt="Logo" /></a>';
        }
    }
}