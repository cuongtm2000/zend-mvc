<?php
class Webadmin_SetupController extends GLT_Controller_Backend {
	protected $_data;
	protected $_module;
	protected $_controller;
	protected $_action;
	
    public function init(){
        //Load function for module
		$this->_data = $this->_request->getParams();
		$this->_module = $this->_data['module']; //Get module
        $this->_controller = $this->_data['controller']; //Get controller
        $this->_action = $this->_data['action']; //Get action
        
        $loadfunction = new Default_Model_Common();
        foreach($loadfunction->loadFunction($this->_controller) as $value){
            if($this->_action == $value['action']){
                $load = new $value['model_load']();
                $this->view->$value['varname'] = $load->$value['function_load']();
            }
        }

        $this->view->lang = Zend_Registry::get("lang"); //load language
        
        //List menu
        $listmenu = Zend_Registry::get("listmenu");
        $this->view->listmenu = $listmenu;
        
        $this->view->selectsetup = ' class="selected"';
    }
    public function indexAction(){
        
    }
    public function menuAction(){
        $record = new Webadmin_Model_Setup();
        $this->view->listmodule = $record->getListmodule();
        
        if ($this->_request->isPost()) {
        	$validate = new Webadmin_Form_ValidateMenu($this->_data);
        	if($validate->isError()==TRUE){
        		//record Exists
        		$this->view->error = $validate->getError();
        	}else{
        		$record->addListmodule($this->_data);
        		$this->_redirect($this->_module.'/'.$this->_controller.'/'.$this->_action);
        	}
        }
    }
    public function langAction(){
        $record = new Webadmin_Model_Lang();
        $this->view->listlang = $record->getListlang();
        
        if ($this->_request->isPost()) {       	
        	$validate = new Webadmin_Form_ValidateLang($this->_data);
        	if($validate->isError()==TRUE){
        		//record Exists
        		$this->view->error = $validate->getError();
        	}else{
        		$record->addListlang($this->_data);
        		$this->_redirect($this->_module.'/'.$this->_controller.'/'.$this->_action);
        	}
        }
    }
    public function functionAction(){
    	$record = new Webadmin_Model_Function();
        $this->view->function = $record->listFunction();
        
        if ($this->_request->isPost()) {
        	$record->addFunction($this->_data);
        	$this->_redirect($this->_module.'/'.$this->_controller.'/'.$this->_action);
        }
    }
    public function configAction(){
    	$record = new Webadmin_Model_Config();
        $this->view->items = $record->listConfig();
        
        if ($this->_request->isPost()) {
        	$validate = new Webadmin_Form_ValidateConfig($this->_data);
        	if($validate->isError()==TRUE){
        		//record Exists
        		$this->view->error = $validate->getError();
        	}else{
        		$record->addConfig($this->_data);
        		$this->_redirect($this->_module.'/'.$this->_controller.'/'.$this->_action);
        	}
        }
    }
	public function webAction(){
		$record = new Webadmin_Model_Web();
        $this->view->items = $record->listWeb();
        
		if ($this->_request->isPost()) {
        	$validate = new Webadmin_Form_ValidateWeb($this->_data);
        	if($validate->isError()==TRUE){
        		//record Exists
        		$this->view->error = $validate->getError();
        	}else{
        		$record->addWeb($this->_data);
        		$this->_redirect($this->_module.'/'.$this->_controller.'/'.$this->_action);
        	}
        }
	}
}