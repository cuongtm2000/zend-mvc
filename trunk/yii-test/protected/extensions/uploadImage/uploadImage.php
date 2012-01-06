<?php
class uploadImage{
	private $_filename;
	private $image;
	private $image_type;
	private $image_info;
	
    public function __construct(){
		
    }
	public function uploadMulti($filename, $tmp, $width, $height, $path, $file_old=''){
		$file_desc_multi = array();
		$size = count($filename);
		for($i=0; $i<$size; $i++){
			$file_desc_multi[] = $this->processImage($filename[$i], $tmp[$i], $width, $height, $path);
		}
		return $file_desc_multi;
	}
    private function processImage($filename, $tmp, $width, $height, $path){
		$this->image_info = $image_info = getimagesize($tmp);
		$this->image_type = $image_info[2];
		if( $this->image_type == IMAGETYPE_JPEG ) {
			$this->image = imagecreatefromjpeg($tmp);
		} elseif( $this->image_type == IMAGETYPE_GIF ) {
			$this->image = imagecreatefromgif($tmp);
		} elseif( $this->image_type == IMAGETYPE_PNG ) {
			$this->image = imagecreatefrompng($tmp);
		}
		//type resize
		$this->resizeToWidth($width, $height);
		//path and filename
		$path_upload = YiiBase::getPathOfAlias('webroot').'/public/userfiles/images/'.Yii::app()->session['subdomain'].'/images/'.$path.'/';
		//check remove file old
		/*if(($file_old) && file_exists($path_upload.$file_old)){
			unlink($path_upload.$file_old);
		}*/
		$file_name = $this->getFileExists($path_upload, NoneUnicode::fileName($filename));
		$this->save($path_upload.$file_name);
		return $file_name;
	}
   
	private function save($filename, $image_type=IMAGETYPE_JPEG, $compression=75, $permissions=null) {
		if( $image_type == IMAGETYPE_JPEG ) {
			imagejpeg($this->image, $filename, $compression);
		} elseif( $image_type == IMAGETYPE_GIF ) {
			imagegif($this->image, $filename);         
		} elseif( $image_type == IMAGETYPE_PNG ) {
		imagepng($this->image, $filename);
		}
		if( $permissions != null) {
			chmod($filename, $permissions);
		}
	}
	private function output($image_type=IMAGETYPE_JPEG) {
		if( $image_type == IMAGETYPE_JPEG ) {
			imagejpeg($this->image);
		} elseif( $image_type == IMAGETYPE_GIF ) {
			imagegif($this->image);         
		} elseif( $image_type == IMAGETYPE_PNG ) {
			imagepng($this->image);
		}   
	}
	private function getWidth() {
		return imagesx($this->image);
	}
	private function getHeight() {
		return imagesy($this->image);
	}
	private function resizeToHeight($height) {
		$ratio = $height / $this->getHeight();
		$width = $this->getWidth() * $ratio;
		$this->resize($width,$height);
	}
	private function resizeToWidth($width, $height) {
      /*$ratio = $width / $this->getWidth();
      $height = $this->getheight() * $ratio;
      $this->resize($width,$height);*/
		
		$width = (int)$width;
		$height = (int)$height;
		if (is_int($width) && $this->getWidth() > $width) {
			$this->resize($width, ($width * $this->getheight() / $this->getWidth()));
		}
		if (is_int($height) && $this->getheight() > $height) {
			$this->resize(($height * $this->getWidth() / $this->getheight()), $height);
		}
   }
	private function scale($scale) {
		$width = $this->getWidth() * $scale/100;
		$height = $this->getheight() * $scale/100; 
		$this->resize($width,$height);
   }
	private function resize($width,$height) {
		$new_image = imagecreatetruecolor($width, $height);
		imagealphablending($new_image, false);
		imagesavealpha($new_image, true);
		$transparent_color = imagecolorallocatealpha( $new_image, 255, 255, 255, 127 );
		imagefill($new_image, 0, 0, $transparent_color);
		//imagefilledrectangle($new_image, 0, 0, $width, $height, $transparent_color);
		imagecopyresampled($new_image, $this->image, 0, 0, 0, 0, $width, $height, $this->getWidth(), $this->getHeight());
		$this->image = $new_image;   
	}
	private function getFileExists($path, $value){
		while(file_exists($path . $value)){
			$value = str_replace('.', '-'.rand(1, 9) . '.', $value);
		}
		return $value;
	}
	public function getFilename(){
		return $this->_filename;
	}
}
?>
