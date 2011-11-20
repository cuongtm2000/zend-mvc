<?php
class Video_IndexController extends GLT_Controller_Action {
    private $_data;
    private $_lang;
    private $_paginator;
    private $_config;
    
    public function init(){
        //Load Zend_Registry
        $this->_config = Zend_Registry::get("config");
        $this->_lang = Zend_Registry::get("lang");
        $this->view->lang = $this->_lang;
        
    	//Load function for module
		$this->_data = $this->_request->getParams();
		$this->_paginator['itemCountPerPage'] = $this->_config['sys_num_paging'];
        $this->_paginator['pageRange'] = $this->_config['sys_num_pagerange'];
        $this->_paginator['currentPage'] = $this->_request->getParam('page',1);
		$this->_data['paginator'] = $this->_paginator;
		
        $module = $this->_data['module']; //Get module
        $action = $this->_data['action']; //Get action
        
        $loadfunction = new Default_Model_Common();
        foreach($loadfunction->loadFunction($module) as $value){
            if($action == $value['action']){
                $load = new $value['model_load']();
                $this->view->$value['varname'] = $load->$value['function_load']();
            }
        }
    }
	public function indexAction() {
		$this->view->headScript()->appendFile($this->_request->getBaseUrl().TEMPLATE.'/js/jquery.prettyPhoto.js');
		$this->view->headLink()->appendStylesheet($this->_request->getBaseUrl().TEMPLATE.'/css/prettyPhoto.css');
		
		$item = new Video_Model_Video();
		$this->view->list_items_new = $item->listItemsNew($this->_data);
		
		//paging
		$totalItem = $item->countItem();
		$paginator = new GLT_Paginator();
		$this->view->paginator = $paginator->createPaginator($totalItem, $this->_paginator);
	}
    public function viewAction(){
		$record = new Video_Model_Video();
    	$result = $record->getDetail($this->_data['id']);
    	$this->view->productdetail = $result;

    	$this->view->productcat = $record->productByCatNoneid($result['dos_module_product_cat_cat_id'], $this->_data['id']);
    }

    public function catAction(){
		$this->view->headScript()->appendFile($this->_request->getBaseUrl().TEMPLATE.'/js/jquery.prettyPhoto.js');
		$this->view->headLink()->appendStylesheet($this->_request->getBaseUrl().TEMPLATE.'/css/prettyPhoto.css');
		
		$this->view->catid = $this->_data['id'];
		
    	$record = new Video_Model_Video();
    	$this->view->items = $record->itemByCat($this->_data['id']);
    	
    	$cat = new Video_Model_VideoCat();
    	$this->view->infocat = $cat->getCatbyId($this->_data['id']);
    }
}