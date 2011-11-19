<?php
class GLT_Controller_Plugin_Permission extends Zend_Controller_Plugin_Abstract{
	public function preDispatch(Zend_Controller_Request_Abstract $request){
		$module = array('webadmin');
		$moduleName = $this->_request->getModuleName();
		if(in_array($moduleName, $module)){
			$auth = Zend_Auth::getInstance();
	        if (!$auth->hasIdentity()) {
	        	$action = $this->_request->getActionName();
	        	if(($action != 'login') && ($action != 'forgot')){
	        		$this->_response->setRedirect(Zend_Controller_Front::getInstance()->getBaseUrl().'/webadmin/index/login');
	        	}
	        }else{
	        	//Start layout
	            $layoutPath = PUBLIC_PATH .'/templates' . TEM_ADMIN;
	            $option = array ('layout' => 'index', 'layoutPath' => $layoutPath );
	            Zend_Layout::startMvc ( $option );
	        }
		}
	}
}