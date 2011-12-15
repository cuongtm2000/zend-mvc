<?php
class User_Model_Log extends Zend_Db_Table{
	protected $_name = 'dos_module_userlog';
    protected $_primary = 'record_id';
    protected $_config = null;
    private $_xss = NULL;	
	private $_username;
    
    public function init(){
    	$this->_config = Zend_Registry::get("config");
        $this->_xss = Zend_Registry::get('xss');
    	//Get info login
    	$auth = Zend_Auth::getInstance();
    	if ($auth->hasIdentity()){
			$this->_username = $auth->getIdentity()->username;
    	}
        
    }
	public function addItem($detail,$user,$user_r,$value,$type){
	   	try {
	   		$data = array(	'detail' => $detail, 
	   						'username' => $user, 
	   						'user_receive' => $user_r, 
	   						'value' => $value,
	   						'record_type'=>$type);
    		$this->insert($data);
	   	} catch (Exception $e) {
	   		echo '<pre>';print_r($e);echo '</pre>';
	   	}	
    }
    public function getSolanQuanlyThang($user) {
    	$db = Zend_Registry::get('connectDb');
    	$select = $db->select()->from($this->_name, array('COUNT(record_id)'))
					->where('user_receive =?',$this->_username)
					->where('record_type =1')
					->where('month(time) =?',date('n'));		   
		return $db->fetchOne($select);
    }

	public function listAll($data= NULL){
		//Get paging number
    	$paginator = $data['paginator'];
    	if ($paginator['itemCountPerPage']>0){
			$page = $paginator['currentPage'];
			$rowCount = $paginator['itemCountPerPage'];
		}
		
    	$select = $this->select()->from($this->_name, array('*'))
							   ->order('time DESC')
							   ->where('username =?',$this->_username)
							   ->orWhere('user_receive =?',$this->_username)
							   ->limitPage($page, $rowCount);
		return  $this->fetchAll($select)->toArray();
	
    }
	public function countAllOfUser(){
		$db = Zend_Registry::get('connectDb');
    	$select = $db->select()->from($this->_name, array('COUNT(record_id)'))
					->where('username =?',$this->_username)
					->orWhere('user_receive =?',$this->_username);							   
		return $db->fetchOne($select);
    }
}