<?php
class Webadmin_Bootstrap extends Zend_Application_Module_Bootstrap{
    public function _initMenu(){
        $menu = $this->listMenu();
        Zend_Registry::set("listmenu", $menu);
    }
    public function listMenu(){
    	$db = Zend_Registry::get('connectDb');

    	$auth = Zend_Auth::getInstance();
    	if ($auth->hasIdentity()){
	        $infoUser = $auth->getIdentity();
	        if($infoUser->user_group == 'administrator'){
	        	$select = $db->select()->from(array('g' => 'dos_sys_groups_has_dos_sys_models'), array('dos_sys_models_model_id AS name'))
								   	   ->join(array('m' => 'dos_sys_models'), 'g.dos_sys_models_model_id = m.model_id')
								       ->order('record_order ASC');
	        }else{
	        	$select = $db->select()->from(array('g' => 'dos_sys_groups_has_dos_sys_models'), array('dos_sys_models_model_id AS name'))
	        						   ->join(array('m' => 'dos_sys_models'),'g.dos_sys_models_model_id = m.model_id')
	        						   ->where('dos_sys_groups_group_name =?', 'member')->where('permission =?', 'allow')
								       ->order('record_order ASC');	
	        }
			return $db->query($select)->fetchAll();
    	}
    }
}