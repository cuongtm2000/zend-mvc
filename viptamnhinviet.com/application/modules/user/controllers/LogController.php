<?php
class User_LogController extends GLT_Controller_Action {
    private $_data; 
   protected $_config;
    protected $_paginator;
    private $_username;
    
    public function init(){
    	$auth = Zend_Auth::getInstance();
        if (!$auth->hasIdentity()) {
        	$this->_redirect('/');
        }
        $this->_username = $auth->getIdentity()->username;
        
        //Load function for module
		$this->_data = $this->_request->getParams();
		   //Load config
        $this->_config = Zend_Registry::get("config");

        $loadfunction = new Default_Model_Common();
        foreach($loadfunction->loadFunction($this->_data['module']) as $value){
            if($this->_data['action'] == $value['action']){
                $load = new $value['model_load']();
                $this->view->$value['varname'] = $load->$value['function_load']();
            }
        }
        //Paging
        $this->_paginator['itemCountPerPage'] = $this->_config['sys_num_paging'];
        $this->_paginator['pageRange'] = $this->_config['sys_num_pagerange'];
        $this->_paginator['currentPage'] = $this->_request->getParam('page',1);
		$this->_data['paginator'] = $this->_paginator;
    }
	public function indexAction() {
		$log=new User_Model_Log();
		$this->view->listLog=$log->listAll($this->_data);
		
		$totalItem = $log->countAllOfUser();
		$paginator = new GLT_Paginator();
		$this->view->paginator = $paginator->createPaginator($totalItem, $this->_paginator);
		$user=new User_Model_User();
		$this->view->tk=$user->getTK($this->_username);
		$this->view->user=$this->_username;
		
	}
}