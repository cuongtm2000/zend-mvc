<?php
class Webadmin_Form_ValidateForgotGetPass{
	private $_error = null;
	private $_data;
		
	public function __construct($data = array()){
		//Validate email
		$validator = new Zend_Validate();
		$validator->addValidator(new Zend_Validate_EmailAddress());
		
		if (!$validator->isValid($data['email'])) {
			$this->_error['email'] ='Email không hợp lệ. Ví dụ: info@grouplaptrinh.com';
		}else{
			$validator->addValidator(new Zend_Validate_Db_NoRecordExists(array('table' => 'dos_sys_users', 'field' => 'email', 'exclude' => "forgot_code = '".$data['code']."'")));
			if ($validator->isValid($data['email'])) {
			    $this->_error['email'] = 'Email: '.$data['email'].' Không tồn tại trong cơ sở dữ liệu, vui lòng dùng Email khác';
			}
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