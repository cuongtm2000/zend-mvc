<?php
class Webadmin_Form_ValidateAddUser{
	private $_error = null;
	private $_data;
		
	public function __construct($data = array()){
		//Validate username
		$validator = new Zend_Validate();
		$validator->addValidator(new Zend_Validate_Regex('#^[A-Za-z0-9_-]+$#'));
		
		if (!$validator->isValid($data['username'])) {
			$this->_error['username'] ='Tên đăng nhập không hợp lệ, bao gồm ký tự, -, _ và số. Ví dụ: grouplaptrinh, grouplaptrinh2011, group_lap_trinh';
		}else{
			$validator->addValidator(new Zend_Validate_Db_RecordExists(array('table' => 'dos_sys_users', 'field' => 'username')));
			if ($validator->isValid($data['username'])) {
			    $this->_error['username'] ='Username: <strong>'.$data['userid'].'</strong> đã có người sử dụng, vui lòng chọn 1 Username khác';
			}
		}
		
		//Validate password
		$validator = new Zend_Validate();
		$validator->addValidator(new Zend_Validate_NotEmpty())
				  ->addValidator(new Zend_Validate_StringLength(array('min' => 6, 'max' => 45)));
		
		if (!$validator->isValid($data['password'])) {
			$this->_error['password'] ='Mật khẩu không được rỗng và từ 6 - 45 ký tự.';
		}
		
		//Validate email
		$validator = new Zend_Validate();
		$validator->addValidator(new Zend_Validate_EmailAddress());
		
		if (!$validator->isValid($data['email'])) {
			$this->_error['email'] ='Email không hợp lệ. Ví dụ: info@grouplaptrinh.com';
		}else{
			$validator->addValidator(new Zend_Validate_Db_RecordExists(array('table' => 'dos_sys_users', 'field' => 'email')));
			if ($validator->isValid($data['email'])) {
			    $this->_error['email'] ='Email: <strong>'.$data['email'].'</strong> đã có người sử dụng, vui lòng dùng Email khác hoặc bấm vào nút <a href="forgot-password.html">Quên mật khẩu</a>';
			}
		}
		
		//Validate fullname
		$validator = new Zend_Validate();
		$validator->addValidator(new Zend_Validate_NotEmpty())
				  ->addValidator(new Zend_Validate_StringLength(array('min' => 6)));
		if (!$validator->isValid(trim($data['full_name']))) {
			$this->_error['full_name'] = 'Fullname không được rỗng và phải trên 6 ký tự.';
		}
		
		$this->_data = $data;
	}

	public function isError(){
		if (count($this->_error)>0){
			return true;
		}
		else 
			return false;
	}
	
	public function getError(){
		return $this->_error;
	}
	
	public function getData(){
		return $this->_data;
	}
}