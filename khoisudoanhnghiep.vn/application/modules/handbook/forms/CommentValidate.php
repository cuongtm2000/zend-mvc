<?php

class Productions_Form_CommentValidate {

    private $_error = null;

    public function __construct($arrParam = array()) {
        //Validate title
        $validator = new Zend_Validate();
        $validator->addValidator(new Zend_Validate_NotEmpty())
                ->addValidator(new Zend_Validate_StringLength(array('min' => 6, 'max' => 100)));

        if (!$validator->isValid($arrParam['commenttitle'])) {
            $this->_error['title'] = 'Tiêu đề không được rỗng và từ 6 - 100 ký tự';
        }
		
		//Validate email
		$validator = new Zend_Validate();
		$validator->addValidator(new Zend_Validate_EmailAddress());
		
		if (!$validator->isValid($arrParam['email'])) {
			$this->_error['email'] ='Email không hợp lệ. Ví dụ: info@dos.vn';
		}

        //Validate detail
        $validator = new Zend_Validate();
        $validator->addValidator(new Zend_Validate_NotEmpty())
                ->addValidator(new Zend_Validate_StringLength(array('min' => 6)));

        if (!$validator->isValid($arrParam['commentdetail'])) {
            $this->_error['detail'] = 'Nội dung phải từ 6 ký tự trở lên';
        }
    }

    public function isError() {
        return (count($this->_error) > 0);    
    }

    public function getError() {
        return $this->_error;
    }

}