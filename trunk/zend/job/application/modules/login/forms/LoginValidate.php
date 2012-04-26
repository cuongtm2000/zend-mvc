<?php
class Login_Form_LoginValidate{
	private $_error = null;
	private $_data;
		
	public function __construct($data = array()){
		//Validate username
		$validator = new Zend_Validate();
		$validator->addValidator(new Zend_Validate_Regex('#^[A-Za-z0-9_-]+$#'));
		
		if (!$validator->isValid($data['username'])) {
			$this->_error['username'] ='- Tên đăng nhập không hợp lệ, bao gồm các ký tự, -, _ và số';
		}
		
		//Validate password
		$validator = new Zend_Validate();
		$validator->addValidator(new Zend_Validate_NotEmpty())
				  ->addValidator(new Zend_Validate_StringLength(array('min' => 6, 'max' => 45)));
		
		if (!$validator->isValid($data['password'])) {
			$this->_error['password'] ='- Mật khẩu không được rỗng và từ 6 - 45 ký tự';
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