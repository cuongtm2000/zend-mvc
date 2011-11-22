<?php
class User_RegisterController extends GLT_Controller_Action {
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
		if($this->_request->isPost()){
			$validate = new User_Form_Validate($this->_data);
			
			if($validate->isError() == true){
				$this->view->error = $validate->getError();
				$this->view->items = $this->_data;
			}else{
				$user = new User_Model_User();
				$user->addItem($this->_data);
				$this->_redirect('/user/register/success');
			}
		}
		$this->webTitle('Đăng ký thành viên');
	}
	public function successAction() {
		$this->webTitle('Đăng ký thành công');
	}
}