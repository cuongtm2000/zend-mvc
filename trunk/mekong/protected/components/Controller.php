<?php

class Controller extends CController {
    //public $layout = '//layouts/column-default';
    public $menu = array();
    public $breadcrumbs = array();

    public $setting = array();
    public $listLanguage = array();
    public $lang = array();

    public $description;

    public function init() {
        Yii::app()->theme = Templates::model()->getTemplateDefault(); //Setup template
        if (file_exists(dirname(Yii::app()->basePath) . DIRECTORY_SEPARATOR . 'themes' . DIRECTORY_SEPARATOR . Yii::app()->theme->name . DIRECTORY_SEPARATOR . 'views' . DIRECTORY_SEPARATOR . 'layouts' . DIRECTORY_SEPARATOR . 'column-default.php')) {
            $this->layout = '//layouts/column-default';
        }else{
            $this->layout = null;
        }

        $this->setting = Setting::model()->getSetting(); //Get Setting: title, keywords...
        $this->listLanguage = Language::model()->listLanguage(); //Get list language: vi, en
        Common::setLanguage(); //Setup language
        $this->lang = Lang::model()->getLang(Yii::app()->language);
    }

    public function setLangUrl() { //kiem tra lai xem co ai sai ko, ko thi xoa di
        $langDefault = Yii::app()->controller->setting['default_language'];
        if (Yii::app()->language == $langDefault) {
            return '';
        } else {
            return '/' . Yii::app()->language;
        }
    }

    public function setUrlModule($module = null) {
        return $this->setLangUrl() . '/' . Urls::model()->getPatternModule(($module) ? $module : $this->module->id);
    }

    public function setDescription($value = null) {
        if ($value) {
            $this->description = $value;
        } else {
            $this->description = MenusLanguage::model()->getDescriptionByUrl(Urls::model()->getPatternModule($this->module->id));
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
            if (file_exists(dirname(Yii::app()->basePath) . DIRECTORY_SEPARATOR . 'themes' . DIRECTORY_SEPARATOR . Yii::app()->theme->name . DIRECTORY_SEPARATOR . 'views' . DIRECTORY_SEPARATOR . $value['hoiit_modules_module_id'] . DIRECTORY_SEPARATOR . $value['function_value'] . '.php')) {
                //If exist file in themes
                $this->renderPartial('//' . $value['hoiit_modules_module_id'] . '/' . $value['function_value'], $data);
            } else if (file_exists(Yii::app()->basePath . DIRECTORY_SEPARATOR . 'views' . DIRECTORY_SEPARATOR . $value['hoiit_modules_module_id'] . DIRECTORY_SEPARATOR . $value['function_value'] . '.php')) {
                //User file in view protected
                $this->renderPartial('//' . $value['hoiit_modules_module_id'] . '/' . $value['function_value'], $data);
            } else {
                //Use file in module
                $this->renderPartial('application.modules.' . $value['hoiit_modules_module_id'] . '.views.' . $value['function_value'], $data);
            }
        }
    }
}