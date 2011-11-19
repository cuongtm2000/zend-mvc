<?php
class Banner_IndexController extends GLT_Controller_Action {
    private $_data;
    private $_lang;
    
    public function init(){
        //Load language
        $this->_lang = Zend_Registry::get("lang");
        $this->view->lang = $this->_lang;
        
        //Load function for module
		$this->_data = $this->_request->getParams();
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
        $record = new Services_Model_Services();

        //list first record
        $this->view->item = $record->getFristRecord();
        
        //parse title
        $this->view->headTitle()->prepend($this->_lang[$this->_data['module']]);
	}
    public function viewAction(){
        $id = $this->getRequest()->getParam('id');
        $record = new Services_Model_Services();
        
        $detail = $record->getDetail($id);
        $this->view->item = $detail;
		
        //parse title
        $this->view->headTitle()->prepend($detail['title'.LANG]);
    }
}