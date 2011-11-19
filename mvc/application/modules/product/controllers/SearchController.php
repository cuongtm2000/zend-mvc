<?php
class Product_SearchController extends GLT_Controller_Action {
    private $_data;
    private $_paginator;
    private $_config;
    
    public function init(){        
    	//Load Zend_Registry
        $this->_config = Zend_Registry::get("config");
        
    	//Load function for module
		$this->_data = $this->_request->getParams();
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
	public function indexAction() {
		if($this->_request->isPost()){
			$keyword=$this->_data['txtsearch'];
			if(trim($keyword)){
				$product=new Product_Model_Product();
				$this->view->item=$product->search($keyword);
			}
		}
		
		$this->webTitle($this->view->lang[$this->_data['module']]);
	}
  
}