<?php
class CorporateCulture_Model_CorporateCulture extends GLT_Model_News{
	
    public function init(){
    	$this->_module = 'corporate-culture';
    	$this->_modelCat='CorporateCulture_Model_CorporateCultureCat';
		GLT_Model_News::init();
    }
}