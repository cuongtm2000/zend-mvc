<?php
///////////////////////////////////////////////////////////////////////////////
//                                                                           //
//   Program Name         : Image Upload	 		                         //
//   Release Version      : 1.0                                              //
//   Program Author		  : Thanhansoft                                      //
//   Supplied by          : http://grouplaptrinh.com                         //
//   Distribution         : Thanhansoft										 //
//                                                                           //
//                       GLT Team 2/5/2011                                   //
///////////////////////////////////////////////////////////////////////////////

class GLT_File_Upload extends Zend_File_Transfer_Adapter_Http{
	private $_fileName;
    private $_fileSize;
    private $_extention;


    public $_errors;
	
	public function upload($file_name, $size,$dir,$id){
		$this->_fileName = $id.'.'.$this->fileNoneUnicode($file_name);
        $this->_fileSize = $file_name['size'];
		$this->setFileSize($size);
		$this->setUploadDir($dir);
		$this->_files['ufile']['name']=$this->_fileName;
	}

	private function fileNoneUnicode($file, $type = 0){
		$name = '';
		$file_name = ($type ==0) ? $file['name'] : $file;
		if($file_name){
			$filename = substr($file_name, 0, strripos($file_name, '.')); // strip filename
			$extension = substr(substr($file_name, strripos($file_name, '.')), 1); //extention
			
			$none = new GLT_View_Helper_NoneUnicode();
			$filename = $none->noneunicode($filename);
			$name = $filename.'.'.$extension;
		}
		return $name;
	}
    
    private function setFileSize($value){//ex; 100 = 100kb
        $size = $value*1024;
        if($this->_fileSize > $size){
            $this->_errors[] = 'Kích thước file phải nhỏ hơn '.$size/1024 .' KB';
        }
    }
    private function setUploadDir($value){
        if(file_exists($value)){
			$this->setDestination($value);
        }else{
            $this->_errors[] = 'Thư mục không tồn tại '. $value;
        }
    }
    public function isVail(){
        $flagErr = false;
        if(count($this->_errors) > 0){
            $flagErr = true;
        }
        return $flagErr;
    }
    public function transferFile(){
		if (!$this->receive()) {
			$messages = $this->getMessages();
			echo implode("\n", $messages);
		}else{	
			return $this->_fileName;
		}		
    }
}