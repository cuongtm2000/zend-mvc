<?php
class GLT_View_Helper_Langlist extends Zend_View_Helper_Abstract{
    public function langlist(){
        $config = new Zend_Config_Ini(APPLICATION_PATH . '/configs/app-router.ini', 'lang');
        $langinput = $config->routes->language->reqs->language;
        
       // $langinput = str_replace("kr", "fr", $langinput);
                
        $langdefault = $config->routes->language->defaults->language;
        //var_dump($langdefault);
        $start = '^(';
        $end = ')$';
        $substr = substr($langinput, strlen($start)+strpos($langinput, $start), (strlen($langinput) - strpos($langinput, $end))*(-1));
        
        return explode("|", str_replace($langdefault, '', $substr));
    }
}