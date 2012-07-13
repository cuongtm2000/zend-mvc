<?php
class Common {
    public static function setLanguage() {
        $langDefault = Yii::app()->controller->setting['default_language'];
        $languages = array();
        foreach (Yii::app()->controller->listLanguage as $key => $value) {
            $languages[] = $key;
        }

        if (isset($_GET['lang']) && in_array($_GET['lang'], $languages)) {
            Yii::app()->language = $_GET['lang']; //Set language query
        } else {
            Yii::app()->language = $langDefault; //Set language default
        }
    }
}