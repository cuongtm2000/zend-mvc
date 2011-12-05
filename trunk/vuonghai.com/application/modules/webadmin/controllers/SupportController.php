<?php
class Webadmin_SupportController extends GLT_Controller_Backend{
	protected $_data;
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
        
    	$this->_data = $this->_request->getParams();
    	$this->_module = $this->_data['module']; //Get module
        $this->_controller = $this->_data['controller']; //Get controller
        $this->_currentController = '/' . $this->_data['module'].'/' . $this->_data['controller'];
        
        $this->_paginator['itemCountPerPage'] = $this->_config['sys_num_paging'];
        $this->_paginator['pageRange'] = $this->_config['sys_num_pagerange'];
        $this->_paginator['currentPage'] = $this->_request->getParam('page',1);
		$this->_data['paginator'] = $this->_paginator;

        //List menu admin
        $listmenu = Zend_Registry::get("listmenu");
        $this->view->listmenu = $listmenu;
        
        //parse to view
        $this->view->currentController = $this->_currentController;
        $this->view->controller = $this->_controller;
        $this->view->selecthome = ' class="selected"';
    }
    public function indexAction(){
		$record = new Support_Model_Support();
		$this->view->items = $record->getListmenu();
		
		if ($this->_request->isPost()) {
			$record->addItem($this->_data);
			$this->_redirect($this->_module.'/'.$this->_controller);
		}
    }
}