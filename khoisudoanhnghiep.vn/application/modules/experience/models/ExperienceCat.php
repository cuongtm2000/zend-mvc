<?php
class Experience_Model_ExperienceCat extends GLT_Model_Cat{

	public function init(){
    	$this->_module='experience';
        $this->_model=ucfirst($this->_module).'_Model_'.ucfirst($this->_module);
        GLT_Model_Cat::init();
    }  
}