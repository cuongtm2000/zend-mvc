<?php
class About_Model_About extends Zend_Db_Table{
	protected $_name = 'dos_module_about';
    protected $_primary = 'record_id';
    private $_lang = NULL;
    private $_xss = NULL;
    
	public function init(){
    	$this->_lang = Zend_Registry::get("lang");
    	$this->_xss = Zend_Registry::get('xss');
    }
	//Front end - Get 1 item hiện thị trang chủ
	public function getHomeRecord(){
		$where = 'hot = 1 AND enable = 1';
		$order = 'record_order DESC';
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
	//Front end - Get 1 item đầu tiên
	public function getFristRecord(){
		$where = 'hot = 0 AND enable = 1';
		$order = 'record_order ASC';
        $count = 0;
        $offset = 1;
        
		$result = $this->fetchRow($where, $order, $count, $offset);
		//Update hits
		$this->update(array('hits' => $result['hits']+1), 'record_id ='.$result['record_id']);
			
		return $result;
	}
	//Front end - Get danh sách item
    public function getListmenu(){
         $select = $this->select()->from($this->_name, array('record_id', 'title'.LANG))
         						  ->where('hot = ?', 0)
                                  ->where('enable = ?', 1)
                                  ->order('record_order DESC');
        $result= $this->fetchAll($select)->toArray();
        return $result;
    }
    //Front end - get chi tiết bản tin
    public function getDetail($id){
        $select = $this->select()->from($this->_name, array('title'.LANG, 'content'.LANG, 'hits'))
                                 ->where('enable = ?', 1)
                                 ->where('record_id = ?', $id);
        $result = $this->fetchRow($select)->toArray();
        //Update hits
		$this->update(array('hits' => $result['hits']+1), 'record_id ='.$id);

        return $result;
    }
    //Back end - menu admin
	public function menuAdmin(){
        $menu[] = array('url'=>'about', 'name'=>'Bài viết', 'nameen'=>'Post', 'namefr'=>'Post', 'num'=>$this->countItem());
        return $menu;
    }
    //Back end - Thêm bản tin
    public function addItem($data = NULL){
    	//Get max record
		$db = $this->getAdapter();
		$select = $db->select()->from($this->_name, array('max(record_order) as max'));
		$max_record = $db->fetchOne($select)+1;
		
    	$data = array('title' => $this->_xss->purify(trim($data['title'])), 'titleen' => $this->_xss->purify(trim($data['titleen'])), 'titlefr' => $this->_xss->purify(trim($data['titlefr'])), 'content' => $this->_xss->purify($data['detail']), 'contenten' => $this->_xss->purify($data['detailen']), 'contentfr' => $this->_xss->purify($data['detailfr']), 'record_order' => $max_record, 'extra_field1' => $this->_xss->purify($data['extra1']), 'extra_field2' => $this->_xss->purify($data['extra2']), 'hot' => $this->_xss->purify($data['hot']), 'enable' => $this->_xss->purify($data['active']));
    	$this->insert($data);
    }
    //Back end - Sửa bản tin
    public function editItem($data = NULL){
    	$where = 'record_id = '.$data['id'];
    	if(count($this->fetchRow($where))){
    		return $this->fetchRow($where)->toArray();
    	}else{
    		$lang = Zend_Registry::get("lang");
    		echo $lang['norecord'];
    	}
    }
    //Back end - Save bản tin
    public function saveItem($data = NULL){
    	$where = 'record_id = '.$data['id'];
    	$data = array('title' => $this->_xss->purify(trim($data['title'])), 'titleen' => $this->_xss->purify(trim($data['titleen'])), 'titlefr' => $this->_xss->purify(trim($data['titlefr'])), 'content' => $this->_xss->purify($data['detail']), 'contenten' => $this->_xss->purify($data['detailen']), 'contentfr' => $this->_xss->purify($data['detailfr']), 'extra_field1' => $this->_xss->purify($data['extra1']), 'extra_field2' => $this->_xss->purify($data['extra2']), 'hot' => $this->_xss->purify($data['hot']), 'enable' => $this->_xss->purify($data['active']));
    	$this->update($data, $where);
    }
    //Back end - Dem tổng số mẫu tin
    public function countItem(){
    	$db = $this->getAdapter();
    	$select = $db->select()->from($this->_name, array('count(record_id) as totalItem'));
		return $db->fetchOne($select);
    }
	//Back end - Danh sách mẫu tin phân trang
    public function listItem($data = NULL){
    	//get paging number
    	$paginator = $data['paginator'];
    	if ($paginator['itemCountPerPage']>0){
			$page = $paginator['currentPage'];
			$rowCount = $paginator['itemCountPerPage'];
		}
			
    	$select = $this->select()->from($this->_name, array('record_id', 'title'.LANG, 'hits', 'posted_date', 'record_order', 'hot', 'enable'))
    							 ->order('record_order DESC')
    							 ->limitPage($page,$rowCount);
        $result = $this->fetchAll($select);
    	if(count($result) > 0){
    		$result = $result->toArray();
    	}else{
    		$result = $this->_lang['norecord'];;
    	}
        return $result;
    }
	//Back end - Kich hoat mẫu tin
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
						}
					}
					
					$this->delete($where);
				}
			}
		}
    }
}