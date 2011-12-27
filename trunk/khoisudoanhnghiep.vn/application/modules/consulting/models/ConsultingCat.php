<?php
class Consulting_Model_ConsultingCat extends GLT_Model_Cat{
	public function init(){
		$this->_module='consulting';
        $this->_model=ucfirst($this->_module).'_Model_'.ucfirst($this->_module);
        GLT_Model_Cat::init();
    }
	
}