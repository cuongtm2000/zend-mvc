<?php
class Payment_Form_PaymentValidate{
	private $_error = null;
	private $_arrData;
	protected $_config = null;
		
	public function __construct($arrParam = array()){		
		$this->_config = Zend_Registry::get("config");
		
		//Validate title
		$validator = new Zend_Validate();
		$validator->addValidator(new Zend_Validate_NotEmpty())
				  ->addValidator(new Zend_Validate_StringLength(array('min' => 3, 'max' => 45)));
		
		if (!$validator->isValid($arrParam['title'])) {
			$this->_error['title'] ='Tiêu đề không được rỗng và từ 3 - 45 ký tự';
		}

		//Validate detail
		$validator = new Zend_Validate();
		$validator->addValidator(new Zend_Validate_NotEmpty())
				  ->addValidator(new Zend_Validate_StringLength(array('min' => 3)));
		
		if (!$validator->isValid($arrParam['detail'])) {
			$this->_error['detail'] ='Chi tiết không được rỗng và phải từ 3 ký tự trở lên';
		}

		$this->_arrData = $arrParam;
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
		return $this->_arrData;
	}
}