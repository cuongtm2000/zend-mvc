<?php
///////////////////////////////////////////////////////////////////////////////
//                                                                           //
//   Program Name         : Image Resizer	 		                         //
//   Release Version      : 1.0                                              //
//   Program Author       : Harish Chauhan          			             //
//   Modify		          : Thanhansoft                                      //
//   Supplied by          : http://grouplaptrinh.com                         //
//   Distribution         : Thanhansoft										 //
//                                                                           //
//                       GLT Team 2/5/2011                                   //
///////////////////////////////////////////////////////////////////////////////

define("HAR_AUTO_NAME",1);
class GLT_File_Images{
	private $imgFile = '';
	private $imgWidth=  0;
	private $imgHeight = 0;
	private $imgType = '';
	private $imgAttr = '';
	private $type = NULL;
	private $_img = NULL;
	public $_error = '';
	private $_quality = '';
	
	/**
	 * Constructor
	 *
	 * @param [String $imgFile] Image File Name
	 * @return Resizeimage (Class Object)
	 */
	
	function Resizeimage($imgFile = ''){
		if (!function_exists("imagecreate")){
			$this->_error="Error: GD Library is not available.";
			return false;
		}

		$this->type=Array(1 => 'GIF', 2 => 'JPG', 3 => 'PNG', 4 => 'SWF', 5 => 'PSD', 6 => 'BMP', 7 => 'TIFF', 8 => 'TIFF', 9 => 'JPC', 10 => 'JP2', 11 => 'JPX', 12 => 'JB2', 13 => 'SWC', 14 => 'IFF', 15 => 'WBMP', 16 => 'XBM');
		if(!empty($imgFile))
			$this->setImage($imgFile);
	}
	/**
	 * Error occured while resizing the image.
	 *
	 * @return String 
	 */
	function error(){
		return $this->_error;
	}
	
	/**
	 * Set image file name
	 *
	 * @param String $imgFile
	 * @return void
	 */
	function setImage($imgFile){
		$this->imgFile=$imgFile;
		return $this->_createImage();
	}
	/**
	 * 
	 * @return void
	 */
	function close(){
		return @imagedestroy($this->_img);
	}
	/**
	 * Resize a image to given width and height and keep it's current width and height ratio
	 * 
	 * @param Number $imgwidth
	 * @param Numnber $imgheight
	 * @param String $newfile
	 */
	function resize_limitwh($imgwidth,$imgheight,$newfile=NULL,$quality='100'){
		$this->_quality = $quality;
		$image_per = 100;
		list($width, $height, $type, $attr) = @getimagesize($this->imgFile);
		if($width > $imgwidth && $imgwidth > 0)
			$image_per = (double)(($imgwidth * 100) / $width);

		if(floor(($height * $image_per)/100)>$imgheight && $imgheight > 0)
			$image_per = (double)(($imgheight * 100) / $height);

		$this->resize_percentage($image_per,$newfile);
	}
	/**
	 * Resize an image to given percentage.
	 *
	 * @param Number $percent
	 * @param String $newfile
	 * @return Boolean
	 */
	function resize_percentage($percent=100,$newfile=NULL){
		$newWidth=($this->imgWidth*$percent)/100;
		$newHeight=($this->imgHeight*$percent)/100;
		return $this->resize($newWidth,$newHeight,$newfile);
	}
	/**
	 * Resize an image to given X and Y percentage.
	 *
	 * @param Number $xpercent
	 * @param Number $ypercent
	 * @param String $newfile
	 * @return Boolean
	 */
	function resize_xypercentage($xpercent=100,$ypercent=100,$newfile=NULL){
		$newWidth=($this->imgWidth*$xpercent)/100;
		$newHeight=($this->imgHeight*$ypercent)/100;
		return $this->resize($newWidth,$newHeight,$newfile);
	}
	
