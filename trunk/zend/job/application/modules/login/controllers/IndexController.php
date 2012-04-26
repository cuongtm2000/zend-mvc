<?php
class Login_IndexController extends GLT_Controller_Action{
	private $_data;
	
	public function init(){
		$this->_data = $this->_request->getParams();
		
		$layoutPath = PUBLIC_PATH .'/templates' . TEM_INDEX;
        $option = array ('layout' => 'login', 'layoutPath' => $layoutPath );
        Zend_Layout::startMvc ( $option );
	}
	
    public function indexAction(){
        if ($this->_request->isPost()) {
        	$validate  = new Login_Form_LoginValidate($this->_data);
    		if($validate->isError()==true){
    			$this->view->messages = $validate->getError();
				$this->view->item = $validate->getData();
    		}else{
	    		$uname = $this->_data['username'];
	            $paswd = $this->_data['password'];
	            
	            $auth       = Zend_Auth::getInstance(); 
	            $db = Zend_Registry::get('connectDb');
		
	            $authAdapter = new Zend_Auth_Adapter_DbTable($db);
	            $authAdapter->setTableName('glt_usernames')->setIdentityColumn('username')->setCredentialColumn('password');
	            
	            $authAdapter->setIdentity($uname);
	            $authAdapter->setCredential(md5($paswd));
	            
	            $result = $auth->authenticate($authAdapter);
	            
	            if($result->isValid()){
	                $data = $authAdapter->getResultRowObject(null, array('password', 'enable'));
	                $auth->getStorage()->write($data);
	                $session = new Zend_Session_Namespace('logged');
	                $session->loginok = '1'; //session logged
	
	                $this->_redirect('job');
	            }else{
	            	$error[] = 'Đăng nhập thất bại:';
	            	$error[] = '- Vui lòng kiểm tra Username và Password';
					$this->view->messages = $error; 
					//parse to textbox
					$this->view->user = $uname;
					$this->view->pass = $paswd;
	            }
    		}
        }
        $this->webTitle('Login');
    }
 	
    public function outAction(){
		$auth = Zend_Auth::getInstance();
    	$auth->clearIdentity();
		$this->_redirect('/');
    }
}