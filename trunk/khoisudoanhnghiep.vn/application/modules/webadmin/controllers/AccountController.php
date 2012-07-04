<?php
class Webadmin_AccountController extends GLT_Controller_Backend {
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
        
        $this->view->selectaccount = ' class="selected"';
    }
    public function indexAction(){
        
    }
    public function changepassAction(){
    	if($this->_request->isPost()){
			$validate = new Webadmin_Form_ValidateChangePass($this->_data);
			if($validate->isError() == true){
				$this->view->error = $validate->getError();
				$this->view->item = $validate->getData();
			}else{
				//Change pass
				$user = new Webadmin_Model_Account();
				if($user->changePass($this->_data)){
					$this->_redirect('webadmin/account');
				}else{
					$this->view->error = array('Mật khẩu cũ không đúng');
				}
			}
		}
    }
    public function addAction(){
    	
    }
}