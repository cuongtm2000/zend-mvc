<?php

class StatisticsModules {

    public function countItem($module_id, $url) {
        if ($module_id == 'about' || $module_id == 'products' || $module_id == 'services' || $module_id == 'news' || $module_id == 'contact') {
            Yii::app()->getModule($module_id);
        }

        if (strpos($url, '/cats') === false) {
            $module_class = ucfirst($module_id);
        } else {
            $module_class = ucfirst($module_id) . 'Cat'; //for Cat
        }
        $model = new $module_class;
        return $model->countItemByUser();
    }

}