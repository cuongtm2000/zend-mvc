<?php

class GLT_Form_CmtValidate {

    private $_error = null;

    public function __construct($data = array()) {
//Validate title
        $validator = new Zend_Validate();
        $validator->addValidator(new Zend_Validate_NotEmpty())
                ->addValidator(new Zend_Validate_StringLength(array('min' => 3, 'max' => 100)));

        if (!$validator->isValid($data['cmt_title'])) {
            $this->_error['cmt_title'] = 'Tiêu đề không được rỗng và từ 3 - 100 ký tự';
        }
        if (!$validator->isValid($data['cmt_name'])) {
            $this->_error['cmt_name'] = 'Tiêu đề không được rỗng và trên 3 ký tự';
        }

        //Validate preview
        $validator = new Zend_Validate();
        $validator->addValidator(new Zend_Validate_NotEmpty())
                ->addValidator(new Zend_Validate_StringLength(array('min' => 10)));

        if (!$validator->isValid($data['cmt_content'])) {
            $this->_error['cmt_content'] = 'Nội dung không được rỗng và phải trên 10 ký tự  ';
        }

        //Validate Email	
        $validator = new Zend_Validate();
        $validator->addValidator(new Zend_Validate_EmailAddress());
        if (!$validator->isValid($data['cmt_email'])) {
            $this->_error['cmt_email'] = 'Địa chỉ mail không hợp lệ.';
        }
    }

    public function isError() {
        return count($this->_error) > 0;
    }

    public function getError() {
        return $this->_error;
    }

}