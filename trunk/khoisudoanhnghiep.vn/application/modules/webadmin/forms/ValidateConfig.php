<?php
class Webadmin_Form_ValidateConfig{
	private $_error = null;
		
	public function __construct($arrParam = array()){
		if(isset($arrParam['config_namenew'])){
			//Validate langname
			$validator = new Zend_Validate();
			$validator->addValidator(new Zend_Validate_Db_RecordExists(array('table' => 'dos_sys_configs', 'field' => 'config_name')));
			foreach ($arrParam['config_namenew'] as $value){
				if ($validator->isValid($value)) {
				    $this->_error[$value] = $value.' đã tồn tại bạn có thể xóa hoặc sửa Config này';
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