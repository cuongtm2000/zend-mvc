<?php
class Job_Model_Job extends Zend_Db_Table{
	protected $_name = 'dos_module_job';
    protected $_primary = 'record_id';
    private $_lang = NULL;
    private $_config = NULL;
    private $_xss = NULL;

    public function init(){
    	$this->_lang = Zend_Registry::get("lang");
    	$this->_config = Zend_Registry::get("config");
        $this->_xss = Zend_Registry::get('xss');
    }
	//Fron end - Get item hiện thị trang chủ
	public function getHomeRecord(){
		$where = 'hot = 1 AND enable = 1';
		$order = 'record_order ASC';
        $count = 0;
        $offset = 1;
        
		$result = $this->fetchRow($where, $order, $count, $offset);
		if(count($result) > 0){
			//Update hits
			$this->update(array('hits' => $result['hits']+1), 'record_id ='.$result['record_id']);
			$result = $result->toArray();
		}
		return $result;
	}
	public function getFristRecord(){
        $db = $this->getAdapter();
        $where = $db->quoteInto('enable = ?', '1');
        $order = 'record_order ASC';
        $count = 0;
        $offset = 1;
        
        $rowset = $this->fetchRow($where, $order, $count, $offset);
		return $rowset;
	}
    public function getListmenu(){
         $select = $this->select()->from('dos_module_job', array('record_id', 'title'.LANG))
                                    ->where('enable = ?',1)
                                    ->order('record_order ASC')
                                    ->order('posted_date DESC');
        $result= $this->fetchAll($select)->toArray();
        return $result;
    }
    public function getDetail($id){
        $select = $this->select()->from($this->_name, array('title'.LANG, 'content'.LANG, 'hits'))
                                 ->where('enable = ?', 1)
                                 ->where('record_id = ?', $id);
        $result = $this->fetchRow($select)->toArray();
        //Update hits
		$this->update(array('hits' => $result['hits']+1), 'record_id ='.$id);

        return $result;
    }
	public function menuAdmin(){
        $menu[] = array('url'=>'job', 'name'=>'Bài viết', 'nameen'=>'Post', 'namefr'=>'Post', 'num'=>$this->countItem());
        return $menu;
    }
    public function addItem($data = NULL){
    	$filename = null;
    	if (!empty($_FILES['file']['name'])){
    		$upload = new GLT_File_Upload();
    		$upload->upload($_FILES['file'], $this->_config['job_width_thumb'], $this->_config['job_height_thumb'], $this->_config['sys_size_upload'], PUBLIC_PATH.'/userfiles/images/job/');
    		
	    	if($upload->isVail() == false){
				$filename = $upload->transferFile(); //upload file
			}else{
				print_r($upload->_errors);
			}
    	}
    	
    	//Get max record
		$db = $this->getAdapter();
		$select = $db->select()->from($this->_name, array('max(record_order) as max'));
		$max_record = $db->fetchOne($select)+1;
    	
    	$data = array('title' => htmlspecialchars($this->_xss->purify($data['title'])), 'titleen' => htmlspecialchars($this->_xss->purify($data['titleen'])), 'titlefr' => htmlspecialchars($this->_xss->purify($data['titlefr'])), 'content' => htmlspecialchars($this->_xss->purify($data['detail'])), 'contenten' => htmlspecialchars($this->_xss->purify($data['detailen'])), 'contentfr' => htmlspecialchars($this->_xss->purify($data['detailfr'])), 'pic_full' => $filename, 'record_order' => $max_record, 'extra_field1' => htmlspecialchars($this->_xss->purify($data['extra1'])), 'extra_field2' => htmlspecialchars($this->_xss->purify($data['extra2'])), 'hot' => htmlspecialchars($this->_xss->purify($data['hot'])), 'enable' => htmlspecialchars($this->_xss->purify($data['active'])));
    	$this->insert($data);
    }
    public function editItem($data = NULL){
    	$where = 'record_id = '.$data['id'];
    	if(count($this->fetchRow($where))){
    		return $this->fetchRow($where)->toArray();
    	}else{
    		$lang = Zend_Registry::get("lang");
    		echo $lang['norecord'];
    	}
    }
    public function saveItem($data = NULL){
    	$filename = $data['fileold'];
    	if (!empty($_FILES['file']['name'])){
    		$upload = new GLT_File_Upload();
    		$upload->upload($_FILES['file'], $this->_config['job_width_thumb'], $this->_config['job_height_thumb'], $this->_config['sys_size_upload'], PUBLIC_PATH.'/userfiles/images/job/');
    		
	    	if($upload->isVail() == false){
				$filename = $upload->transferFile(); //upload file
				$upload->removeFile(PUBLIC_PATH.'/userfiles/images/job/'.$data['fileold']);
			}else{
				print_r($upload->_errors);
			}
    	}
    	
    	$where = 'record_id = '.$data['id'];
    	$bind = array('title' => htmlspecialchars($this->_xss->purify($data['title'])), 'titleen' => htmlspecialchars($this->_xss->purify($data['titleen'])), 'titlefr' => htmlspecialchars($this->_xss->purify($data['titlefr'])), 'content' => htmlspecialchars($this->_xss->purify($data['detail'])), 'contenten' => htmlspecialchars($this->_xss->purify($data['detailen'])), 'contentfr' => htmlspecialchars($this->_xss->purify($data['detailfr'])), 'pic_full' => $filename, 'extra_field1' => htmlspecialchars($this->_xss->purify($data['extra1'])), 'extra_field2' => htmlspecialchars($this->_xss->purify($data['extra2'])), 'hot' => htmlspecialchars($this->_xss->purify($data['hot'])), 'enable' => htmlspecialchars($this->_xss->purify($data['active'])));
    	$this->update($bind, $where);
    }
    
