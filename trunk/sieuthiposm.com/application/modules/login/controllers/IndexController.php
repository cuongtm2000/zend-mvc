<?php
class Login_IndexController extends GLT_Controller_Action {
	protected $_data;
	public function init(){
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
		$auth = Zend_Auth::getInstance();
		if ($auth->hasIdentity()) {
	       $this->_redirect('/');
	    }
	
		if($this->_request->isPost()){
			$validate = new Login_Form_ValidateLogin($this->_data);
			if($validate->isError() == true){
				$this->view->error = $validate->getError();
				$this->view->items = $validate->getData();
			}else{
				//Login
				$db = Zend_Registry::get('connectDb');
				
				$authAdapter = new Zend_Auth_Adapter_DbTable($db);
				$authAdapter->setTableName('dos_sys_users')->setIdentityColumn('username')->setCredentialColumn('password');
				
				$select = $authAdapter->getDbSelect();
				$select->where('enable = 1');
						
				$user_name = $this->_data['username'];
				$password = $this->_data['password'];
				$authAdapter->setIdentity($user_name);
				$authAdapter->setCredential(md5($password));
						
				$result = $auth->authenticate($authAdapter);
				
				if(!$result->isValid()){
						$error[] = 'Đăng nhập thất bại:';
		            	$error[] = '- Vui lòng kiểm tra Username và Password';
						$this->view->messages = $error; 
						//parse to textbox
						$this->view->username = $user_name;
						$this->view->password = $password;
				}else{			
					$omitColumns = array('password');
					$data = $authAdapter->getResultRowObject(null, $omitColumns);	
					$auth->getStorage()->write($data);
					$this->_redirect('http://'.$_SERVER["SERVER_NAME"].$this->_request->getRequestUri());
				}
			}
		}
	}
	public function logoutAction() {
        $auth = Zend_Auth::getInstance();
        $auth->clearIdentity();
        $this->_redirect('/');
    }
}