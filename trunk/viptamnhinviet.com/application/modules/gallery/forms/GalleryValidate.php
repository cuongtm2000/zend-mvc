<?php
class Gallery_Form_GalleryValidate{
	private $_error = null;
	private $_arrData;
	protected $_config = null;
		
	public function __construct($arrParam = array()){		
		$this->_config = Zend_Registry::get("config");
		
		//Validate parentcat
		if (!isset($arrParam['parentcat'])) {
			$this->_error['parentcat'] = 'Danh mục cha chưa được chọn, bạn phải tạo Danh mục trước khi tạo sản phẩm';
		}
		
		//Validate title
		$validator = new Zend_Validate();
		$validator->addValidator(new Zend_Validate_NotEmpty())
				  ->addValidator(new Zend_Validate_StringLength(array('min' => 3, 'max' => 100)));
		
		if (!$validator->isValid($arrParam['title'])) {
			$this->_error['title'] ='Tiêu đề không được rỗng và từ 3 - 100 ký tự';
		}
		
		//validate pic_thumb
		if (!empty($_FILES['file_thumb']['name'])){
    		$upload = new GLT_File_Upload();
    		$upload->upload($_FILES['file_thumb'], $this->_config['gallery_width_thumb'], $this->_config['gallery_height_thumb'], $this->_config['sys_size_upload'], PUBLIC_PATH.'/userfiles/images/gallery/');
    		
	    	if($upload->isVail() == true){
	    		$i = 0;
	    		foreach($upload->_errors as $value){
	    			$this->_error[$i] = $value;
	    			$i++;
	    		}
			}
    	}
    	
		//validate pic_full
		if (!empty($_FILES['file_full']['name'])){
    		$upload = new GLT_File_Upload();
    		$upload->upload($_FILES['file_full'], $this->_config['gallery_width'], $this->_config['gallery_height'], $this->_config['sys_size_upload'], PUBLIC_PATH.'/userfiles/images/gallery/');
    		
	    	if($upload->isVail() == true){
	    		$i = 0;
	    		foreach($upload->_errors as $value){
	    			$this->_error[$i] = $value;
	    			$i++;
	    		}
			}
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