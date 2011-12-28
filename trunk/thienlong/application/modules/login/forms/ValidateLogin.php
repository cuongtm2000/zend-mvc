<?php
class Login_Form_ValidateLogin{
	private $_error = null;
	private $_arrData;
		
	public function __construct($arrParam = array()){
		//Validate username
		$validator = new Zend_Validate();
		$validator->addValidator(new Zend_Validate_Regex('#^[A-Za-z0-9_-]+$#'));
		
		if (!$validator->isValid($arrParam['username'])) {
			$this->_error['username'] ='Tên đăng nhập không hợp lệ, bao gồm ký tự, -, _ và số. Ví dụ: thuonghoi, thuonghoi2011, thuong_hoi';
		}
		
		//Validate password
		$validator = new Zend_Validate();
		$validator->addValidator(new Zend_Validate_NotEmpty())
				  ->addValidator(new Zend_Validate_StringLength(array('min' => 3, 'max' => 45)));
		
		if (!$validator->isValid($arrParam['password'])) {
			$this->_error['password'] ='Mật khẩu không được rỗng và từ 3 - 45 ký tự';
		}

		$this->_arrData = $arrParam;
	}

	public function isError(){
		return (count($this->_error)>0)? true:false;
	}
	
	public function getError(){
		return $this->_error;
	}
	
	public function getData(){
		return $this->_arrData;
	}
}