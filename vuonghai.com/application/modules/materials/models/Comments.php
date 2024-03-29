<?php
class Materials_Model_Comments extends Zend_Db_Table{
	protected $_name = 'dos_module_materials_comments';
    protected $_primary = 'comment_id';
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
    
	 public function addItem($data=NULL){
		try{
			$bind = array('comment_title' => $this->_xss->purify(trim($data['commenttitle'])), 
						  'comment_content' => $this->_xss->purify($data['commentdetail']),    				  
						  'dos_module_item_record_id' => $this->_xss->purify($data['id']),    				  
						  'dos_sys_users_username' => $this->_xss->purify($this->_username),
							'comment_enable' => 0)
			;
			return $this->insert($bind);
		
		}catch(Exception $e){
			echo '<pre>';
			print_r($e);
			echo '</pre>';
		}
    }
	public function listItem($data = NULL){
    	/*/get paging number
    	$paginator = $data['paginator'];
    	if ($paginator['itemCountPerPage']>0){
			$page = $paginator['currentPage'];
			$rowCount = $paginator['itemCountPerPage'];
		}*/
		
    	$select = $this->select()->from($this->_name, 
									array('comment_id', 'comment_title', 'comment_content', 'dos_sys_users_username','comment_date'))
    						   ->where('comment_enable = 1')
							   ->where('dos_module_item_record_id = ?',$data['id'])
    						   ->order('comment_date ASC')
    						   //->limitPage($page,$rowCount)
							   ;
		
        $result = $this->fetchAll($select)->toArray();
        return $result;
    }
	public function listItems($data = NULL){
    	//get paging number
    	$paginator = $data['paginator'];
    	if ($paginator['itemCountPerPage']>0){
			$page = $paginator['currentPage'];
			$rowCount = $paginator['itemCountPerPage'];
		}		
    	$select = $this->select()->from($this->_name, 
									array('comment_id', 'comment_title', 'comment_content', 'comment_enable','dos_sys_users_username','dos_module_item_record_id','comment_date'))
    						   ->order('comment_date DESC')
    						   ->limitPage($page,$rowCount)
							   ;
        
		$result = $this->fetchAll($select)->toArray();
        
		return $result;
    }
	public function getItem($id){
		$db = $this->getAdapter();
    	$select = $db->select()->from($this->_name,array('comment_title', 'comment_content'))
    						   ->where('comment_id = ?',$id);
        return $db->fetchRow($select);
    }
	public function countItem(){
    	$db = $this->getAdapter();
    	$select = $db->select()->from($this->_name, array('count(comment_id)'));
		return $db->fetchOne($select);
    }
	public function delItem($id){
        $this->delete('comment_id='.$id);
    }
	public function delItemFrom($post_id){
        $this->delete('dos_module_item_record_id='.$post_id);
    }
	public function enableItem($id){
		try{
			$r=$this->update(array('comment_enable' => 1),'comment_id=\''.$id.'\'');
		}catch( Exception $e){
			echo '<pre>';print_r($e);echo '</pre>';	
		}
    }
	public function updateItem($data=NULL){
		try{
			$r=$this->update(array(
				'comment_title' => $this->_xss->purify(trim($data['commenttitle'])), 
				'comment_content' => $this->_xss->purify($data['commentdetail'])
				),'comment_id=\''.$data['id'].'\'');
		}catch( Exception $e){
			echo '<pre>';print_r($e);echo '</pre>';	
		}
    }
	public function disableItem($id){
		try{
			$r=$this->update(array('comment_enable' => 0),'comment_id=\''.$id.'\'');
		}catch( Exception $e){
			echo '<pre>';print_r($e);echo '</pre>';	
		}
    }

}