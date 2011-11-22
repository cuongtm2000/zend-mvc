<?php
class User_MapController extends GLT_Controller_Action {
    private $_data;    
    public function init(){
    	$auth = Zend_Auth::getInstance();
        if (!$auth->hasIdentity()) {
        	$this->_redirect('/');
        }
        //Load function for module
		$this->_data = $this->_request->getParams();

        $loadfunction = new Default_Model_Common();
        foreach($loadfunction->loadFunction($this->_data['module']) as $value){
            if($this->_data['action'] == $value['action']){
                $load = new $value['model_load']();
                $this->view->$value['varname'] = $load->$value['function_load']();
            }
        }
    }
	public function indexAction() {
		$this->view->headLink()->appendStylesheet($this->_request->getBaseUrl().TEMPLATE.'/css/jquery.treeview.css');
        $this->view->headScript()->appendFile($this->_request->getBaseUrl() . TEMPLATE.'/js/jquery.treeview.js');	
		
		//Get info login
    	$auth = Zend_Auth::getInstance();
    	if ($auth->hasIdentity()){
			$username = $auth->getIdentity()->username;
    	}
		
		$user=new User_Model_User();
		$this->view->tree=$user->createTree($username);
		$this->view->listUserQuanly= $user->getUser_Quanly($username);
//		echo '<pre>';		print_r($this->view->tree);	echo '</pre>';
	}
}