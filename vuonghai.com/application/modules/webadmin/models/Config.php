<?php
class Webadmin_Model_Config extends Zend_Db_Table{
	protected $_name = 'dos_sys_configs';
	protected $_primary = 'config_name';
    private $_xss = NULL;

    public function init(){
        $this->_xss = Zend_Registry::get('xss');
    }
    public function listConfig(){
        $select = $this->select()->from($this->_name, array('config_name', 'config_value', 'config_choices'))->order('config_name ASC');
        $result = $this->fetchAll($select)->toArray();
        return $result;
    }
    public function addConfig($data = NULL){
    	$config_name = $data['config_name'];
    	$config_value = $data['config_value'];
    	$config_choices = $data['config_choices'];
    	
    	$config_namenew = $data['config_namenew'];
    	$config_valuenew = $data['config_valuenew'];
    	$config_choicesnew = $data['config_choicesnew'];
    	
    	//delete all item
    	$this->delAllconfig();
    	
    	$i = 0;
		foreach($config_name as $value){
			if(!empty($config_name[$i]) && !empty($config_value[$i])){
				$data = array('config_name' => htmlspecialchars($this->_xss->purify($config_name[$i])), 'config_value' => htmlspecialchars($this->_xss->purify($config_value[$i])), 'config_choices' => htmlspecialchars($this->_xss->purify($config_choices[$i])));
        		$this->insert($data);
			}
			$i++;
		}
		
    	$j = 0;
		foreach($config_namenew as $value){
			if(!empty($config_namenew[$j]) && !empty($config_valuenew[$j])){
				$data = array('config_name' => htmlspecialchars($this->_xss->purify($config_namenew[$j])), 'config_value' => htmlspecialchars($this->_xss->purify($config_valuenew[$j])), 'config_choices' => htmlspecialchars($this->_xss->purify($config_choicesnew[$j])));
        		$this->insert($data);
			}
			$j++;
		}
    }
	public function delAllconfig(){
        $where = '';
        $this->delete($where);
    }
}