<?php
class Job_Form_Validate{
  	private $_error = null;

	public function __construct($data = array()){
	
		$validator = new Zend_Validate();
		$validator->addValidator(new Zend_Validate_NotEmpty());
		
		if (!$validator->isValid($data['title'])) {
			$this->_error['title'] ='Chưa điền tên công việc';
		}
		if($data['reciever'] == '0'){
			$this->_error['reciever'] ='Chưa chọn người nhận việc';
		}
		if (!$validator->isValid($data['title'])) {
			$this->_error['title'] ='Chưa điền tên công việc';
		}
		if (!$validator->isValid($data['start_date'])) {
			$this->_error['start_date'] ='Chưa nhập ngày bắt đầu';
		}
		if (!$validator->isValid($data['last_date'])) {
			$this->_error['last_date'] ='Chưa nhập ngày kết thúc';
		}
		if(!isset($this->_error['last_date']) && !isset($this->_error['start_date'])){
			$date_b = new Zend_Date($data['start_date'], 'dd-MM-yyyy');
			$date_f = new Zend_Date($data['last_date'], 'dd-MM-yyyy');
			$date_now = new Zend_Date();
			$date_now->set('00:00:00', Zend_Date::TIMES);
			
			if ($date_b->isLater($date_f)) 
				$this->_error['date1'] = 'Ngày kết thúc phải lớn hơn ngày bắt đầu';
			if ($date_now->isLater($date_b)) 
				$this->_error['date2'] = 'Ngày bắt đầu phải lớn hơn hoặc bằng ngày hiện tại';
		}
			
		$allowedExtensions  = array('txt','doc','docx','jpg','jpeg','pdf','xls','gif','png','psd','rtf','ppt','pps','rar','zip');
		$ufile = $_FILES['ufile'];
		if($ufile != null){
			switch ($ufile['error']) {
				case UPLOAD_ERR_OK:
					if (! in_array(end(explode(".", strtolower($ufile['name']))), 
									$allowedExtensions)) 
						$this->_error['f1']= 'Phần mở rộng của tập tin đính kèm không được phép tải lên';
					break;
				case UPLOAD_ERR_INI_SIZE :
				case UPLOAD_ERR_FORM_SIZE ;
					$this->_error['f2']= 'Kích thước tập tin lớn hơn giới hạn cho phép';
					break;            	
            }		
		}
	}
   /* private function validate ($str)
    {
        list ($day, $month, $year) = explode('-', $str);
        if ($day < 10 && (strlen($day) == 1))
            $day = '0' . $day;
        if ($month < 10 && (strlen($month) == 1))
            $month = '0' . $month;
        if(checkdate  (  $month  ,  $day  ,  $year  ))
        	return true;
        return false;
    }*/
	public function isError(){
		return (count($this->_error)>0)? true:false;
	}	
	public function getError(){
		return $this->_error;
	}	
}