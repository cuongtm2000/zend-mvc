<?php
class GLT_Controller_Plugin_Permission extends Zend_Controller_Plugin_Abstract{
	public function preDispatch(Zend_Controller_Request_Abstract $request){
		$module = array('job');
		$moduleName = $this->_request->getModuleName();
		if(in_array($moduleName, $module)){
			$auth = Zend_Auth::getInstance();
			if (!$auth->hasIdentity()) {
	        	$this->_response->setRedirect(Zend_Controller_Front::getInstance()->getBaseUrl().'/login/');
	        	
	        }
		}
	}
}