<?php
class Entertainment_Model_Entertainment extends GLT_Model_News{
	
    public function init(){
		$this->_module='entertainment';
    	$this->_modelCat=ucfirst($this->_module).'_Model_'.ucfirst($this->_module).'Cat';
    	GLT_Model_News::init();
    }
}