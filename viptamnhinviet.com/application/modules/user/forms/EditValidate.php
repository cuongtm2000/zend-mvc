<?php
class User_Form_Validate{
	private $_error = null;
	
	public function __construct($data = array()){
		//Validate username
		$validator = new Zend_Validate();
		$validator->addValidator(new Zend_Validate_Regex('#^[A-Za-z0-9_-]+$#'));
		
		if (!$validator->isValid($data['username'])) {
			$this->_error['userid'] ='Tên đăng nhập không hợp lệ, bao gồm các ký tự, -, _ và số. Ví dụ: viptamnhinviet, tamnhinviet2012, tam_nhin_viet';
		}else{
			$validator->addValidator(new Zend_Validate_Db_RecordExists(array('table' => 'dos_sys_users', 'field' => 'username')));
			if ($validator->isValid($data['username'])) {
			    $this->_error['username'] ='Tên đăng nhập <strong>'.$data['username'].'</strong> đã có người sử dụng, vui lòng chọn tên khác.';
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
		
		
		//Validate user_gioithieu
		$validator = new Zend_Validate();
		$validator->addValidator(new Zend_Validate_Regex('#^[A-Za-z0-9_-]+$#'));
		
		if (!$validator->isValid($data['user_gioithieu'])) {
			$this->_error['userid1'] ='Tên người giới thiệu không hợp lệ';
		}else{
			$validator->addValidator(new Zend_Validate_Db_RecordExists(array('table' => 'dos_sys_users', 'field' => 'username')));
			if (!$validator->isValid($data['user_gioithieu'])) {
			    $this->_error['username1'] ='Người giới thiệu <strong>'.$data['user_gioithieu'].'</strong> không tồn tại. Hãy liên hệ với người giới thiệu để lấy thông tin chính xác';
			}
		}
		
		//Validate user_baotro
		$validator = new Zend_Validate();
		$validator->addValidator(new Zend_Validate_Regex('#^[A-Za-z0-9_-]+$#'));
		
		if (!$validator->isValid($data['user_baotro'])) {
			$this->_error['userid2'] ='Tên người bảo trợ không hợp lệ';
		}else{
			$validator->addValidator(new Zend_Validate_Db_RecordExists(array('table' => 'dos_sys_users', 'field' => 'username')));
			if (!$validator->isValid($data['user_baotro'])) {
			    $this->_error['username2'] ='Người bảo trợ <strong>'.$data['user_baotro'].'</strong> không tồn tại. Hãy liên hệ với người bảo trợ để lấy thông tin chính xác';
			}else{
				$user=new User_Model_User();
				$child=$user->getChild($data['user_baotro']);
				if(sizeof($child)>=2)
					$this->_error['username21'] ='Người bảo trợ <strong>'.$data['user_baotro'].'</strong> đã bảo trợ 2 người. Hãy liên hệ với người bảo trợ để lấy thông tin chính xác';
			}
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