<?php
class Handbook_Model_Handbook extends GLT_Model_News{
	
    public function init(){
    	$this->_module='handbook';
    	$this->_modelCat=ucfirst($this->_module).'_Model_'.ucfirst($this->_module).'Cat';
    	GLT_Model_News::init();
    }
}