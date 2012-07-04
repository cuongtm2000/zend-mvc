<?php
class GLT_View_Helper_Menubar extends Zend_View_Helper_Abstract{
    public function menubar(){
        return $this->folderList();
    }
    public function folderList(){
    	/*//Using cache
    	$loadcache = new GLT_Cache();
    	$cache = $loadcache->loadCache();
    	
    	if (!$cache->load('menubar')) {
            $cache->save($this->getModule(), 'menubar');
        }
        return $cache->load('menubar');*/
    	
    	return $this->getModule();
    }
    private function getModule(){
    	$db = Zend_Db_Table_Abstract::getDefaultAdapter();
        $stmt = $db->query('SELECT moduleid, module, moduleen, modulefr, url, target FROM dos_sys_modules ORDER BY position ASC LIMIT 0, 30');
        return $stmt->fetchAll();
    }
}