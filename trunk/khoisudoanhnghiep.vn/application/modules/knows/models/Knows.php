<?php
class Knows_Model_Knows extends GLT_Model_News{
	
	public function init(){
		$this->_module = 'knows';
    	$this->_modelCat=ucfirst($this->_module).'_Model_'.ucfirst($this->_module).'Cat';
    	GLT_Model_News::init();
    }
    
}