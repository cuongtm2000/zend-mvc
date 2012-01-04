<?php
class Video_Model_Video extends Zend_Db_Table{
	protected $_name = 'dos_module_video';
    protected $_primary = 'record_id';
    private $_config = NULL;
    private $_web = NULL;
    private $_xss = NULL;
    private $_isupload_new = FALSE; //kiem tra upload editproduct

	public function init(){
    	$this->_config = Zend_Registry::get("config");
    	$this->_web = Zend_Registry::get("web");
        $this->_xss = Zend_Registry::get('xss');
    }
    //Front end - Get item đầu tiên
	public function getFristRecord(){
		$where = 'enable = 1';
		$order = 'record_order DESC';        
		return $this->fetchRow($where, $order, 0, 1);
	}
	//Front end - Danh sách mẫu tin mới nhất
	public function listItemsNew($data = NULL){
		//Get paging number
    	$paginator = $data['paginator'];
    	if ($paginator['itemCountPerPage']>0){
			$page = $paginator['currentPage'];
			$rowCount = $paginator['itemCountPerPage'];
		}
		
		$db = Zend_Registry::get('connectDb');
    	$select = $db->select()->from($this->_name, array('record_id', 'title'.LANG, 'pic_full', 'url'))
							   ->where('enable = 1')
							   ->order('record_order ASC')
							   ->order('postdate DESC')
							   ->limitPage($page, $rowCount);
		$result = $db->query($select)->fetchAll();
		if(count($result) > 0){
			return $db->query($select)->fetchAll();
		}else{
			$lang = Zend_Registry::get("lang");
    		return $lang['norecord'];
		}
    }
    
    //Front end - Đếm số mẫu tin
	public function countItem(){
    	$db = $this->getAdapter();
    	$select = $db->select()->from($this->_name, array('count(record_id) as totalItem'))->where('enable = 1');
		return $db->fetchOne($select);
    }
    
	//Front end - Danh sách bản tin Hot=1
    public function listHotItem(){
		$db = Zend_Registry::get('connectDb');
    	$select = $db->select()->from('dos_module_product', array('record_id', 'postdate', 'pic_thumb', 'title'.LANG, 'hits'))
    						   ->where('hot=1')
    						   ->where('enable=1')
							   ->order('record_order ASC')
							   ->order('postdate DESC');
		$result = $db->query($select)->fetchAll();
		if(count($result) > 0){
			return $db->query($select)->fetchAll();
		}else{
			$lang = Zend_Registry::get("lang");
    		return $lang['norecord'];
		}
    }
    
    public function listItemadmin(){
		$db = Zend_Registry::get('connectDb');
    	$select = $db->select()->from( array('p' => 'dos_module_video'),array('record_id', 'postdate', 'title'.LANG, 'hits', 'record_order', 'hot', 'enable'))
							   ->join(array('c' => 'dos_module_video_cat'),'p.dos_module_video_cat_cat_id = c.cat_id', array('cat_title'.LANG))
							   ->order('record_order ASC')
							   ->order('postdate DESC');
		$result = $db->query($select)->fetchAll();
		if(count($result) > 0){
			return $db->query($select)->fetchAll();
		}else{
			$lang = Zend_Registry::get("lang");
    		return $lang['norecord'];
		}
    }
    
