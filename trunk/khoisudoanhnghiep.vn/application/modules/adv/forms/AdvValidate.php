<?php
class Adv_Form_AdvValidate{
	private $_error = null;
	private $_data;
	private $_config = null;
		
	public function __construct($data = array()){		
		$this->_config = Zend_Registry::get("config");
		
		//Validate title
		$validator = new Zend_Validate();
		$validator->addValidator(new Zend_Validate_NotEmpty())
				  ->addValidator(new Zend_Validate_StringLength(array('min' => 3)));
		
		if (!$validator->isValid($data['title'])) {
			$this->_error['title'] = 'Tiêu đề không được rỗng và từ 3 ký tự trở lên';
		}
		
		//Validate file
		if (!empty($_FILES['file']['name'])){
    		$upload = new GLT_File_Upload();
    		$upload->upload($_FILES['file'], $this->_config['adv_width'], $this->_config['adv_height'], $this->_config['sys_size_upload'], PUBLIC_PATH.'/userfiles/images/adv/');
    		
	    	if($upload->isVail() == true){
	    		$i = 0;
	    		foreach($upload->_errors as $value){
	    			$this->_error[$i] = $value;
	    			$i++;
	    		}
			}
    	}else{
	    	if(!isset($data['fileold'])){
				$this->_error['file'] = 'File ảnh chưa được chọn';
			}
    	}
    	
		//Validate url
		$validator = new Zend_Validate();
		$validator->addValidator(new Zend_Validate_NotEmpty());
		
		if (!$validator->isValid($data['url'])) {
			$this->_error['url'] = 'URL không được rỗng';
		}
    	
    	//Validate date
		$validator = new Zend_Validate();
		$validator->addValidator(new Zend_Validate_NotEmpty(),true)
				  ->addValidator(new Zend_Validate_Date(array('format'=>'dd-mm-YYYY')),true);
		if(!$validator->isValid($data['start_date'])){
			$message = $validator->getMessages();
			$this->_error['start_date'] = 'Ngày bắt dầu không được rỗng và định dạng: dd-mm-yyyy';
		}
		if(!$validator->isValid($data['end_date'])){
			$message = $validator->getMessages();
			$this->_error['end_date'] = 'Ngày kết thúc không được rỗng và định dạng: dd-mm-yyyy';
		}
    	
    	$data['pic_thumb'] = NULL;

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