<?php
class Message_InboxController extends GLT_Controller_Action {
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
		
		if($this->_request->isPost()){
			foreach ($this->_data['ids'] as $value) {
				$message->delItem($value);
			}//    		echo '<pre>'; 			print_r($this->_data);		echo '</pre>';
    	}
    	
    		//paging
		$totalItem = $message->countAll();
		$paginator = new GLT_Paginator();
		$this->view->paginator = $paginator->createPaginator($totalItem, $this->_paginator);
    	
    	$this->view->allMess=$message->getAll($this->_data);
    	$this->view->unread=$message->countUnread();
	}
	public function viewAction() {
		$message=new Message_Model_Message();

		if(isset($this->_data['id']))
			$this->view->item=$message->getFromId($this->_data['id']);
		else
			$this->_redirect('message/inbox');
			
		if($this->_request->isPost()){
			if(isset($this->_data['id'])){
				$message->delItem($this->_data['id']);
				$this->_redirect('message/inbox');
			}
    	}
    	$this->view->unread=$message->countUnread();
			
	}

}