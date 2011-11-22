<?php
class Message_OutboxController extends GLT_Controller_Action {
    private $_data;
    private $_lang;
    protected $_config;
    protected $_paginator;
    
    public function init(){
        //Load language
        $this->_lang = Zend_Registry::get("lang");
        $this->view->lang = $this->_lang;
        
        //Load config
        $this->_config = Zend_Registry::get("config");
        
        //Load function for module
		$this->_data = $this->_request->getParams();
        $module = $this->_data['module']; //Get module
        $action = $this->_data['action']; //Get action
        
        $loadfunction = new Default_Model_Common();
        foreach($loadfunction->loadFunction($module) as $value){
            if($action == $value['action']){
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
		
		
		$message=new Message_Model_Message();
		
		   		//paging
		$totalItem = $message->countAllSend();
		$paginator = new GLT_Paginator();
		$this->view->paginator = $paginator->createPaginator($totalItem, $this->_paginator);
		
		$this->view->unread=$message->countUnread();
    	$this->view->allMess=$message->getAllSend($this->_data);
	}
	public function viewAction() {
		$message=new Message_Model_Message();
		$this->view->unread=$message->countUnread();

		if(isset($this->_data['id']))
			$this->view->item=$message->getSendFromId($this->_data['id']);
		else
			$this->_redirect('message/out');
			
	}

}