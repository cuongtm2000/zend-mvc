<?php

class Controller extends CController {
    public $menu = array();
    public $breadcrumbs = array();

    public $setting = array();
    public $listLanguage = array();

    public function init() {
        Yii::app()->theme = Template::model()->getTemplateDefault(); //Setup template

        $this->setting = Setting::model()->getSetting(); //Get Setting: title, keywords...
        $this->listLanguage = Language::model()->listLanguage(); //Get list language: vi, en

        Common::setLanguage(); //Setup language
    }

    public function setLangUrl() {
        $langDefault = Yii::app()->controller->setting['default_language'];
        if (Yii::app()->language == $langDefault) {
            return '';
        } else {
            return '/' . Yii::app()->language;
        }
    }

    public function getPosition($position) {
        $data = array();
        $positions = Position::model()->setPosition($position, isset($this->module->id) ? $this->module->id : null);

        foreach ($positions as $value) {
            if ($value['module_type'] == 1) {
                $data[$value['function_value']] = $value['function_name']::model()->$value['function_call']();
            } else {
                $data[$value['function_value']] = $this->widget('ext.' . $value['function_class'])->$value['function_call']();
            }
            //($value['functiol_call']) ? $data[$value['function_value']] = $value['function_name']::model()->$value['functiol_call']() : null;
            if (file_exists(Yii::app()->basePath . DIRECTORY_SEPARATOR . 'modules' . DIRECTORY_SEPARATOR . $value['hoiit_modules_module_id'] . DIRECTORY_SEPARATOR . 'views' . DIRECTORY_SEPARATOR . $value['function_value'] . '.php')) {
                $this->renderPartial('application.modules.' . $value['hoiit_modules_module_id'] . '.views.' . $value['function_value'], $data);
            } else {
                $this->renderPartial('//' . $value['hoiit_modules_module_id'] . '/' . $value['function_value'], $data);
            }
        }
    }
}