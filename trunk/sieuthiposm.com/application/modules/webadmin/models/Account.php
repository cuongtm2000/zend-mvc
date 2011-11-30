<?php
class Webadmin_Model_Account extends Zend_Db_Table{
	protected $_name = 'dos_sys_users';
    protected $_primary = 'userid';

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
			return true;
		}
		return false;
    }
	//Back end - Check passold
	private function checkPassold($user, $pass){
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
			//Update password
	    	$bind = array('password' => md5(trim($data['passnew'])));
	    	$this->update($bind, "username='".$username."'");
    	
			return TRUE;
		}else{
			return FALSE;
		}
	}
}