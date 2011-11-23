<?php
class Studies_IndexController extends GLT_Controller_Action {
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
        
        //Paging
        $this->_paginator['itemCountPerPage'] = $this->_config['sys_num_paging'];
        $this->_paginator['pageRange'] = $this->_config['sys_num_pagerange'];
        $this->_paginator['currentPage'] = $this->_request->getParam('page',1);
		$this->_data['paginator'] = $this->_paginator;
        
        $loadfunction = new Default_Model_Common();
        foreach($loadfunction->loadFunction($module) as $value){
            if($action == $value['action']){
                $load = new $value['model_load']();
                $this->view->$value['varname'] = $load->$value['function_load']();
            }
        }
    }
	public function catAction() {
		$cat = new Studies_Model_StudiesCat();
		$this->view->detailcat = $cat->getDetailCat($this->_data);
		
		$item = new Studies_Model_Studies();
		$this->view->items = $item->listNewsbyCat($this->_data);
		
		//paging
		$totalItem = $item->countNewsbyCat($this->_data);
		$paginator = new GLT_Paginator();
		$this->view->paginator = $paginator->createPaginator($totalItem, $this->_paginator);
	}
	public function indexAction() {
		$this->view->headTitle()->prepend($this->_lang[$this->_data['module']]);
		
		$item = new Studies_Model_Studies();
		$this->view->items = $item->listItemnew($this->_data);
		
		//paging
		$totalItem = $item->countItemnew();
		$paginator = new GLT_Paginator();
		$this->view->paginator = $paginator->createPaginator($totalItem, $this->_paginator);
	}
	public function viewAction(){
		$item = new Studies_Model_Studies();
		$detail = $item->detailItem($this->_data);
		$this->view->item = $detail;
		
		$this->view->headTitle()->prepend($detail['title'.LANG]. ' - '.$this->_lang[$this->_data['module']]);
	}
}