    public function countItem(){
    	$db = $this->getAdapter();
    	$select = $db->select()->from('dos_module_job', array('count(record_id) as totalItem'));
		return $db->fetchOne($select);
    }
    public function listItem($data = NULL){
    	//get paging number
    	$paginator = $data['paginator'];
    	if ($paginator['itemCountPerPage']>0){
			$page = $paginator['currentPage'];
			$rowCount = $paginator['itemCountPerPage'];
		}
			
    	$select = $this->select()->from('dos_module_job', array('record_id', 'title'.LANG, 'hits', 'posted_date', 'record_order', 'hot', 'enable'))
    							 ->order('record_order ASC')
    							 ->order('posted_date DESC')
    							 ->limitPage($page,$rowCount);
        
        $result = $this->fetchAll($select);
    	if(count($result) > 0){
    		$result = $result->toArray();
    	}else{
    		$result = $this->_lang['norecord'];;
    	}
        return $result;
    }
    public function activeItem($data = NULL){
    	$flag = isset($data['factive']) ? $data['factive'] : 'disable';
		$ids  = isset($data['ids']) ? $data['ids'] : '';
		$orders		= isset($data['orders']) ? $data['orders'] : '';
		$sort		= isset($data['sort']) ? $data['sort'] : '';
		
		if($sort){
			if ( is_array($orders) ){
				while (list($id, $order) = each($orders)){
					$id		= intval($id);
					$order	= intval($order);
					if ( $id && $order ){					
						$this->update(array('record_order' => $order), 'record_id=' . $id);
					}
				}
			}
		}else{
			if ( !empty($ids) ){
				if ( !is_array($ids) ){
					$record_id[0]	= $ids;
				}
				else{
					$record_id		= $ids;
				}
				unset($ids);
				
				if($flag){
					//show or hidden
					$active	= ($flag == "enable") ? 1 : 0;
					$where = 'record_id = -1';
					$data = array('enable' => $active);
					
					foreach ($record_id as $value){
						$id = intval($value);
						if ($id){
							$where .= ' OR record_id=' . $id;
						}
					}
		
					$this->update($data, $where);
				}else{
					//delete
					$where = 'record_id = -1';
					foreach ($record_id as $value){
						$id = intval($value);
						if ($id){
							$where .= ' OR record_id=' . $id;
							$this->delPic($id);
						}
					}
					
					$this->delete($where);
				}
			}
		}
    }
	private function delPic($id){
		$select = $this->select()->from($this->_name, array('pic_full'))->where('record_id =?', $id);		
		$result = $this->fetchRow($select)->toArray();
		
		@unlink(PUBLIC_PATH.'/userfiles/images/job/'.$result['pic_full']);
    }
}