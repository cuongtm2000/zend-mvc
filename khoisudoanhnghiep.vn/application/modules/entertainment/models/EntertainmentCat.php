<?php
class Entertainment_Model_EntertainmentCat extends GLT_Model_Cat{
	public function init(){
    	$this->_module='entertainment';
        $this->_model=ucfirst($this->_module).'_Model_'.ucfirst($this->_module);
        GLT_Model_Cat::init();
    }  
}