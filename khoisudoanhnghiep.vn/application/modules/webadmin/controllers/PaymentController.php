<?php
class Webadmin_PaymentController extends GLT_Controller_Backend{
	protected $_arrParam;
	protected $_module;
	protected $_controller;
	protected $_currentController;
	protected $_config;
	protected $_paginator;
	
    public function init(){
    	//load language
        $this->view->lang = Zend_Registry::get("lang");
        //load config
        $this->_config = Zend_Registry::get("config");
        $this->view->config = $this->_config;
        
    	$this->_arrParam = $this->_request->getParams();
    	$this->_module = $this->_arrParam['module']; //Get module
        $this->_controller = $this->_arrParam['controller']; //Get controller
        $this->_currentController = '/' . $this->_arrParam['module'].'/' . $this->_arrParam['controller'];
        
        $this->_paginator['itemCountPerPage'] = $this->_config['sys_num_paging'];
        $this->_paginator['pageRange'] = $this->_config['sys_num_pagerange'];
        $this->_paginator['currentPage'] = $this->_request->getParam('page',1);
		$this->_arrParam['paginator'] = $this->_paginator;

        //List menu admin
        $listmenu = Zend_Registry::get("listmenu");
        $this->view->listmenu = $listmenu;
        
        //parse to view
        $this->view->currentController = $this->_currentController;
        $this->view->controller = $this->_controller;
        $this->view->selecthome = ' class="selected"';
    }
    public function indexAction(){
        $record = new Payment_Model_Payment();    
        //parse view
		$this->view->items = $record->listItem($this->_arrParam);
		//paging
		$totalItem = $record->countItem();
		$paginator = new GLT_Paginator();
		$this->view->paginator = $paginator->createPaginator($totalItem, $this->_paginator);
        //submit
        if($this->_request->isPost()){
        	$record->activeItem($this->_arrParam);
        	$this->_redirect('http://'.$_SERVER["SERVER_NAME"].$this->_request->getRequestUri());
        }
    }
    public function addAction(){
    	$this->view->headScript()->appendFile($this->_request->getBaseUrl().TEMPLATE_ADMIN.'/js/checklist.js');
    	$this->view->headScript()->appendFile($this->_request->getBaseUrl().'/public/plugin/ckeditor/ckeditor.js');
    	
    	$record = new Payment_Model_Payment();
	    if ($this->_request->isPost()) {
	   		$validate  = new Payment_Form_PaymentValidate($this->_arrParam);
    		if($validate->isError()==true){
    			$this->view->error = $validate->getError();
				$this->view->item = $validate->getData();
    		}else{
    			$record->addItem($this->_arrParam);
        		$this->_redirect($this->_module.'/'.$this->_controller);
    		}
        }
    }
    public function editAction(){
    	$this->view->headScript()->appendFile($this->_request->getBaseUrl().TEMPLATE_ADMIN.'/js/checklist.js');
    	$this->view->headScript()->appendFile($this->_request->getBaseUrl().'/public/plugin/ckeditor/ckeditor.js');
    	
    	$record = new Payment_Model_Payment();
		$this->view->item = $record->editItem($this->_arrParam);
		
		if ($this->_request->isPost()) {
			$validate  = new Payment_Form_PaymentValidate($this->_arrParam);
    		if($validate->isError()==true){
    			$this->view->error = $validate->getError();
				$this->view->item = $record->editItem($this->_arrParam);
    		}else{
    			$record->saveItem($this->_arrParam);
				$this->_redirect($this->_module.'/'.$this->_controller);
    		}
		}
    }
}