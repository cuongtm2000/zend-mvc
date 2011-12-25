<?php
class Webadmin_Model_Web extends Zend_Db_Table{
	protected $_name = 'dos_sys_webs';
	protected $_primary = 'web_name';
    private $_xss = NULL;

    public function init(){
        $this->_xss = Zend_Registry::get('xss');
    }
    public function listWeb(){
        $select = $this->select()->from($this->_name, array('web_name', 'web_value'))->order('web_name ASC');
        $result = $this->fetchAll($select)->toArray();
        return $result;
    }
    public function addWeb($data = NULL){
    	$web_name = $data['web_name'];
    	$web_value = $data['web_value'];
    	
    	$web_namenew = $data['web_namenew'];
    	$web_valuenew = $data['web_valuenew'];
    	
    	//delete all item
    	$this->delAllweb();
    	
    	$i = 0;
		foreach($web_name as $value){
			if(!empty($web_name[$i]) && !empty($web_value[$i])){
				$data = array('web_name' => $this->_xss->purify($web_name[$i]), 'web_value' => $this->_xss->purify($web_value[$i]));
        		$this->insert($data);
			}
			$i++;
		}
		
    	$j = 0;
		foreach($web_namenew as $value){
			if(!empty($web_namenew[$j]) && !empty($web_valuenew[$j])){
				$data = array('web_name' => $this->_xss->purify($web_namenew[$j]), 'web_value' => $this->_xss->purify($web_valuenew[$j]));
        		$this->insert($data);
			}
			$j++;
		}
    }
	public function delAllweb(){
        $where = '';
        $this->delete($where);
    }
}