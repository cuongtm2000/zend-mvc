<?php
class Bootstrap extends Zend_Application_Bootstrap_Bootstrap {
    public function _initTemplate(){
        define('TEMPLATE', TEMPLATE_DIR.TEM_INDEX);
        define('TEMPLATE_ADMIN', TEMPLATE_DIR.TEM_ADMIN);
    }
	protected function _initDb(){
		$optionResources = $this->getOption('resources');
		$dbOption = $optionResources['db'];
		$dbOption['params']['host'] = 'localhost';
		$dbOption['params']['username'] = 'root';
		$dbOption['params']['password'] = '';
		$dbOption['params']['dbname'] = 'thienlong';
		
		$adapter = $dbOption['adapter'];
		$config = $dbOption['params'];
		
		$db = Zend_Db::factory($adapter,$config);
		$db->setFetchMode(Zend_Db::FETCH_ASSOC);
		$db->query("SET NAMES 'utf8'");
		$db->query("SET CHARACTER SET 'utf8'");
		
		Zend_Registry::set('connectDb',$db);
		Zend_Db_Table::setDefaultAdapter($db);
		return $db;
	}
	public function _initFilter(){
        HTMLPurifier_Bootstrap::registerAutoload();
        $config = HTMLPurifier_Config::createDefault();
        $config->set('Attr.EnableID',true);
        $config->set('HTML.Strict',true);
        Zend_Registry::set('xss',new HTMLPurifier($config));
    }
	public function _initCache(){
		//Caching
		$frontendOptions = array('lifetime' => 25200, 'automatic_serialization'	=> true);
		$backendOptions  = array('cache_dir' => APPLICATION_PATH . '/cache');
		$cache = Zend_Cache::factory('Core', 'File', $frontendOptions, $backendOptions);
		//Cache table metadata
		Zend_Db_Table_Abstract::setDefaultMetadataCache($cache);
	}
	public function _initCachePlugin(){
		//Plugin Loader caching 
		$classFileIncCache = APPLICATION_PATH .  '/cache/pluginLoaderCache.php'; 
		if (file_exists($classFileIncCache)) { 
			include_once $classFileIncCache; 
		} 
		Zend_Loader_PluginLoader::setIncludeFileCache($classFileIncCache); 
	}
}
