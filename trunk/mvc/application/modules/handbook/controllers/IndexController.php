<?php
class Handbook_IndexController extends GLT_Controller_Action {
    private $_data;
    private $_config;
    private $_paginator;
    
    public function init(){
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
		$cat = new Handbook_Model_HandbookCat();
		$this->view->detailcat = $cat->getDetailCat($this->_data);
		
		$item = new Handbook_Model_Handbook();
		$this->view->items = $item->listNewsbyCat($this->_data);
		
		//paging
		$totalItem = $item->countNewsbyCat($this->_data);
		$paginator = new GLT_Paginator();
		$this->view->paginator = $paginator->createPaginator($totalItem, $this->_paginator);
		
		$this->webTitle($this->view->detailcat['cat_title'].' - '.$this->view->lang['handbook']);
	}
	public function indexAction(){
		$this->webTitle($this->view->lang['handbook']);
	}
	public function viewAction(){
		$item = new Handbook_Model_Handbook();
		$detail = $item->detailItem($this->_data);
		$this->view->item = $detail;
		
		$this->webTitle($detail['title'.LANG].' - '.$this->view->lang['handbook']);
	}
}