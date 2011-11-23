<?php
class Experiences_Form_ExperiencesCatValidate{
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