<?php
class Message_ComposeController extends GLT_Controller_Action {
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
		$message=new Message_Model_Message();
		$this->view->unread=$message->countUnread();
		
		if($this->_request->isPost()){
    		$validate  = new Message_Form_MessageValidate($this->_data);
    		if($validate->isError()==true){
    			$this->view->error = $validate->getError();
				$this->view->item = $this->_data;
    		}else{
    			$message->addItem($this->_data);
    			$this->_redirect('message/inbox');
    		}
    	}
	}
}