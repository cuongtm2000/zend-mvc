<?php
class GLT_Controller_Plugin_Config extends Zend_Controller_Plugin_Abstract{
    public function preDispatch(Zend_Controller_Request_Abstract $request){
        /*//Using cache
    	$loadcache = new GLT_Cache();
    	$cache = $loadcache->loadCache();
    	
    	if (!$cache->load('config')) {
            $cache->save($this->getConfig(), 'config');
        }
        Zend_Registry::set("config", $cache->load('config'));*/
    	
    	Zend_Registry::set("config", $this->getConfig());
    }
    public function getConfig(){
    	$config = array();
    	$db = Zend_Db_Table_Abstract::getDefaultAdapter();
        $stmt = $db->query('SELECT config_name, config_value FROM dos_sys_configs');
        $data = $stmt->fetchAll();
        foreach($data as $value){
            $config[$value['config_name']] = $value['config_value'];
        }
        return $config;
    }
}