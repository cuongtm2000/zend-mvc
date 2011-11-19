<?php
class Banner_Form_BannerValidate{
	private $_error = null;
	private $_data;
	protected $_config = null;
		
	public function __construct($data = array()){		
		$this->_config = Zend_Registry::get("config");
		
		//Validate title
		$validator = new Zend_Validate();
		$validator->addValidator(new Zend_Validate_NotEmpty())
				  ->addValidator(new Zend_Validate_StringLength(array('min' => 3)));
		
		if (!$validator->isValid($data['title'])) {
			$this->_error['title'] ='Tiêu đề không được rỗng và từ 3 ký tự trở lên';
		}
		
		//Validate file
		if (empty($_FILES['file']['name'])){
    		$this->_error['file'] = 'Vui lòng chọn file hình ảnh';
    	}else{
    		$upload = new GLT_File_Upload();
    		$upload->upload($_FILES['file'], ($data['parentcat']=='logo') ? $this->_config['logo_width'] : $this->_config['banner_width'], ($data['parentcat']=='logo') ? $this->_config['logo_height'] : $this->_config['banner_height'], $this->_config['sys_size_upload'], PUBLIC_PATH.'/userfiles/images/banner/');
    		
	    	if($upload->isVail() == true){
	    		$i = 0;
	    		foreach($upload->_errors as $value){
	    			$this->_error[$i] = $value;
	    			$i++;
	    		}
			}
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