<?php
class Webadmin_Model_Function extends Zend_Db_Table{
	protected $_name = 'dos_sys_functions';
	protected $_primary = 'function_id';
    private $_xss = NULL;

    public function init(){
        $this->_xss = Zend_Registry::get('xss');
    }
    public function listFunction(){
        $select = $this->select()->from('dos_sys_functions', array('model_name', 'model_load', 'action', 'varname', 'function_load'))->order('model_name ASC')->order('action ASC');
        $result = $this->fetchAll($select)->toArray();
        return $result;
    }
    public function addFunction($data = NULL){
    	$model_name = $data['model_name'];
    	$model_load = $data['model_load'];
    	$action = $data['action_func'];
    	$varname = $data['varname'];
    	$function_load = $data['function_load'];

    	//delete all item
    	$this->delAllfunction();
    	$i = 0;
		foreach($model_name as $value){
			if(!empty($model_name[$i]) && !empty($model_load[$i]) && !empty($action[$i]) && !empty($varname[$i]) && !empty($function_load[$i])){
				$bind = array('model_name' => htmlspecialchars($this->_xss->purify(trim($model_name[$i]))), 'model_load' => htmlspecialchars($this->_xss->purify(trim($model_load[$i]))), 'action' => htmlspecialchars($this->_xss->purify(trim($action[$i]))), 'varname' => htmlspecialchars($this->_xss->purify(trim($varname[$i]))), 'function_load' => htmlspecialchars($this->_xss->purify(trim($function_load[$i]))));
        		$this->insert($bind);
			}
			$i++;
		}
    }
	public function delAllfunction(){
        $where = '';
        $this->delete($where);
    }
}