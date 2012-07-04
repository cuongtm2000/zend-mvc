<?php
class Handbook_Form_Validate{
	private $_error = null;
	private $_data;
	private $_config = null;
		
	public function __construct($data = array()){		
		$this->_config = Zend_Registry::get("config");
		$module=$data['controller'];
		
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
		
		//Validate preview
		$validator = new Zend_Validate();
		$validator->addValidator(new Zend_Validate_NotEmpty())
				  ->addValidator(new Zend_Validate_StringLength(array('min' => 3)));
		
		if (!$validator->isValid($data['preview'])) {
			$this->_error['preview'] ='Mô tả không được rỗng và phải từ 3 ký tự trở lên';
		}
		
		//Validate detail
		$validator = new Zend_Validate();
		$validator->addValidator(new Zend_Validate_NotEmpty())
				  ->addValidator(new Zend_Validate_StringLength(array('min' => 3)));
		
		if (!$validator->isValid($data['detail'])) {
			$this->_error['detail'] ='Chi tiết không được rỗng và phải từ 3 ký tự trở lên';
		}
		
		//validate pic_thumb
		if (!empty($_FILES['file_thumb']['name'])){
    		$upload = new GLT_File_Upload();
    		$upload->upload($_FILES['file_thumb'], $this->_config[$module.'_width_thumb'], $this->_config[$module.'_height_thumb'], $this->_config['sys_size_upload'], PUBLIC_PATH.'/userfiles/images/'.$module.'/');
    		
	    	if($upload->isVail() == true){
	    		$i = 0;
	    		foreach($upload->_errors as $value){
	    			$this->_error[$i] = $value;
	    			$i++;
	    		}
			}
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