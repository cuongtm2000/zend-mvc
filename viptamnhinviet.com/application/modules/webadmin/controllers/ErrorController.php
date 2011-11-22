<?php
class Webadmin_ErrorController extends GLT_Controller_Backend{
	protected $_arrParam;
	protected $_module;
	protected $_controller;
	protected $_currentController;
	protected $_config;
	
	public function init(){
    	//load language
        $this->view->lang = Zend_Registry::get("lang");
        //load config
        $this->_config = Zend_Registry::get("config");
        $this->view->config = $this->_config;
        
    	$this->_arrParam = $this->_request->getParams();
    	$this->_module = $this->_arrParam['module']; //Get module
        $this->_controller = $this->_arrParam['controller']; //Get controller
        $this->_currentController = '/' . $this->_arrParam['module'].'/' . $this->_arrParam['controller'];

        //List menu admin
        $listmenu = Zend_Registry::get("listmenu");
        $this->view->listmenu = $listmenu;
        
        //parse to view
        $this->view->currentController = $this->_currentController;
        $this->view->controller = $this->_controller;
        $this->view->selecthome = ' class="selected"';
    }
	public function indexAction(){

	}
}