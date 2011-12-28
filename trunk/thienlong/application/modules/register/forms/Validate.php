<?php
class Register_Form_Validate{
	private $_error = null;
	private $_data;
		
	public function __construct($data = array()){
		//Validate username
		$validator = new Zend_Validate();
		$validator->addValidator(new Zend_Validate_Regex('#^[A-Za-z0-9_-]+$#'));
		
		if (!$validator->isValid($data['username'])) {
			$this->_error['userid'] ='Username không hợp lệ, bao gồm các ký tự, -, _ và số. Ví dụ: sieuthiposm, sieuthiposm2012, sieu_thi_posm';
		}else{
			$validator->addValidator(new Zend_Validate_Db_RecordExists(array('table' => 'dos_sys_users', 'field' => 'username')));
			if ($validator->isValid($data['username'])) {
			    $this->_error['username'] ='Username: <strong>'.$data['username'].'</strong> đã có người sử dụng, vui lòng chọn Username khác.';
			}
		}
		
		//Validate compare pass
		$validator = new Zend_Validate();
		$validator ->addValidator(new Zend_Validate_StringLength(array('min' => 6)));;
		if (!$validator->isValid($data['password'])) {
			$this->_error['pass'] = 'Mật khẩu phải trên 6 ký tự.';
		}
		if($data['password'] != $data['password1']){
			$this->_error['pass1'] = 'Hai mật khẩu không trùng nhau.';
		}
		
		//Validate Email	
		$validator = new Zend_Validate();
		$validator->addValidator(new Zend_Validate_EmailAddress());
		if (!$validator->isValid($data['email'])) {
			$this->_error['mail'] = 'Địa chỉ mail không hợp lệ.';
		}
		
		//Validate province
		if($data['province'] == 0){
			$this->_error['province'] ='Tỉnh thành chưa được chọn.';
		}
		
		//Validate phone
		$validator = new Zend_Validate();
		$validator->addValidator(new Zend_Validate_NotEmpty())
				  ->addValidator(new Zend_Validate_StringLength(array('min' => 10)));
		
		if (!$validator->isValid($data['phone'])) {
			$this->_error['phone'] ='Số phone không được rỗng và phải trên 10 ký tự.';
		}
		
		$this->_data = $data;
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
	public function getData(){
		return $this->_data;
	}
}