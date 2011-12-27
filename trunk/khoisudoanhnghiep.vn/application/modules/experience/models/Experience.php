<?php
class Experience_Model_Experience extends GLT_Model_News{
	
    public function init(){
    	$this->_module='experience';
    	$this->_modelCat=ucfirst($this->_module).'_Model_'.ucfirst($this->_module).'Cat';
		GLT_Model_News::init();
    }
    
 }