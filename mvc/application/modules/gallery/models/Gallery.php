<?php
class Gallery_Model_Gallery extends Zend_Db_Table{
	protected $_name = 'dos_module_gallery';
    protected $_primary = 'record_id';
    protected $_config = null;
    private $_xss = NULL;
	
    public function init(){
    	$this->_config = Zend_Registry::get("config");
        $this->_xss = Zend_Registry::get('xss');
    }
    
	//Front end - Get item by cat
	public function listGallerysbyCat($data = NULL){
		//get paging number
    	$paginator = $data['paginator'];
    	if ($paginator['itemCountPerPage']>0){
			$page = $paginator['currentPage'];
			$rowCount = $paginator['itemCountPerPage'];
		}
		
		$db = Zend_Registry::get('connectDb');
    	$select = $db->select()->from(array('n' => 'dos_module_gallery'), array('record_id', 'pic_thumb', 'pic_full', 'title'.LANG))
							   ->where('enable = 1')
							   ->where('dos_module_gallery_cat_cat_id =?', $data['id'])
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
    
    //Front end - Top 3 Danh sách mẫu tin theo Danh mục
	public function listGallerysbyCatTop3($id){
		$db = Zend_Registry::get('connectDb');
    	$select = $db->select()->from(array('n' => 'dos_module_gallery'), array('record_id', 'pic_thumb', 'pic_full', 'title'.LANG))
							   ->where('enable = 1')
							   ->where('dos_module_gallery_cat_cat_id =?', $id)
							   ->order('record_order ASC')
							   ->order('postdate DESC')
							   ->limitPage(0, 3);
		$result = $db->query($select)->fetchAll();
		if(count($result) > 0){
			return $db->query($select)->fetchAll();
		}else{
			$lang = Zend_Registry::get("lang");
    		return $lang['norecord'];
		}
    }
    
	//Front end - Danh sách mẫu tin mới nhất trang chủ
	public function listGallerysNewHome(){
		$db = Zend_Registry::get('connectDb');
    	$select = $db->select()->from(array('n' => 'dos_module_gallery'), array('record_id', 'pic_thumb', 'pic_full', 'title'.LANG))
							   ->where('enable = 1')
							   ->order('record_order ASC')
							   ->order('postdate DESC')
							   ->limitPage(0, 5);
		$result = $db->query($select)->fetchAll();
		if(count($result) > 0){
			return $result;
		}else{
			$lang = Zend_Registry::get("lang");
    		return $lang['norecord'];
		}
    }
    
    //Front end - Danh sách mẫu tin mới nhất
	public function listGallerysNew(){
		$db = Zend_Registry::get('connectDb');
    	$select = $db->select()->from(array('n' => 'dos_module_gallery'), array('record_id', 'pic_thumb', 'pic_full', 'title'.LANG))
							   ->where('enable = 1')
							   ->order('record_order ASC')
							   ->order('postdate DESC')
							   ->limitPage(0, 30);
		$result = $db->query($select)->fetchAll();
		if(count($result) > 0){
			return $db->query($select)->fetchAll();
		}else{
			$lang = Zend_Registry::get("lang");
    		return $lang['norecord'];
		}
    }
    
	public function listItemadmin($data = NULL){
		//get paging number
    	$paginator = $data['paginator'];
    	if ($paginator['itemCountPerPage']>0){
			$page = $paginator['currentPage'];
			$rowCount = $paginator['itemCountPerPage'];
		}
		
		$db = Zend_Registry::get('connectDb');
    	$select = $db->select()->from(array('p' => 'dos_module_gallery'), array('record_id', 'postdate', 'title'.LANG, 'hits', 'record_order', 'enable'))
							   ->join(array('c' => 'dos_module_gallery_cat'),'p.dos_module_gallery_cat_cat_id = c.cat_id', array('cat_title'.LANG))
							   ->order('record_order DESC')
							   ->limitPage($page, $rowCount);
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
		$select = $db->select()->from($this->_name, array('COUNT(record_id) AS num'))
                               ->where('dos_module_gallery_cat_cat_id = ?', $cid);
        return $db->fetchOne($select);
    }
	public function countItemadmin(){
    	$db = $this->getAdapter();
    	$select = $db->select()->from('dos_module_gallery', array('count(record_id) as totalItem'));
		return $db->fetchOne($select);
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
	public function addItem($data = NULL){
		$file_thumb = null;
    	if (!empty($_FILES['file_thumb']['name'])){
    		$upload = new GLT_File_Upload();
    		$upload->upload($_FILES['file_thumb'], $this->_config['gallery_width_thumb'], $this->_config['gallery_height_thumb'], $this->_config['sys_size_upload'], PUBLIC_PATH.'/userfiles/images/gallery/');
    		
	    	if($upload->isVail() == false){
				$file_thumb = $upload->transferFile(); //upload file
			}
    	}
    	
		$file_full = null;
    	if (!empty($_FILES['file_full']['name'])){
    		$upload = new GLT_File_Upload();
    		$upload->upload($_FILES['file_full'], $this->_config['gallery_width'], $this->_config['gallery_height'], $this->_config['sys_size_upload'], PUBLIC_PATH.'/userfiles/images/gallery/');
    		
	    	if($upload->isVail() == false){
				$file_full = $upload->transferFile(); //upload file
			}
    	}
    	
    	//Get max record
		$db = $this->getAdapter();
		$select = $db->select()->from($this->_name, array('max(record_order) as max'));
		$max_record = $db->fetchOne($select)+1;
		
    	$data = array('pic_thumb' => $file_thumb, 'pic_full' => $file_full, 'title' => htmlspecialchars($this->_xss->purify($data['title'])), 'titleen' => htmlspecialchars($this->_xss->purify($data['titleen'])), 'titlefr' => htmlspecialchars($this->_xss->purify($data['titlefr'])), 'record_order' => $max_record, 'enable' => htmlspecialchars($this->_xss->purify($data['active'])), 'dos_module_gallery_cat_cat_id' => htmlspecialchars($this->_xss->purify($data['parentcat'])));
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
		$file_thumb = $data['fileold_thumb'];
    	if (!empty($_FILES['file_thumb']['name'])){
    		$upload = new GLT_File_Upload();
    		$upload->upload($_FILES['file_thumb'], $this->_config['gallery_width_thumb'], $this->_config['gallery_height_thumb'], $this->_config['sys_size_upload'], PUBLIC_PATH.'/userfiles/images/gallery/');
    		
	    	if($upload->isVail() == false){
				$file_thumb = $upload->transferFile(); //upload file
				$upload->removeFile(PUBLIC_PATH.'/userfiles/images/gallery/'.$data['fileold_thumb']);
			}
    	}
    	
		$file_full = $data['fileold_full'];
    	if (!empty($_FILES['file_full']['name'])){
    		$upload = new GLT_File_Upload();
    		$upload->upload($_FILES['file_full'], $this->_config['gallery_width'], $this->_config['gallery_height'], $this->_config['sys_size_upload'], PUBLIC_PATH.'/userfiles/images/gallery/');
    		
	    	if($upload->isVail() == false){
				$file_full = $upload->transferFile(); //upload file
				$upload->removeFile(PUBLIC_PATH.'/userfiles/images/gallery/'.$data['fileold_full']);
			}
    	}
		
    	$where = 'record_id = '.$data['id'];
    	$data = array('pic_thumb' => $file_thumb, 'pic_full' => $file_full, 'title' => htmlspecialchars($this->_xss->purify($data['title'])), 'titleen' => htmlspecialchars($this->_xss->purify($data['titleen'])), 'titlefr' => htmlspecialchars($this->_xss->purify($data['titlefr'])), 'enable' => htmlspecialchars($this->_xss->purify($data['active'])), 'dos_module_gallery_cat_cat_id' => htmlspecialchars($this->_xss->purify($data['parentcat'])));
    	$this->update($data, $where);
    }
	public function delPic($id){
		$select = $this->select()->from('dos_module_gallery', array('pic_thumb', 'pic_full'))->where('record_id =?', $id);		
		$result = $this->fetchRow($select)->toArray();
		
		foreach ($result as $value){
			if($value){
				@unlink(PUBLIC_PATH.'/userfiles/images/gallery/'.$value);
			}
		}
    }
	public function menuAdmin(){
		$cat = new Gallery_Model_GalleryCat();
        $menu[] = array('url'=>'gallery/cat', 'name'=>'Danh mục', 'nameen'=>'Category', 'namefr'=>'Category', 'num'=>$cat->countCat());
        $menu[] = array('url'=>'gallery', 'name'=>'Bài viết', 'nameen'=>'Post', 'namefr'=>'Post', 'num'=>$this->countItemadmin());
        return $menu;
    }
	public function delItembyCat($data = NULL){
    	$db = Zend_Registry::get('connectDb');
    	$select = $db->select()->from('dos_module_gallery', array('record_id'))->where('dos_module_gallery_cat_cat_id =?', $data['id']);
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
		    	$this->update(array('dos_module_gallery_cat_cat_id' => $data['catmove']), $where);
			}
    	}
    	
    	//move all subcat to new cat parent
    	$cat = new Gallery_Model_GalleryCat();
    	
    	if($data['delcat'] == 'move'){
    		$cat->findcatParent($data['id'], $data['movetocat']);
    	}elseif ($data['delcat'] == 'del'){
    		if($data['movecat'] == 'del'){
    			$cat->loopDelItemtoCat($data['id']);
    		}elseif($data['movecat'] == 'move'){
    			$cat->loopMoveItemtoCat($data['id'], $data['moveprotocat']);
    		}
    		//delete all subcat
    		$cat->loopDelSubCat($data['id']);
    	}
    	//delete cat
    	$cat->delCat($data['id']);
    }
	//delete item to new cat
    public function deleteItem($cat_id){
    	$db = Zend_Registry::get('connectDb');
    	$select = $db->select()->from('dos_module_gallery', array('record_id'))->where('dos_module_gallery_cat_cat_id = ?', $cat_id);
		$result = $db->fetchAll($select);
		foreach ($result as $value){
			$this->delPic($value['record_id']);
		}
		$where = 'dos_module_gallery_cat_cat_id = '.$cat_id;
		$this->delete($where);
    }
	//update item to new cat
    public function updateItem($cat_id, $cat_id_new){
    	$where = 'dos_module_gallery_cat_cat_id = '.$cat_id;
		$this->update(array('dos_module_gallery_cat_cat_id' => $cat_id_new), $where);
    }
}