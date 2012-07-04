<?php
class Handbook_Model_HandbookCat extends GLT_Model_Cat{
	public function init(){
    	$this->_module='handbook';
        $this->_model=ucfirst($this->_module).'_Model_'.ucfirst($this->_module);
        GLT_Model_Cat::init();
    }
}