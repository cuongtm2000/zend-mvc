<?php
class User_TransferVController extends GLT_Controller_Action {
    private $_data; 
	private $_username;
    
    public function init(){
    	$auth = Zend_Auth::getInstance();
        if (!$auth->hasIdentity()) {
        	$this->_redirect('/');
        }
        $this->_username = $auth->getIdentity()->username;
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
		$user= new User_Model_User();
		$this->view->balance=$user->getTK($this->_username);
		
		if($this->_request->isPost()){	
			$validate = new User_Form_TransferValidate($this->_data);
			
			if($validate->isError() == true){
				$this->view->error = $validate->getError();
			}else{
				$user->transferV($this->_data);
				$this->view->success=true;
			}
			$this->view->items = $this->_data;
		}	
	}
}