<?php
class Consulting_Model_Consulting extends GLT_Model_News{
    public function init(){
    	$this->_module = 'consulting';
    	$this->_modelCat=ucfirst($this->_module).'_Model_'.ucfirst($this->_module).'Cat';
		GLT_Model_News::init();
    }
}