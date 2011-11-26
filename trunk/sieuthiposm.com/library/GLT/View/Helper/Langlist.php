<?php
class GLT_View_Helper_Langlist extends Zend_View_Helper_Abstract{
    public function langlist(){
        $config = new Zend_Config_Ini(APPLICATION_PATH . '/configs/application.ini', 'production');
        $langinput = $config->resources->router->routes->language->reqs->language;
        $langdefault = $config->resources->router->routes->language->defaults->language;
        
        $start = '^(';
        $end = ')$';
        $substr = substr($langinput, strlen($start)+strpos($langinput, $start), (strlen($langinput) - strpos($langinput, $end))*(-1));
        
        return explode("|", str_replace($langdefault, '', $substr));
    }
}