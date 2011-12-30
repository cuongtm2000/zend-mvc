<?php
class Product_Model_ProductCat extends GLT_Model_Cat{
	public function init(){
    	$this->_module='product';
        $this->_model=ucfirst($this->_module).'_Model_'.ucfirst($this->_module);
        GLT_Model_Cat::init();
    }  
}