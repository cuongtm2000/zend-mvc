<?php
class Common {
    public static function setLanguage() {
        $languages = array('vi', 'en');
        $langDefault = 'vi';

        if (isset($_GET['lang']) && in_array($_GET['lang'], $languages)) {
            Yii::app()->language = $_GET['lang']; //Set language query
        } else {
            Yii::app()->language = $langDefault; //Set language default
        }
    }
}