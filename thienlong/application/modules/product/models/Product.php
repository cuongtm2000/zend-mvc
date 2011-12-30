<?php
class Product_Model_Product extends GLT_Model_News{
	
	public function init(){
		$this->_module = 'product';
		$this->_modelCat=ucfirst($this->_module).'_Model_'.ucfirst($this->_module).'Cat';
    	GLT_Model_News::init();
    }
}