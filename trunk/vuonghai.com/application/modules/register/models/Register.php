<?php
class Register_Model_Register extends Zend_Db_Table{
	protected $_name = 'dos_sys_users';
    protected $_primary = 'username';
    private $_config = null;
    private $_xss = NULL;

	
    public function init(){
    	$this->_config = Zend_Registry::get("config");
        $this->_xss = Zend_Registry::get('xss');
    }
    
	 public function addItem($data=NULL){
		try{
			$bind = array('username' => $this->_xss->purify(trim($data['username'])), 
						  'email' => $this->_xss->purify($data['email']),  			  
						  'password' => md5($data['password']),    				  
						  'phone' => $this->_xss->purify($data['phone']),				  
						  'user_group' => 'user',
						  'enable' => 1,
						  'dos_module_provinces_province_id' => $data['province']
						  );
			$this->insert($bind);		
		}catch(Exception $e){
		}
    }
	/*public function isExist($username)
	{
		$db = $this->getAdapter();
		$select = $db->select()->from($this->_name, array('count(username)'))
				->where('username =?',htmlspecialchars($this->_xss->purify($username)));
		return ($db->fetchOne($select)>0 )? true:false;
	}*/
}