<?php

class Vote_Form_Validate {

    private $_error = null;
    private $_data;
    private $_config = null;

    public function __construct($data = array()) {
        $this->_config = Zend_Registry::get("config");

        //Validate title
        $validator = new Zend_Validate();
        $validator->addValidator(new Zend_Validate_NotEmpty())
                ->addValidator(new Zend_Validate_StringLength(array('min' => 3)));

        if (!$validator->isValid($data['question'])) {
            $this->_error['question'] = 'Câu hỏi không được rỗng và từ 3 ký tự trở lên';
        }

        //Validate date
        $validator = new Zend_Validate();
        $validator->addValidator(new Zend_Validate_NotEmpty(), true)
                ->addValidator(new Zend_Validate_Date(array('format' => 'dd-mm-YYYY')), true);
        if (!$validator->isValid($data['begin_date'])) {
            $message = $validator->getMessages();
            $this->_error['start_date'] = 'Ngày bắt dầu không được rỗng và định dạng: dd-mm-yyyy';
        }
        if (!$validator->isValid($data['end_date'])) {
            $message = $validator->getMessages();
            $this->_error['end_date'] = 'Ngày kết thúc không được rỗng và định dạng: dd-mm-yyyy';
        }
               
        if(!count(array_filter($data['answer'])))
            $this->_error['answer'] = 'Chưa có câu trả lời nào.';
        $this->_data = $data;        
    }

    public function isError() {
        return (count($this->_error) > 0);
    }

    public function getError() {
        return $this->_error;
    }

    public function getData() {
        return $this->_data;
    }

}