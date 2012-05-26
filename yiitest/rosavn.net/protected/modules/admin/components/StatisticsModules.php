<?php

class StatisticsModules {

    public function countItem($module_id, $url) {
		$module= array('about', 'training', 'food', 'programs', 'products', 'services', 'news', 'video', 'contact', 'learning');
        if (in_array($module_id,$module)) {
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