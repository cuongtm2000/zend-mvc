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
				$data = array('model_name' => $this->_xss->purify($model_name[$i]), 'model_load' => $this->_xss->purify($model_load[$i]), 'action' => $this->_xss->purify($action[$i]), 'varname' => $this->_xss->purify($varname[$i]), 'function_load' => $this->_xss->purify($function_load[$i]));
        		$this->insert($data);
			}
			$i++;
		}
    }
	public function delAllfunction(){
        $where = '';
        $this->delete($where);
    }
}