	/**
	 * Resize an image to given width and height
	 *
	 * @param Number $width
	 * @param Number $height
	 * @param String $newfile
	 * @return Boolean
	 */
	function resize($width,$height,$newfile=NULL){
		if(empty($this->imgFile)){
			$this->_error="File name is not initialised.";
			return false;
		}
		if($this->imgWidth<=0 || $this->imgHeight<=0){
			$this->_error="Could not resize given image";
			return false;
		}
		if($width<=0)
			$width=$this->imgWidth;
		if($height<=0)
			$height=$this->imgHeight;
			
		return $this->_resize($width,$height,$newfile);
	}
	
	/**
	 * Get the image attributes
	 * @access Private
	 * 		
	 */
	function _getImageInfo(){
		@list($this->imgWidth,$this->imgHeight,$type,$this->imgAttr)=@getimagesize($this->imgFile);
		$this->imgType=$this->type[$type];
	}
	
	/**
	 * Create the image resource 
	 * @access Private
	 * @return Boolean
	 */
	function _createImage(){
		$this->_getImageInfo($this->imgFile);
		if($this->imgType=='GIF'){
			$this->_img=@imagecreatefromgif($this->imgFile);
		}
		elseif($this->imgType=='JPG'){
			$this->_img=@imagecreatefromjpeg($this->imgFile);
		}
		elseif($this->imgType=='PNG'){
			$this->_img=@imagecreatefrompng($this->imgFile);
		}			
		if(!$this->_img || !@is_resource($this->_img)){
			$this->_error="Error loading ".$this->imgFile;
			return false;
		}
		return true;
	}
	
	/**
	 * Function is used to resize the image
	 * 
	 * @access Private
	 * @param Number $width
	 * @param Number $height
	 * @param String $newfile
	 * @return Boolean
	 */
	function _resize($width,$height,$newfile=NULL){
		if (!function_exists("imagecreate")){
			$this->_error="Error: GD Library is not available.";
			return false;
		}

		$newimg=@imagecreatetruecolor($width,$height);
		//imagecolortransparent( $newimg, imagecolorat( $newimg, 0, 0 ) );
		
		if($this->imgType=='GIF' || $this->imgType=='PNG'){
			/** Code to keep transparency of image **/
			$colorcount = imagecolorstotal($this->_img);
			if ($colorcount == 0) $colorcount = 256;
			imagetruecolortopalette($newimg,true,$colorcount);
			imagepalettecopy($newimg,$this->_img);
			$transparentcolor = imagecolortransparent($this->_img);
			imagefill($newimg,0,0,$transparentcolor);
			imagecolortransparent($newimg,$transparentcolor); 
		}

		@imagecopyresampled ( $newimg, $this->_img, 0,0,0,0, $width, $height, $this->imgWidth,$this->imgHeight);

		if($newfile===HAR_AUTO_NAME){
			if(@preg_match("/\..*+$/",@basename($this->imgFile),$matches))
		   		$newfile=@substr_replace($this->imgFile,"_har",-@strlen($matches[0]),0);			
		}
		elseif(!empty($newfile)){
			if(!@preg_match("/\..*+$/",@basename($newfile)))
			{
				if(@preg_match("/\..*+$/",@basename($this->imgFile),$matches))
				   $newfile=$newfile.$matches[0];
			}
		}

		if($this->imgType=='GIF'){
			if(!empty($newfile))
				@imagegif($newimg,$newfile);
			else
			{
				@header("Content-type: image/gif");
				@imagegif($newimg);
			}
		}
		elseif($this->imgType=='JPG'){
			if(!empty($newfile))
				@imagejpeg($newimg,$newfile, $this->_quality);
			else{
				@header("Content-type: image/jpeg");
				@imagejpeg($newimg);
			}
		}
		elseif($this->imgType=='PNG'){
			if(!empty($newfile)){
				// *** Scale quality from 0-100 to 0-9
				$scaleQuality = round(($this->_quality/100) * 9);
				// *** Invert quality setting as 0 is best, not 9
				$scaleQuality = 9 - $scaleQuality;
				@imagepng($newimg,$newfile, $scaleQuality);
			}
			else{
				@header("Content-type: image/png");
				@imagepng($newimg);
			}
		}
		@imagedestroy($newimg);
	}
}