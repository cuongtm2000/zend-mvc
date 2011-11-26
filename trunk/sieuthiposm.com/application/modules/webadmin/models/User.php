<?php
class Webadmin_Model_User extends Zend_Db_Table{
	protected $_name = 'dos_sys_users';
	protected $_primary = 'username';

    public function countUser(){
        $db = Zend_Registry::get('connectDb');
    	$select = $db->select()->from($this->_name, array('count(username) as totalItem'))->where('user_group =?', 'member');
		return $db->fetchOne($select);
    }
}