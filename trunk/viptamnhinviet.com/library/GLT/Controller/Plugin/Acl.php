<?php
class GLT_Controller_Plugin_Acl extends Zend_Controller_Plugin_Abstract{
    protected $_auth;
    protected $_acl;
    
	public function preDispatch(Zend_Controller_Request_Abstract $request){
		$auth = Zend_Auth::getInstance();
        if ($auth->hasIdentity()) {
        	$acl = new GLT_Acl($auth);
        	$this->_auth= $auth;
        	$this->_acl=$acl;
        	
	        if($this->_auth->hasIdentity()){
	       		$role_id = $this->_auth->getIdentity()->user_group;
			     switch($role_id){
					case 'member':
			        	$role='member';
		            break;
					case 'user':
			        	$role='user';
		            break;
		            case 'administrator':
		            	$role='administrator';
		            break;    
				}
			}
	      	else {
				$role='guest';
	      	}
	      	$module = $request->getParam('module');
	      	$controller = $request->getParam('controller');
      		$action = $request->getParam('action');
      		
      		if($module == 'webadmin'){
      			if(!$this->_acl->isAllowed($role,$controller,$action)){
					$this->_request->setControllerName('error');
					$this->_request->setActionName('index');
				}
      		}
        }
    } 
}