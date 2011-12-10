<?php
class User_ForgotController extends GLT_Controller_Action {
    private $_data;    
    public function init(){
        //Load function for module
		$this->_data = $this->_request->getParams();

        $loadfunction = new Default_Model_Common();
        foreach($loadfunction->loadFunction($this->_data['module']) as $value){
            if($this->_data['action'] == $value['action']){
                $load = new $value['model_load']();
                $this->view->$value['varname'] = $load->$value['function_load']();
            }
        }
    }
	public function indexAction() {
			if ($this->_request->isPost()) {
			$validate  = new Webadmin_Form_ValidateForgot($this->_data);
			if($validate->isError()==true){
    			$this->view->error = $validate->getError();
				$this->view->item = $validate->getData();
    		}else{
    			$record = new Webadmin_Model_Account();
    			$record->requestCodeUser($this->_data, $_SERVER['HTTP_HOST'].$this->_request->getrequestUri());
        		$this->_redirect('user/forgot/sent');
    		}
		}
		if(isset($this->_data['code'])){
			$validate  = new Webadmin_Form_ValidateForgotGetPass($this->_data);
			if($validate->isError()==true){
    			die();
    		}else{
    			$record = new Webadmin_Model_Account();
    			$record->requestUpdateUser($this->_data, $_SERVER['HTTP_HOST'].$this->_request->getrequestUri());
        		//$this->_redirect($this->_module.'/'.$this->_controller);
    		}
    		
			$this->_helper->viewRenderer->setNoRender(); // Disable the viewscript
		}

	}
	public function sentAction() {
		
	}
}