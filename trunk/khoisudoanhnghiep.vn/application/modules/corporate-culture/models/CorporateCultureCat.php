<?php
class CorporateCulture_Model_CorporateCultureCat extends GLT_Model_Cat{
	public function init(){
		$this->_module='corporate-culture';
        $this->_model='CorporateCulture_Model_CorporateCulture';
        GLT_Model_Cat::init();
    }
}