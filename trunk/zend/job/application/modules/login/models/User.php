<?php
class Login_Model_User extends Zend_Db_Table{
	protected $_name = 'glt_usernames';
    protected $_primary = 'username';
    
    
	public function listUser(){
		$select = $this->select()->from($this->_name, array('username'));
        $result= $this->fetchAll($select)->toArray();
        return $result;
	}
	public function getEmail($username){
		$select = $this->select()->from($this->_name, array('email'))->where('username=?',$username);
        $result= $this->fetchRow($select)->toArray();
		return $result['email']; 
	}
}
