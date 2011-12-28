<?php 
class Product_Form_ValidateOrdering{
	private $_messagesError = null;
	private $_arrData;
	
	public function __construct($arrParam = array(),$options = null){
		//========================================
		// KIEM TRA HỌ TÊN
		//========================================
		$validator = new Zend_Validate();
		$validator->addValidator(new Zend_Validate_NotEmpty(),true)
				  ->addValidator(new Zend_Validate_StringLength(5),true);
		if(!$validator->isValid($arrParam['fullname'])){
			$message = $validator->getMessages();
			$this->_messagesError['fullname'] = 'fullname: ' . current($message);
		}
		if(!$validator->isValid($arrParam['fullname'])){
			$message = $validator->getMessages();
			$this->_messagesError['address'] = 'address: ' . current($message);
		}
		if(!$validator->isValid($arrParam['content'])){
			$message = $validator->getMessages();
			$this->_messagesError['content'] = 'content: ' . current($message);
		}
		//========================================
		// KIEM TRA SỐ ĐIỆN THOẠI
		//========================================
		$validator = new Zend_Validate();
		$validator->addValidator(new Zend_Validate_NotEmpty(),true)
				 ->addValidator(new Zend_Validate_StringLength(7,20),true)
				 ->addValidator(new Zend_Validate_Regex('#^[0-9]+$#'),true);
		if(!$validator->isValid($arrParam['phone'])){
			$message = $validator->getMessages();
			$this->_messagesError['phone'] = 'Phone: ' . current($message);
		}
		//========================================
		// KIEM TRA EMAIL
		//========================================		
		$validator = new Zend_Validate();		
		$validator->addValidator(new Zend_Validate_NotEmpty(),true)
				  ->addValidator(new Zend_Validate_EmailAddress(),true);
		if(!$validator->isValid($arrParam['email'])){
			$message = $validator->getMessages();
			$this->_messagesError['email'] = 'Email: ' . current($message);
		}
		/*//========================================
		// KIEM TRA SO LUONG
		//========================================
		$validator = new Zend_Validate();
		$validator->addValidator(new Zend_Validate_NotEmpty(),true)
			      ->addValidator(new Zend_Validate_Alnum(),true);
		if(!$validator->isValid($arrParam['adults'])){
			$message = $validator->getMessages();
			$this->_messagesError['adults'] = 'adults: ' . current($message);
		}
		if(!$validator->isValid($arrParam['children'])){
			$message = $validator->getMessages();
			$this->_messagesError['children'] = 'children: ' . current($message);
		}
		//========================================
		// KIEM TRA NGAY THANG
		//========================================
		$validator = new Zend_Validate();
		$validator->addValidator(new Zend_Validate_NotEmpty(),true)
				 ->addValidator(new Zend_Validate_Date(array('format'=>'dd-mm-YYYY')),true);
		if(!$validator->isValid($arrParam['date_start'])){
			$message = $validator->getMessages();
			$this->_messagesError['date_start'] = 'date_start: ' . current($message);
		}
		if(!$validator->isValid($arrParam['date_end'])){
			$message = $validator->getMessages();
			$this->_messagesError['date_end'] = 'date_end: ' . current($message);
		}*/

		$this->_arrData = $arrParam;
	}	
	public function isError(){		
		if(count($this->_messagesError)>0){
			return true;
		}
		return false;
	}	
	public function getMessageError(){
		return $this->_messagesError;
	}	
	public function getData($options = null){
		return $this->_arrData;
	}	
}