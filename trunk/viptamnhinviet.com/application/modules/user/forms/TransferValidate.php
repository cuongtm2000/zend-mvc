<?php
class User_Form_TransferValidate{
	private $_error = null;
	
	public function __construct($data = array()){
		
	  //Get info login
    	$auth = Zend_Auth::getInstance();
    	if ($auth->hasIdentity()){
			$_username = $auth->getIdentity()->username;
    	}
    	
		if($data['password'] != ''){
			$acc = new Webadmin_Model_Account();
			if (!$acc->checkPassold($_username, $data['password'])) {
				$this->_error['oldpass'] ='Mật khẩu hiện tại không đúng';
			}			
		}else 
			$this->_error['oldpass'] ='Mật khẩu hiện tại không đúng';
		//Validate người nhận
		$validator = new Zend_Validate();
		$validator->addValidator(new Zend_Validate_Regex('#^[A-Za-z0-9_-]+$#'));
		$validator->addValidator(new Zend_Validate_Db_RecordExists(array('table' => 'dos_sys_users', 'field' => 'username')));
		if (!$validator->isValid($data['reciever'])) {
		    $this->_error['reciever'] ='Người nhận <strong>'.$data['reciever'].'</strong> không tồn tại.';
		}
		
		
		$validator = new Zend_Validate();
		$validator->addValidator(new Zend_Validate_NotEmpty())
					->addValidator(new Zend_Validate_Digits());
		if ($validator->isValid(trim($data['money']))) {
			$user=new User_Model_User();
			$tk=$user->getTK($_username);
			if(trim($data['money']) > $tk)
				$this->_error['money'] ='Số tiền chuyển đi nhiều hơn mức hiện có';
			if(trim($data['money']) ==0)
				$this->_error['money'] ='Chuyển 0V à???';
			
		}	
		else{
			$this->_error['money'] ='Bạn chưa nhập số tiền';
		}
	
	}

	public function isError(){
		if (count($this->_error)>0){
			return true;
		}
		return false;
	}
	
	public function getError(){
		return $this->_error;
	}
}