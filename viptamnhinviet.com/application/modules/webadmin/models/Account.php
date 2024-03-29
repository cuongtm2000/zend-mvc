<?php
class Webadmin_Model_Account extends Zend_Db_Table{
	protected $_name = 'dos_sys_users';
    protected $_primary = 'username';
    private $_web = NULL;

	public function init(){
        $this->_web = Zend_Registry::get("web");
    }
    //Back end - Menu for Admin
    public function getListmenu(){
        $data[] = array('url'=>'changepass', 'name'=>'Thay đổi mật khẩu');
        $data[] = array('url'=>'add', 'name'=>'Thêm tài khoản quản lý');
        return $data;
    }
    //Back end - Check Login
	public function checkLogin($username, $password){
		$auth = Zend_Auth::getInstance(); 
		$db = Zend_Registry::get('connectDb');

		$authAdapter = new Zend_Auth_Adapter_DbTable($db);
		$authAdapter->setTableName($this->_name)->setIdentityColumn('username')->setCredentialColumn('password');
		
		$authAdapter->setIdentity(trim($username));
		$authAdapter->setCredential(md5(trim($password)));
		
		$result = $auth->authenticate($authAdapter);
		
		if($result->isValid()){
			$data = $authAdapter->getResultRowObject(null, array('password', 'enable'));
            $auth->getStorage()->write($data);
            
            //Remember
            $seconds  = 60 * 60 * 24 * 7; // 7 days
	        Zend_Session::RememberMe($seconds);
			return true;
		}
		return false;
    }
	//Back end - Check passold
	public   function checkPassold($user, $pass){
		$db = $this->getAdapter();
		$select = $db->select()->from($this->_name, array('username'))
    						   ->where('username =?', $user)
    						   ->where('password =?', md5($pass));
		$result = $db->fetchOne($select);
		if($result != ''){
			return true;
		}
		return false;
	}
	//Back end - Change pass
	public function changePass($data = NULL){
        $username = Zend_Auth::getInstance()->getIdentity()->username;
		
		if($this->checkPassold($username, trim($data['passold']))){
	    	$bind = array('password' => md5(trim($data['passnew'])));
	    	$this->update($bind, "username='".$username."'");
    	
			return TRUE;
		}else{
			return FALSE;
		}
	}
	//Back end - Add user
	public function addUser($data = NULL){
    	$bind = array('username' => $data['username'], 'email' => $data['email'], 'password' => md5($data['password']), 'full_name' => $data['full_name'], 'user_group' => 'member', 'enable' => $data['active']);
    	$this->insert($bind);
    }
    //Back end - Count user
	public function countUser(){
        $db = Zend_Registry::get('connectDb');
    	$select = $db->select()->from($this->_name, array('count(username) as totalItem'))->where('user_group =?', 'member');
		return $db->fetchOne($select);
    }
    //Back end - Request code User
    public function requestCodeUser($data = NULL, $url){
    	$code = substr( md5(rand(1,9999)), 0, 8);
    	$this->update(array('forgot_code' => $code), "email='".$data['email']."'");

    	$html = 'Xin chào: <strong>'.$data['email'].'</strong><br /><br />';
    	$html .= 'Bạn vưa thực hiện yêu cầu cấp phát lại mật khẩu tại website: <strong>'.$_SERVER['HTTP_HOST'].'</strong><br /><br />';
    	$html .= 'Nếu bạn thật sự muốn đổi lại mật khẩu vui lòng nhấp vào link sau: <a href="'.$url.'/code/'.$code.'/email/'.$data['email'].'" title="Link Forgot">'.$url.'/code/'.$code.'/email/'.$data['email'].'</a><br />';
    	$html .= '<br />Email này được gửi từ hệ thống của công ty Thương Hội.<br />Cảm ơn đã sử dụng dịch vụ công ty chúng tôi<br />--<br/>Thuonghoi.com';
    	
		/*
    	//send mail
    	$mail = new GLT_System_Mail();
    	if($this->_web['type'] == 1){
    		$mail->sendMailSmtp($data['email'], $this->_web['admin_email'], $data['fullname'], $this->_web['admin_name'], $this->_web['email_subject'], $html);	
    	}else{
    		$mail->sendMailLocal($data['email'], $this->_web['admin_email'], $data['fullname'], $this->_web['admin_name'], $this->_web['email_subject'], $html);
    	}*/
    }
}