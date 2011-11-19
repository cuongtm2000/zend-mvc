<?php
class Webadmin_Model_Lang extends Zend_Db_Table{
	protected $_name = 'dos_sys_langs';
    protected $_primary = 'lang_name';
    private $_xss = NULL;

    public function init(){
        $this->_xss = Zend_Registry::get('xss');
    }
    public function getListlang(){
        $select = $this->select()->from($this->_name, array('*'))->order('lang_name ASC');
        $result = $this->fetchAll($select)->toArray();
        return $result;
    }
    public function delListlang(){
        $where = '';
        $this->delete($where);
    }
    public function addListlang($data = NULL){
        $langname = $data['langname'];
        $lang = $data['lang'];
        $langen = isset($data['langen']) ? $data['langen'] : '';
        $langfr = isset($data['langfr']) ? $data['langfr'] : '';
        
        //add new langname
    	$langnamenew = isset($data['langnamenew']) ? $data['langnamenew'] : '';
        $langnew = isset($data['langnew']) ? $data['langnew'] : '';
        $langnewen = isset($data['langnewen']) ? $data['langnewen'] : '';
        $langnewfr = isset($data['langnewfr']) ? $data['langnewfr'] : '';
        
        //delete all item
    	$this->delListlang();
    	
    	$i = 0;
        foreach($langname as $value){
        	if(!empty($langname[$i])){
            	$bind = array('lang_name' => isset($langname[$i]) ? htmlspecialchars($this->_xss->purify(trim($langname[$i]))) : '', 'lang' => isset($lang[$i]) ? htmlspecialchars($this->_xss->purify(trim($lang[$i]))) : '', 'langen' => isset($langen[$i]) ? htmlspecialchars($this->_xss->purify(trim($langen[$i]))) : '', 'langfr' => isset($langfr[$i]) ? htmlspecialchars($this->_xss->purify(trim($langfr[$i]))) : '');
        		$this->insert($bind);
            }
            $i++;
        }
    	
    	$j = 0;
    	if($langnamenew){
	        foreach($langnamenew as $value){
	        	if(!empty($langnamenew[$j])){
	            	$bind = array('lang_name' => isset($langnamenew[$j]) ? htmlspecialchars($this->_xss->purify(trim($langnamenew[$j]))) : '', 'lang' => isset($langnew[$j]) ? htmlspecialchars($this->_xss->purify(trim($langnew[$j]))) : '', 'langen' => isset($langnewen[$j]) ? htmlspecialchars($this->_xss->purify(trim($langnewen[$j]))) : '', 'langfr' => isset($langnewfr[$j]) ? htmlspecialchars($this->_xss->purify(trim($langnewfr[$j]))) : '');
	        		$this->insert($bind);
	            }
	            $j++;
	        }
    	}
    }
}