<?php
class Payment_IndexController extends GLT_Controller_Action {
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
    public function viewAction(){
        $record = new Payment_Model_Payment();
        
        $detail = $record->getDetail($this->_data['id']);
        $this->view->item = $detail;
		
        //parse title
        $this->view->headTitle()->prepend($detail[0]['title'.LANG]);
    }
}