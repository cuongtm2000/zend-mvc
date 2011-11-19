<?php
class Gallery_IndexController extends GLT_Controller_Action {
    private $_data;
    private $_lang;
    private $_paginator;
    private $_config;
    
    public function init(){
    	//Load Zend_Registry
        $this->_lang = Zend_Registry::get("lang");
        $this->view->lang = $this->_lang;
        $this->_config = Zend_Registry::get("config");
        
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
	public function catAction() {
		$this->view->headScript()->appendFile($this->_request->getBaseUrl().TEMPLATE.'/js/jquery.lightbox-0.5.js');
		$this->view->headLink()->appendStylesheet($this->_request->getBaseUrl().TEMPLATE.'/css/jquery.lightbox-0.5.css');
		
		$this->view->catid = $this->_data['id'];
		
		$cat = new Gallery_Model_GalleryCat();
		$this->view->infocat = $cat->getDetailCat($this->_data); //Get info cat
		$this->view->listsubcat = $cat->getListGallerybtCatID($this->_data);
		
		$item = new Gallery_Model_Gallery();
		$this->view->items = $item->listGallerysbyCat($this->_data);
		
		//paging
		$totalItem = $item->countItembyCatID($this->_data['id']);
		$paginator = new GLT_Paginator();
		$this->view->paginator = $paginator->createPaginator($totalItem, $this->_paginator);
	}
	public function indexAction() {
	}
}