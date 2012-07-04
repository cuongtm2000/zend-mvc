<?php
class WorldBusiness_Model_WorldBusinessCat extends GLT_Model_Cat{

	public function init(){
        $this->_model='WorldBusiness_Model_WorldBusiness';
    	$this->_module='world-business';
        GLT_Model_Cat::init();
    }  
  
}