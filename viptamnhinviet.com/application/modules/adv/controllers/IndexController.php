<?php
class Adv_IndexController extends GLT_Controller_Action {
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
	public function indexAction() {
        $item = new Adv_Model_Adv();

        //list first record
        $this->view->item = $item->getListmenu($this->_data);
        
        //paging
		$totalItem = $item->countListItem();
		$paginator = new GLT_Paginator();
		$this->view->paginator = $paginator->createPaginator($totalItem, $this->_paginator);
		
        $this->webTitle($this->view->lang['adv']);
	}
}