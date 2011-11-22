<?php
class Webadmin_Form_ValidateWeb{
	private $_error = null;
		
	public function __construct($arrParam = array()){
		if(isset($arrParam['web_namenew'])){
			//Validate langname
			$validator = new Zend_Validate();
			$validator->addValidator(new Zend_Validate_Db_RecordExists(array('table' => 'dos_sys_webs', 'field' => 'web_name')));
			foreach ($arrParam['web_namenew'] as $value){
				if ($validator->isValid($value)) {
				    $this->_error[$value] = $value.' đã tồn tại bạn có thể xóa hoặc sửa Config web này';
				}
			}
		}
	}

	public function isError(){
		if (count($this->_error)>0){
			return true;
		}
		else{ 
			return false;
		}
	}
	
	public function getError(){
		return $this->_error;
	}
}