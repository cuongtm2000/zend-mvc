<?php
class Experiences_IndexController extends GLT_Controller_Action {
    private $_data;
    private $_config;
    private $_paginator;
    
    public function init(){        
        //Load config
        $this->_config = Zend_Registry::get("config");
        
        //Load function for module
		$this->_data = $this->_request->getParams();
        
        //Paging
        $this->_paginator['itemCountPerPage'] = $this->_config['sys_num_paging'];
        $this->_paginator['pageRange'] = $this->_config['sys_num_pagerange'];
        $this->_paginator['currentPage'] = $this->_request->getParam('page',1);
		$this->_data['paginator'] = $this->_paginator;
        
        $loadfunction = new Default_Model_Common();
        foreach($loadfunction->loadFunction($this->_data['module']) as $value){
            if($this->_data['action'] == $value['action']){
                $load = new $value['model_load']();
                $this->view->$value['varname'] = $load->$value['function_load']();
            }
        }
    }
	public function catAction() {
		$cat = new Experiences_Model_ExperiencesCat();
		$this->view->detailcat = $cat->getDetailCat($this->_data);
		
		$item = new Experiences_Model_Experiences();
		$this->view->items = $item->listNewsbyCat($this->_data);
		
		//paging
		$totalItem = $item->countNewsbyCat($this->_data);
		$paginator = new GLT_Paginator();
		$this->view->paginator = $paginator->createPaginator($totalItem, $this->_paginator);

		$this->webTitle($this->view->detailcat['cat_title'.LANG].' - '.$this->view->lang[$this->_data['module']]);
	}
	public function indexAction() {
		$item = new Experiences_Model_Experiences();
		$this->view->experiences_new = $item->listItemNew($this->_data);
		
		//paging
		$totalItem = $item->countItem();
		$paginator = new GLT_Paginator();
		$this->view->paginator = $paginator->createPaginator($totalItem, $this->_paginator);
		
		$this->webTitle($this->view->lang[$this->_data['module']]);
	}
	public function viewAction(){
		$item = new Experiences_Model_Experiences();
		$detail = $item->detailItem($this->_data);
		$this->view->item = $detail;
		
		$this->webTitle($detail['title'.LANG]. ' - '.$this->view->lang[$this->_data['module']]);
	}
}