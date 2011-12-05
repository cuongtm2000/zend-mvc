<?php
class Default_Model_Provinces extends Zend_Db_Table{
	protected $_name = 'dos_module_provinces';
    protected $_primary = 'province_id';
    
    public function listProvinces(){
    	$select = $this->select()->from($this->_name, array('province_id', 'province_name'));
        return $this->fetchAll($select)->toArray();
    }
 	public function getName($id){
    	$select = $this->select()->from($this->_name, array( 'province_name'))
    		->where('province_id=?',$id);
        $r= $this->fetchRow($select);
        return $r['province_name'];
    }
}