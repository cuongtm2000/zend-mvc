<?php
class User_LoginController extends GLT_Controller_Action {
 	private $_data;
	public function init(){
		$this->_data = $this->_request->getParams();
	}
		
	public function indexAction() {
        //Check login
		$auth = Zend_Auth::getInstance();
		if ($auth->hasIdentity()) {
	       $this->_redirect('/');
	    }
	
		if($this->_request->isPost()){
			$validate = new User_Form_ValidateLogin($this->_data);
			if($validate->isError() == true){
				$this->view->messages = $validate->getError();
				$this->view->items = $validate->getData();
			}else{
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
   	                $error[] = '- Vui lòng kiểm tra tên đăng nhập hoặc mật khẩu';
					$this->view->messages = $error; 
                    $this->view->items = array('username' => $user_name, 'password' => $password);
				}else{			
					$omitColumns = array('password');
					$data = $authAdapter->getResultRowObject(null, $omitColumns);	
					$auth->getStorage()->write($data);
                    
                    $session = new Zend_Session_Namespace('logged');
                    $session->loginok = '1'; //session logged
                    $path = $this->get_between($this->_request->getRequestUri(), '/', '/user');
                    $session->path = ($path) ? '/'.$path : '';
					$this->_redirect('http://'.$_SERVER["SERVER_NAME"].$this->_request->getRequestUri());
				}
			}
		}
        $this->webTitle('Đăng nhập hệ thống');
	}
    private function get_between($input, $start, $end){
        $substr = substr($input, strlen($start)+strpos($input, $start), (strlen($input) - strpos($input, $end))*(-1));
        return $substr;
	}
}