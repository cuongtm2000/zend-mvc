<?php
class User_Form_EditValidate{
	private $_error = null;
	
	public function __construct($data = array()){
		
		//Validate username
		$validator = new Zend_Validate();
		$validator->addValidator(new Zend_Validate_Regex('#^[A-Za-z0-9_-]+$#'));
		
		if (!$validator->isValid($data['username'])) {
			$this->_error['userid'] ='Hacker get out';
		}
		
		if($data['oldpass'] != ''){
			$acc = new Webadmin_Model_Account();
			if ($acc->checkPassold($data['username'], $data['oldpass'])) {
				//Validate compare pass
				$validator = new Zend_Validate();
				$validator ->addValidator(new Zend_Validate_StringLength(array('min' => 6)));;
				if (!$validator->isValid($data['password'])) {
					$this->_error['pass'] = 'Mật khẩu phải trên 6 ký tự.';
				}
				if($data['password'] != $data['password1']){
					$this->_error['pass1'] = 'Hai mật khẩu không trùng nhau.';
				}
			}
			else {
				$this->_error['oldpass'] ='Mật khẩu cũ không đúng';
			}
			
		}
		
		//Validate Email	
		$validator = new Zend_Validate();
		$validator->addValidator(new Zend_Validate_EmailAddress());
		if (!$validator->isValid($data['email'])) {
			$this->_error['email'] = 'Địa chỉ email không hợp lệ.';
		}
		
		//Validate fullname
		$validator = new Zend_Validate();
		$validator->addValidator(new Zend_Validate_NotEmpty())
				  ->addValidator(new Zend_Validate_StringLength(array('min' => 4)));
		if (!$validator->isValid($data['full_name'])) {
			$this->_error['full_name'] ='Họ và tên phải trên 4 kí tự.';
		}		
				
		//Validate birthday
		$validator = new Zend_Validate();
		$validator->addValidator(new Zend_Validate_Date(array('format' => 'yyyy-M-d')));
		$birthday = $data['year'].'-'.$data['month'].'-'.$data['day'];
		if (!$validator->isValid($birthday)) {
			$this->_error['birthday'] ='Ngày sinh không hợp lệ.';
		}		
	
		//Validate dia chi, ngan hang, tk ngan hang
		$validator = new Zend_Validate();
		$validator->addValidator(new Zend_Validate_NotEmpty());
		if (!$validator->isValid($data['address'])) {
			$this->_error['address'] ='Địa chỉ không được trống.';
		}
	
		if (!$validator->isValid($data['bank_number'])) {
			$this->_error['bank_number'] ='Số tài khoản ngân hàng không được trống.';
		}
		if (!$validator->isValid($data['bank_name'])) {
			$this->_error['bank_name'] ='Tên ngân hàng không được trống.';
		}

	//Validate cmnd
		$validator = new Zend_Validate();
		$validator->addValidator(new Zend_Validate_NotEmpty())
					->addValidator(new Zend_Validate_Digits())
				  ->addValidator(new Zend_Validate_StringLength(array('min' => 9)));
		if (!$validator->isValid($data['cmnd'])) {
			$this->_error['cmdn'] ='Số CMND không hợp lệ.';
		}		
	
		//Validate phone
		$validator = new Zend_Validate();
		$validator->addValidator(new Zend_Validate_NotEmpty())
				  ->addValidator(new Zend_Validate_StringLength(array('min' => 10)));
		if (!$validator->isValid($data['phone'])) {
			$this->_error['phone'] ='Số điện thoại phải trên 10 ký tự.';
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