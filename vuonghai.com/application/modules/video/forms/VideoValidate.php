<?php
class Video_Form_VideoValidate{
	private $_error = null;
	private $_data;
	protected $_config = null;
		
	public function __construct($data = array()){		
		$this->_config = Zend_Registry::get("config");
		
		//Validate parentcat
		if (!isset($data['parentcat'])) {
			$this->_error['parentcat'] = 'Danh mục cha chưa được chọn, bạn phải tạo Danh mục trước khi tạo sản phẩm';
		}
		
		//Validate title
		$validator = new Zend_Validate();
		$validator->addValidator(new Zend_Validate_NotEmpty())
				  ->addValidator(new Zend_Validate_StringLength(array('min' => 3, 'max' => 100)));
		
		if (!$validator->isValid($data['title'])) {
			$this->_error['title'] ='Tiêu đề không được rỗng và từ 3 - 100 ký tự';
		}
    	
		//validate pic_full
		if (!empty($_FILES['file_full']['name'])){
    		$upload = new GLT_File_Upload();
    		$upload->upload($_FILES['file_full'], $this->_config['video_width'], $this->_config['video_height'], $this->_config['sys_size_upload'], PUBLIC_PATH.'/userfiles/images/video/');
    		
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