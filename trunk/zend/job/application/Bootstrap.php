<?php
class Bootstrap extends Zend_Application_Bootstrap_Bootstrap {

	public function _initTemplate(){
		define('TEMPLATE', TEMPLATE_DIR.TEM_INDEX);
    }
	protected function _initSession(){
		Zend_Session::start();
	}
	protected function _initLocale(){
		$locale = new Zend_Locale('vi_VN');
		Zend_Registry::set('Zend_Locale',$locale);	
	}
	protected function _initDb(){
		$optionResources = $this->getOption('resources');
		$dbOption = $optionResources['db'];
		$dbOption['params']['username'] = 'root';
		$dbOption['params']['password'] = '';
		$dbOption['params']['dbname'] = 'job';
		
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
	protected function _initLoadRouter(){
		/*$config = new Zend_Config_Ini(APPLICATION_PATH . '/configs/app-router.ini','setup-router');
		$objRouter = new Zend_Controller_Router_Rewrite();
		$router = $objRouter->addConfig($config,'routers');
		
		$front = Zend_Controller_Front::getInstance();
		$front->setRouter($router);*/
	}
	public function _initFilter(){
        HTMLPurifier_Bootstrap::registerAutoload();
        $config = HTMLPurifier_Config::createDefault();
        $config->set('Attr.EnableID',true);
        $config->set('HTML.Strict',true);
        Zend_Registry::set('xss',new HTMLPurifier($config));
    }
}