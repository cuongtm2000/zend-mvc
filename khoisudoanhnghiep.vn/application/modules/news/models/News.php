<?php
class News_Model_News extends GLT_Model_News{
	
	public function init(){
		$this->_module = 'news';
		$this->_modelCat = ucfirst($this->_module).'_Model_'.ucfirst($this->_module).'Cat';
    	GLT_Model_News::init();
    }
}