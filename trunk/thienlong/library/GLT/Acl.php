<?php
class GLT_Acl extends Zend_Acl{
    public function __construct(Zend_Auth $auth){    	
		/* this is controller webadmin */
    	$this->add(new Zend_Acl_Resource('index')); // this is controller
    	$this->add(new Zend_Acl_Resource('setup')); // this is controller
        $this->add(new Zend_Acl_Resource('tool')); // this is controller
        $this->add(new Zend_Acl_Resource('account')); // this is controller
         $this->add(new Zend_Acl_Resource('user')); // this is controller
        
        /* this is controller user */
        //$this->add(new Zend_Acl_Resource('about')); // this is controller
        $db = Zend_Registry::get('connectDb');
		$select = $db->select()->from('dos_sys_models')->order('record_order ASC');
		$result = $db->fetchAll($select);
		foreach ($result as $value){
			$this->add(new Zend_Acl_Resource($value['model_id'])); // this is controller
		}
        
        $this->addRole(new Zend_Acl_Role('member'));  
        $this->addRole(new Zend_Acl_Role('user')); 
        $this->addRole(new Zend_Acl_Role('administrator'));	
    
        $this->allow('member', 'index');
        $this->allow('member', 'setup');
   		$this->allow('member', 'tool');
   		$this->allow('member', 'account');
   		$this->allow('member', 'user');
   		
   		/*$this->allow('member', 'about'); */
    	$select = $db->select()->from('dos_sys_groups_has_dos_sys_models');
		$result = $db->fetchAll($select);
		foreach ($result as $value){
			$this->$value['permission']($value['dos_sys_groups_group_name'], $value['dos_sys_models_model_id']);
		}
   		
   		$this->deny('member', 'setup', array('lang', 'function', 'config'));
   		$this->deny('member', 'account', array('add'));
   		
   		$this->allow('administrator');
    }
}