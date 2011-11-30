<?php
class Webadmin_Model_User extends Zend_Db_Table{
	protected $_name = 'dos_sys_users';
	protected $_primary = 'username';
	
	private $_config = null;
    private $_xss = NULL;
    private $_web = NULL;
	
	
    public function countUser(){
        $db = Zend_Registry::get('connectDb');
    	$select = $db->select()
    					->from($this->_name, 
    						array('count(username) as totalItem'))->where('user_group =?', 'member');
		return $db->fetchOne($select);
    }

    public function init(){
    	$this->_config = Zend_Registry::get("config");
        $this->_xss = Zend_Registry::get('xss');
        $this->_web = Zend_Registry::get("web");
    }
    
	public function getListmenu($data = NULL)	{
	
		//Get paging number
    	$paginator = $data['paginator'];
    	if ($paginator['itemCountPerPage']>0){
			$page = $paginator['currentPage'];
			$rowCount = $paginator['itemCountPerPage'];
		}

    	$select = $this->select()->from($this->_name, array('*'))
							    ->order('create_date DESC')
							   ->limitPage($page, $rowCount);
							   
		return $this->fetchAll($select)->toArray();
	
    }
	    
	public function activeItem($data = NULL){	
		$flag = isset($data['factive']) ? $data['factive'] : 'disable';
		$ids  = isset($data['ids']) ? $data['ids'] : '';
		if ( !empty($ids) ){
			if ( !is_array($ids) ){
				$record_id[0]	= $ids;
			}
			else{
				$record_id		= $ids;
			}
			unset($ids);
			
			$where = 'username = -1';
			foreach ($record_id as $value)
				$where .= ' OR username= \''.$value.'\'';
				
			if($flag){
				//show or hidden
				$active	= ($flag == "enable") ? 1 : 0;			
				$data = array('enable' => $active);
				$this->update($data, $where);
			}else{
				//delete
				$this->delete($where);
			}
		}	
    }

}