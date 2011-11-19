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
    private $_fileTmp;
    private $_uploadDir;
    private $_width;
    private $_height;
    public $_errors;
	
	public function upload($file_name, $width, $height, $size, $dir, $extention = 'gif|jpg|png|bmp'){
		$this->_fileName = $this->fileNoneUnicode($file_name);
        $this->_fileSize = $file_name['size'];
        $this->_extention = $this->getFileExtension($this->_fileName);
        $this->_fileTmp = $file_name['tmp_name'];
        $this->_width = $width;
        $this->_height = $height;
		$this->isImages();
		$this->setFileExtension($extention);
		$this->setFileSize($size);
		$this->setUploadDir($dir);
		$this->_fileName = $this->setUploadFile($this->_fileName);
	}
	public function uploadMulti($file_name, $file_size, $file_tmp, $width, $height, $size, $dir, $extention = 'gif|jpg|png|bmp'){
		$this->_fileName = $this->fileNoneUnicode($file_name, 1);
        $this->_fileSize = $file_size;
        $this->_extention = $this->getFileExtension($this->_fileName);
        $this->_fileTmp = $file_tmp;
        $this->_width = $width;
        $this->_height = $height;
		$this->isImages();
		$this->setFileExtension($extention);
		$this->setFileSize($size);
		$this->setUploadDir($dir);
		$this->_fileName = $this->setUploadFile($this->_fileName);
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
	private function getFileExtension($name){
        $pattern = '#\.([^\.]+)$#i';
        preg_match($pattern, $name, $matches);
        return $matches[1];
    }
    //param string ex: gif|jpg|png
    private function setFileExtension($value){
        $subject = $this->_extention;
        $pattern = '#('.$value.')#i';
        if(preg_match($pattern, $subject) != 1){
            $this->_errors[] = "Phần mở rộng file ảnh không phù hợp";
        }
    }
    //ex; 100 = 100kb
    private function setFileSize($value){
        $size = $value*1024;
        if($this->_fileSize > $size){
            $this->_errors[] = 'Kích thước file phải nhỏ hơn '.$size/1024 .' KB';
        }
    }
    private function setUploadDir($value){
        if(file_exists($value)){
            $this->_uploadDir = $value;
        }else{
            $this->_errors[] = 'Thư mục chứa hình ảnh không tồn tại';
        }
    }
	private function setUploadFile($value){
		while(file_exists($this->_uploadDir . $value)){
			$value = str_replace('.', rand(1, 9) . '.', $value);
		}
		return $value;
	}
	public function isImages(){
		if (!getimagesize($this->_fileTmp)){
			$this->_errors[] = 'Tập tin của bạn không phải định dạng file ảnh';
		}else{
			return getimagesize($this->_fileTmp);
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
		$image = new GLT_File_Images();
		$image->Resizeimage($this->_fileTmp);
		$image->resize_limitwh($this->_width, $this->_height, $this->_uploadDir.$this->_fileName, 100);
		$image->close();
		return $this->_fileName;
    }
	public function removeFile($path){
		@unlink($path);
	}
}