    //Back end - Đếm số mẩu tin Danh mục
    public function countItembyCatID($cid){
    	$db = Zend_Registry::get('connectDb');
		$select = $db->select()->from('dos_module_product', array('COUNT(record_id) AS num'))
                               ->where('dos_module_product_cat_cat_id = ?', $cid);
        return $db->fetchOne($select);
    }
 	public function countItemadmin(){
    	$db = $this->getAdapter();
    	$select = $db->select()->from($this->_name, array('count(record_id) as totalItem'));
		return $db->fetchOne($select);
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

	public function addItem($data = NULL){		
		$file_full = null;
    	if (!empty($_FILES['file_full']['name'])){
    		$upload = new GLT_File_Upload();
    		$upload->upload($_FILES['file_full'], $this->_config['video_width'], $this->_config['video_height'], $this->_config['sys_size_upload'], PUBLIC_PATH.'/userfiles/images/video/');
    		
	    	if($upload->isVail() == false){
				$file_full = $upload->transferFile(); //upload file
			}
    	}
		
    	$data = array('pic_full' => $file_full, 'title' => $this->_xss->purify($data['title']), 'titleen' => $this->_xss->purify($data['titleen']), 'titlefr' => $this->_xss->purify($data['titlefr']), 'url' => $this->_xss->purify($data['url']), 'hot' => $this->_xss->purify($data['hot']), 'enable' => $this->_xss->purify($data['active']), 'dos_module_video_cat_cat_id' => $this->_xss->purify($data['parentcat']));
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
		$file_full = $data['fileold_full'];
    	if (!empty($_FILES['file_full']['name'])){
    		$upload = new GLT_File_Upload();
    		$upload->upload($_FILES['file_full'], $this->_config['video_width'], $this->_config['video_height'], $this->_config['sys_size_upload'], PUBLIC_PATH.'/userfiles/images/video/');
    		
	    	if($upload->isVail() == false){
				$file_full = $upload->transferFile(); //upload file
				$upload->removeFile(PUBLIC_PATH.'/userfiles/images/video/'.$data['fileold_full']);
			}
    	}
		
    	$where = 'record_id = '.$data['id'];
    	$data = array('pic_full' => $file_full, 'title' => $this->_xss->purify($data['title']), 'titleen' => $this->_xss->purify($data['titleen']), 'titlefr' => $this->_xss->purify($data['titlefr']), 'url' => $this->_xss->purify($data['url']), 'hot' => $this->_xss->purify($data['hot']), 'enable' => $this->_xss->purify($data['active']), 'dos_module_video_cat_cat_id' => $this->_xss->purify($data['parentcat']));
    	$this->update($data, $where);
    }
	public function menuAdmin(){
		$cat = new Video_Model_VideoCat();
        $menu[] = array('url'=>'video/cat', 'name'=>'Danh mục', 'nameen'=>'Category', 'namefr'=>'Category', 'num'=> $cat->countItem());
        $menu[] = array('url'=>'video/index', 'name'=>'Bài viết', 'nameen'=>'Post', 'namefr'=>'Post', 'num'=> $this->countItemadmin());
        return $menu;
    }
    
    // Item by cat_id
    public function itemByCat($cid){
    	$db = Zend_Registry::get('connectDb');
    	$select = $db->select()->from($this->_name, array('record_id', 'pic_full', 'title'.LANG, 'url'))->where('dos_module_video_cat_cat_id =?', $cid)->where('enable = 1');
		$result = $db->query($select)->fetchAll();
		
	    if(count($result) > 0){
			return $result;
		}else{
			$lang = Zend_Registry::get("lang");
    		return $lang['norecord'];
		}
    }
    
	// Product by cat_id other
    public function productByCatNoneid($cid, $id){
    	$db = Zend_Registry::get('connectDb');
    	$select = $db->select()->from('dos_module_product', array('record_id', 'pic_thumb', 'title'.LANG))->where('dos_module_product_cat_cat_id =?', $cid)->where('record_id NOT IN (?)', $id)->where('enable = 1');
		$result = $db->query($select)->fetchAll();
		
	    if(count($result) > 0){
			return $result;
		}else{
			$lang = Zend_Registry::get("lang");
    		return $lang['norecord'];
		}
    }
	
	// Get detail product
    public function getDetail($id){
		$db = Zend_Registry::get('connectDb');
		$select = $db->select()->from($this->_name, array('record_id', 'pic_full', 'pic_desc', 'title'.LANG, 'detail'.LANG, 'extra_field1', 'extra_field2', 'extra_field3', 'extra_field4', 'dos_module_product_cat_cat_id'))
                               ->where('enable = ?', 1)
                               ->where('record_id = ?', $id);
        return $db->fetchRow($select);
    }
    
	public function delPic($id){
		$select = $this->select()->from($this->_name, array('pic_full'))->where('record_id =?', $id);		
		$result = $this->fetchRow($select)->toArray();

		@unlink(PUBLIC_PATH.'/userfiles/images/video/'.$result['pic_full']);
    }
    public function delProductbyCat($data = NULL){
    	$db = Zend_Registry::get('connectDb');
    	$select = $db->select()->from($this->_name, array('record_id'))->where('dos_module_video_cat_cat_id =?', $data['id']);
		$result = $db->query($select)->fetchAll();
		
    	if($data['delproduct'] == 'del'){
	    	foreach ($result as $value){
	    		//delete item
				$this->delPic($value['record_id']); //delete picture
				$where = 'record_id = '.$value['record_id'];
				$this->delete($where);
			}
    	}elseif ($data['delproduct'] == 'move'){
	    	foreach ($result as $value){
	    		//move item
				$where = 'record_id = '.$value['record_id'];
		    	$this->update(array('dos_module_video_cat_cat_id' => $data['catmove']), $where);
			}
    	}
    	
    	//move all subcat to new cat parent
    	$cat = new Video_Model_VideoCat();
    	
    	if($data['delcat'] == 'move'){
    		$cat->findcatParent($data['id'], $data['movetocat']);
    	}elseif ($data['delcat'] == 'del'){
    		if($data['movecat'] == 'del'){
    			$cat->loopDelProducttoCat($data['id']);
    		}elseif($data['movecat'] == 'move'){
    			$cat->loopMoveProducttoCat($data['id'], $data['moveprotocat']);
    		}
    		//delete all subcat
    		$cat->loopDelSubCat($data['id']);
    	}
    	
    	//delete cat
    	$cat->delCat($data['id']);
    }
    
    //update item to new cat
    public function updateItem($cat_id, $cat_id_new){
    	$where = 'dos_module_video_cat_cat_id = '.$cat_id;
		$this->update(array('dos_module_video_cat_cat_id' => $cat_id_new), $where);
    }
	//delete item to new cat
    public function deleteItem($cat_id){
    	$db = Zend_Registry::get('connectDb');
    	$select = $db->select()->from($this->_name, array('record_id'))->where('dos_module_video_cat_cat_id = ?', $cat_id);
		$result = $db->fetchAll($select);
		foreach ($result as $value){
			$this->delPic($value['record_id']);
		}
		$where = 'dos_module_video_cat_cat_id = '.$cat_id;
		$this->delete($where);
    }
}