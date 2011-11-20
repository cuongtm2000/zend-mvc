<?php
class Webadmin_ToolController extends GLT_Controller_Backend {
	private $_data;
    public function init(){
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
        
        $this->view->selecttool = ' class="selected"';
    }
    public function indexAction(){
        
    }
	public function seoAction(){
		$item = new Webadmin_Model_Tool();
		$this->view->item = $item->getGoogleAnalytic();
		
		if ($this->_request->isPost()) {
			$item->insertGoogleAnalytic($this->_data);
			$this->_redirect('http://'.$_SERVER["SERVER_NAME"].$this->_request->getRequestUri());
		}
    }
    public function analyticsAction(){
    }
}