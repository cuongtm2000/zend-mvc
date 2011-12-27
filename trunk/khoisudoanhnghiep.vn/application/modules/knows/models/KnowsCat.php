<?php
class Knows_Model_KnowsCat extends GLT_Model_Cat{
	public function init(){
    	$this->_module='knows';
        $this->_model=ucfirst($this->_module).'_Model_'.ucfirst($this->_module);
        GLT_Model_Cat::init();
    }  
}