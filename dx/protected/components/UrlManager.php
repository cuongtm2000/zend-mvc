<?php
class UrlManager extends CUrlManager {
    protected function processRules() {
        $data = array();
        $command = Yii::app()->db->createCommand("SELECT url_pattern, url_route, url_param FROM hoiit_urls ORDER BY url_sort ASC");
        $urlRules = $command->queryAll();

        foreach ($urlRules as $value) {
            if($value['url_param']){
                $params = explode('|', $value['url_param']);
                foreach($params as $param){				
					$strs = explode('=>', $param);
                    $data[$strs[0]] = $strs[1];
                }
            }

			//'(gioi-thieu)' => $module_name . '/default/index', //index
            //'(gioi-thieu)/<id:[-a-z0-9]+>' => array($module_name . '/default/view', 'urlSuffix' => '.html'), //view
            $this->addRules(array($value['url_pattern'] => ($value['url_param']) ? array_merge(array($value['url_route']), $data) : array($value['url_route'])));
        }
        parent::processRules();
    }
}