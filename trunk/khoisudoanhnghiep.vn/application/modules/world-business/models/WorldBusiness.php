<?php
class WorldBusiness_Model_WorldBusiness extends GLT_Model_News{
	
    public function init(){
    	$this->_module = 'world-business';
		$this->_modelCat='WorldBusiness_Model_WorldBusinessCat';
    	GLT_Model_News::init();
    }
}