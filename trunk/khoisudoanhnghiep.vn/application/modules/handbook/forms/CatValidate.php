<?php
class Handbook_Form_CatValidate{
	private $_error = null;
	private $_data;
	private $_config = null;
		
	public function __construct($data = array()){		
		$this->_config = Zend_Registry::get("config");
		
		//Validate cat_title
		$validator = new Zend_Validate();
		$validator->addValidator(new Zend_Validate_NotEmpty())
				  ->addValidator(new Zend_Validate_StringLength(array('min' => 3, 'max' => 45)));
		
		if (!$validator->isValid($data['cat_title'])) {
			$this->_error['cat_title'] ='Tiêu đề không được rỗng và từ 3 - 45 ký tự';
		}
        
        //Validate tag, description
		$validator = new Zend_Validate();
		$validator->addValidator(new Zend_Validate_NotEmpty());
		
		if (!$validator->isValid($data['tag'])) {
			$this->_error['tag'] ='Liên kết không được rỗng';
		}
        if (!$validator->isValid($data['description'])) {
			$this->_error['description'] ='Mô tả không được rỗng';
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