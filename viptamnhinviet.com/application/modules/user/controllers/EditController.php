<?php
class User_EditController extends GLT_Controller_Action {
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
		//Get info login
    	$auth = Zend_Auth::getInstance();
    	if ($auth->hasIdentity()){
			$username = $auth->getIdentity()->username;
    	}else{
			$this->_redirect('/');
		}
		$user = new User_Model_User();
		
		
		if($this->_request->isPost()){	
			$validate = new User_Form_EditValidate($this->_data);
			
			if($validate->isError() == true){
				$this->view->error = $validate->getError();
				$this->view->items = $this->_data;
			}else{
				$user->updateItem($this->_data);
				$this->view->error = array('Đã chỉnh sửa thông tin thành công. Nhấp vào <a href="'.$this->view->baseUrl().'">đây</a> để trở về trang chủ');
			}
		}
		$this->view->items=$user->getItem($username);
		$this->webTitle($this->view->lang[$this->_data['module']]);
	}
}