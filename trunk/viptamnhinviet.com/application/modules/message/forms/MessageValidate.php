<?php
class Message_Form_MessageValidate{
	private $_error = null;
		
	public function __construct($data = array()){
		//	echo '<pre>'; 			print_r($arrParam);		echo '</pre>';
		$repc=str_replace(' ','',$data['recipient']);
		$repc= explode(';',$repc);
		$repc=array_unique($repc);
		
		$validator = new Zend_Validate();
		$validator->addValidator(new Zend_Validate_Db_RecordExists(array('table' => 'dos_sys_users', 'field' => 'username')));
		$err='';
		foreach ($repc as $value) {
			if (! $validator->isValid($value)) {
				 $err.=' <b>'.$value.'</b> ';
			}
		}
		if ($err != '') {
			$this->_error['user']= 'Tên người nhận'.$err.'không hợp lệ';
		}
		//if($recipient != '')
		  // $this->_error['recipient']='Tên người nhận không hợp lệ';
		
		
		//Validate title
		$validator = new Zend_Validate();
		$validator->addValidator(new Zend_Validate_NotEmpty())
				  ->addValidator(new Zend_Validate_StringLength(array('min' => 3, 'max' => 100)));
		
		if (!$validator->isValid($data['title'])) {
			$this->_error['title'] ='Tiêu đề không được rỗng và từ 3 - 100 ký tự';
		}

		
		//Validate detail
		$validator = new Zend_Validate();
		$validator->addValidator(new Zend_Validate_NotEmpty())
				  ->addValidator(new Zend_Validate_StringLength(array('min' =>10)));
		
		if (!$validator->isValid($data['detail'])) {
			$this->_error['detail'] ='Nội dung không được rỗng và phải từ 10 ký tự trở lên';
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