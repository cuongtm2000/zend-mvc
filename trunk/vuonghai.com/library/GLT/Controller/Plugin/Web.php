<?php
class GLT_Controller_Plugin_Web extends Zend_Controller_Plugin_Abstract{
    public function preDispatch(Zend_Controller_Request_Abstract $request){
        /*//Using cache
    	$loadcache = new GLT_Cache();
    	$cache = $loadcache->loadCache();
    	
    	if (!$cache->load('web')) {
            $cache->save($this->getWeb(), 'web');
        }
        Zend_Registry::set("web", $cache->load('web'));*/
    	
    	Zend_Registry::set("web", $this->getWeb());
    }
    private function getWeb(){
    	$web = array();
    	$db = Zend_Db_Table_Abstract::getDefaultAdapter();
        $stmt = $db->query('SELECT web_name, web_value FROM dos_sys_webs');
        $data = $stmt->fetchAll();
        foreach($data as $value){
            $web[$value['web_name']] = $value['web_value'];
        }
        return $web;
    }
}