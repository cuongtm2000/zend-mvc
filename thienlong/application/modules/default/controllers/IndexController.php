<?php
class IndexController extends GLT_Controller_Action {
	private $_data;
	private $_paginator;
	private $_config;
    
	public function init(){
		//Load config
        $this->_config = Zend_Registry::get("config");
        
    	//Load function for module
		$this->_data = $this->_request->getParams();
		
		//Paging
        $this->_paginator['itemCountPerPage'] = 1;//$this->_config['sys_num_paging'];
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
		$this->webTitle($this->view->lang['default']);
	}
}