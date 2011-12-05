<?php
class Webadmin_UserController extends GLT_Controller_Backend {
	private $_data;
    protected $_config;
    protected $_paginator;
	
	
    public function init(){

    	//Load config
        $this->_config = Zend_Registry::get("config");
        //Load function for module
		$this->_data = $this->_request->getParams();
        $controller = $this->_data['controller']; //Get controller
        $action = $this->_data['action']; //Get action
        
        $loadfunction = new Default_Model_Common();
        foreach($loadfunction->loadFunction($controller) as $value){
            if($action == $value['action']){
                $load = new $value['model_load']();
                $this->view->$value['varname'] = $load->$value['function_load']();
            }
        }

        $this->view->lang = Zend_Registry::get("lang"); //load language
        
        //List menu
        $listmenu = Zend_Registry::get("listmenu");
        $this->view->listmenu = $listmenu;
        
        $this->view->selectaccount = ' class="selected"';
             //Paging
        $this->_paginator['itemCountPerPage'] = 10;//$this->_config['sys_num_paging'];
        $this->_paginator['pageRange'] = $this->_config['sys_num_pagerange'];
        $this->_paginator['currentPage'] = $this->_request->getParam('page',1);
		$this->_data['paginator'] = $this->_paginator;
    }
    public function indexAction(){
    	$user=new Webadmin_Model_User();
    	$province = new Default_Model_Provinces();
    	
    
    	if($this->_request->isPost()){
        	$user->activeItem($this->_data);
        }
    	
    	   		//paging
		$totalItem = $user->countUser();
		$paginator = new GLT_Paginator();
		$this->view->paginator = $paginator->createPaginator($totalItem, $this->_paginator);
		$list=$user->getAll($this->_data);
		if (sizeof($list)>0) {
			foreach ($list as &$value) {
				$value['dos_module_provinces_province_id']=$province->getName($value['dos_module_provinces_province_id']);
			}
		}
    	$this->view->list=$list;
        
    }
    public function mailAction(){
    	$user=new Webadmin_Model_User();
       	$this->view->listUser=$user->getAll($this->_data);
    
    	if($this->_request->isPost()){
        	$user->sendMail($this->_data);
        }
        
    }
}