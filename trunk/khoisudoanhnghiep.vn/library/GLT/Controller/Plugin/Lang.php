<?php
class GLT_Controller_Plugin_Lang extends Zend_Controller_Plugin_Abstract{
    public function preDispatch(Zend_Controller_Request_Abstract $request){
        $config = new Zend_Config_Ini(APPLICATION_PATH . '/configs/app-router.ini');
        $langdefault = $config->routes->language->defaults->language;

        $lang = $this->getRequest()->getParam('language');
        $langurl = '';
        if($lang == $langdefault || $lang == ''){
            $lang = '';
            $langurl = '';
        }else{
            //$lang = $lang; de y code nay
            $langurl = $lang.'/';
        }

        define('LANG', $lang);
        define('LANGURL', $langurl);
        $this->chooseCache();
    }
    private function chooseCache(){
    	/*//Using cache
    	$loadcache = new GLT_Cache();
    	$cache = $loadcache->loadCache();
    	
    	if (!$cache->load('lang')) {
            $cache->save($this->getLanguage(), 'lang');
        }
        Zend_Registry::set("lang", $cache->load('lang'));*/
        Zend_Registry::set("lang", $this->getLanguage());
    }
    private function getLanguage(){
    	$lang = array();
        $db = Zend_Db_Table_Abstract::getDefaultAdapter();
        $stmt = $db->query('SELECT lang_name, lang'.LANG.' FROM dos_sys_langs');
        $data = $stmt->fetchAll();
        foreach($data as $value){
            $lang[$value['lang_name']] = html_entity_decode($value['lang'.LANG]);
        }
        return $lang;
    }
}