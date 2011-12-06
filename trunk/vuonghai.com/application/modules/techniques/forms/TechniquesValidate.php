<?php
class Techniques_Form_TechniquesValidate{
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
		
		//Validate preview
		$validator = new Zend_Validate();
		$validator->addValidator(new Zend_Validate_NotEmpty())
				  ->addValidator(new Zend_Validate_StringLength(array('min' => 3)));
		
		if (!$validator->isValid($arrParam['preview'])) {
			$this->_error['preview'] ='Mô tả không được rỗng và phải từ 3 ký tự trở lên';
		}
		
		//Validate detail
		$validator = new Zend_Validate();
		$validator->addValidator(new Zend_Validate_NotEmpty())
				  ->addValidator(new Zend_Validate_StringLength(array('min' => 3)));
		
		if (!$validator->isValid($arrParam['detail'])) {
			$this->_error['detail'] ='Chi tiết không được rỗng và phải từ 3 ký tự trở lên';
		}
		
		//validate pic_thumb
		if (!empty($_FILES['file_thumb']['name'])){
    		$upload = new GLT_File_Upload();
    		$upload->upload($_FILES['file_thumb'], $this->_config['news_width_thumb'], $this->_config['news_height_thumb'], $this->_config['sys_size_upload'], PUBLIC_PATH.'/userfiles/images/news/');
    		
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