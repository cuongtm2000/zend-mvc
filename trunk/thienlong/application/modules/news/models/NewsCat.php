<?php
class News_Model_NewsCat extends GLT_Model_Cat{
	public function init(){
    	$this->_module='news';
        $this->_model=ucfirst($this->_module).'_Model_'.ucfirst($this->_module);
        GLT_Model_Cat::init();
    }  
}