<?php
class Productions_Form_ValidateComment{
	private $_error = null;
	public function __construct($arrParam = array()){		
		
		//Validate title
		$validator = new Zend_Validate();
		$validator->addValidator(new Zend_Validate_NotEmpty())
				  ->addValidator(new Zend_Validate_StringLength(array('min' => 6, 'max' => 100)));
		
		if (!$validator->isValid($arrParam['commenttitle'])) {
			$this->_error['title'] ='Tiêu đề không được rỗng và từ 6 - 100 ký tự';
		}	
		
		//Validate detail
		$validator = new Zend_Validate();
		$validator->addValidator(new Zend_Validate_NotEmpty())
				  ->addValidator(new Zend_Validate_StringLength(array('min' => 6)));
		
		if (!$validator->isValid($arrParam['commentdetail'])) {
			$this->_error['detail'] ='Nội dung phải từ 6 ký tự trở lên';
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