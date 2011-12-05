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
        $langen = $data['langen'];
        $langfr = $data['langfr'];
        
        //add new langname
    	$langnamenew = $data['langnamenew'];
        $langnew = $data['langnew'];
        $langnewen = $data['langnewen'];
        $langnewfr = $data['langnewfr'];
        
        //delete all item
    	$this->delListlang();
    	
    	$i = 0;
        foreach($langname as $value){
        	if(!empty($langname[$i])){
            	$data = array('lang_name' => htmlspecialchars($this->_xss->purify($langname[$i])), 'lang' => htmlspecialchars($this->_xss->purify($lang[$i])), 'langen' => htmlspecialchars($this->_xss->purify($langen[$i])), 'langfr' => htmlspecialchars($this->_xss->purify($langfr[$i])));
        		$this->insert($data);
            }
            $i++;
        }
    	
    	$j = 0;
        foreach($langnamenew as $value){
        	if(!empty($langnamenew[$j])){
            	$data = array('lang_name' => htmlspecialchars($this->_xss->purify($langnamenew[$j])), 'lang' => htmlspecialchars($this->_xss->purify($langnew[$j])), 'langen' => htmlspecialchars($this->_xss->purify($langnewen[$j])), 'langfr' => htmlspecialchars($this->_xss->purify($langnewfr[$j])));
        		$this->insert($data);
            }
            $j++;
        }
    }
}