<?php
class Webadmin_Form_ValidateChangePass{
	private $_error = null;
	private $_data;
		
	public function __construct($data = array()){						
		//Validate passold
		$validator = new Zend_Validate();
		$validator->addValidator(new Zend_Validate_NotEmpty())
				  ->addValidator(new Zend_Validate_StringLength(array('min' => 6)));
		if (!$validator->isValid(trim($data['passold']))) {
			$this->_error['passold'] = 'Mật khẩu cũ không được rỗng và phải trên 6 ký tự.';
		}
		
		//Validate passold
		if (!$validator->isValid(trim($data['passnew']))) {
			$this->_error['passnew'] = 'Mật khẩu mới không được rỗng và phải trên 6 ký tự.';
		}
		
		if(trim($data['passnew']) != trim($data['repassnew'])){
			$this->_error['repassnew'] = 'Mật khẩu mới bạn nhập không giống nhau.';
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