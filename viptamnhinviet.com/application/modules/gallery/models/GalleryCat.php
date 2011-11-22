<?php
class Gallery_Model_GalleryCat extends Zend_Db_Table{
	protected $_name = 'dos_module_gallery_cat';
    protected $_primary = 'cat_id';
    protected $_config = null;
    private $_xss = NULL;
    
    private $_cat_id = 0; //cat_id
    private $_numitem = 0; //numitem for cat
    
    //var for listCatParent
    private $_catdata = array();
    private $_cat_count = 0;
    private $_subcat_data = array();
    private $_sortcat_count = 0;

	public function init(){
    	$this->_config = Zend_Registry::get("config");
        $this->_xss = Zend_Registry::get('xss');
    }
    
	// Front end - Get danh mục nỗi bật
	public function getListCatHot(){
		$select = $this->select()->from($this->_name, array('cat_id', 'pic_thumb', 'cat_title'.LANG))->where('cat_hot = 1')->where('cat_enable = 1')->order('cat_order DESC');
    	return $this->fetchAll($select);
    }
    
	// Front end - Get danh mục nỗi bật
	public function getListCatHotbyID($parent = 0){
		$select = $this->select()->from($this->_name, array('cat_id', 'pic_thumb', 'cat_title'.LANG))->where('cat_parent_id =?', $parent)->where('cat_enable = 1')->order('cat_order DESC')->limitPage(0, 2);
    	return $this->fetchAll($select)->toArray();
    }
    
	// Front end - Tìm danh mục con
	public function getListGallerybtCatID($data = NULL){
    	$select = $this->select()->from($this->_name, array('cat_id', 'pic_thumb', 'cat_title'.LANG))->where('cat_parent_id = ?', $data['id'])->where('cat_enable = 1')->order('cat_order ASC');
    	$result = $this->fetchAll($select);
    	if(count($result)){
    		return $result->toArray();
    	}else{
			$lang = Zend_Registry::get("lang");
    		return $lang['norecord'];    		
    	}
    }
    
    //Front end - Chi tiết danh mục
    public function getDetailCat($data = NULL){
    	$select = $this->select()->from($this->_name, array('cat_title'.LANG, 'preview'.LANG))->where('cat_enable = 1')->where('cat_id =?', $data['id']);
    	$result = $this->fetchRow($select);
    	if(count($result)){
    		return $result->toArray();
    	}else{
			$lang = Zend_Registry::get("lang");
    		return $lang['norecord'];    		
    	}
    }
    
	// Front end - List menu cat
	public function getListmenu(){
    	$select = $this->select()->from($this->_name,array('cat_id', 'cat_title'.LANG, 'preview'.LANG, 'cat_parent_id'))->where('cat_enable = 1')->order('cat_order ASC');
    	$result = $this->fetchAll($select);
    	if(count($result)){
    		return $result->toArray();
    	}else{
			$lang = Zend_Registry::get("lang");
    		return $lang['norecord'];    		
    	}
    }
    
	// Front end - List Gallery Cat new cat_parent_id = 0
	public function getListGalleryCat(){
    	$select = $this->select()->from($this->_name,array('cat_id', 'pic_thumb', 'cat_title'.LANG, 'preview'.LANG))->where('cat_parent_id = 0')->where('cat_enable = 1')->order('cat_order ASC');
    	$result = $this->fetchAll($select);
    	if(count($result)){
    		return $result->toArray();
    	}else{
			$lang = Zend_Registry::get("lang");
    		return $lang['norecord'];    		
    	}
    }
    
	public function listCatParent($cid = 0){
		$select = $this->select()->from($this->_name,array('cat_id', 'cat_title'.LANG, 'cat_parent_id', 'pic_thumb', 'cat_order', 'cat_hot', 'cat_enable'))->order('cat_order DESC');
		$result = $this->fetchAll($select);
    	if(count($result)){
    		$this->_catdata = $result->toArray();
    		$this->_cat_count = count($this->_catdata);
    		
    		$this->listSubcat($cid);
    		
    		return $this->_subcat_data;
    	}else{
			$lang = Zend_Registry::get("lang");
    		return $lang['norecord'];    		
    	}
    }
	private function listSubcat($cid = 0, $getall = 1, $parent_id = 0, $level = 1, $str = "", $parent_enabled = 1){
		$cat_level = 2;
		$prefix	= ($cat_level > 1) ? '|-- ' : '';
		for ($i=0; $i<$this->_cat_count; $i++){
			if ( ($this->_catdata[$i]['cat_parent_id'] == $parent_id) && ($cid != $this->_catdata[$i]['cat_id']) ){
				$this->_subcat_data[$this->_sortcat_count]	= $this->_catdata[$i];
				$this->_subcat_data[$this->_sortcat_count]["title_prefix"]	= $str . $prefix;
				$this->_subcat_data[$this->_sortcat_count]["level"]	= $level;
				
				if ( !$parent_enabled || !$this->_catdata[$i]['cat_enable'] ){
					$cat_enabled	= 0;
				}
				else{
					$cat_enabled	= 1;
				}
				$this->_subcat_data[$this->_sortcat_count]["cat_enable"]	= $cat_enabled;
				$this->_sortcat_count++;
	
				if ( $getall || ($level < $cat_level - 1) ){
					$str2	= $str . "&nbsp; &nbsp; &nbsp;";
					$this->listSubcat($cid, $getall, $this->_catdata[$i]['cat_id'], $level + 1, $str2, $cat_enabled);
				}
			}
		}
    }
	public function addItem($data = NULL){	
		$file_thumb = null;
    	if (!empty($_FILES['file_thumb']['name'])){
    		$upload = new GLT_File_Upload();
    		$upload->upload($_FILES['file_thumb'], $this->_config['gallery_width_cat'], $this->_config['gallery_height_cat'], $this->_config['sys_size_upload'], PUBLIC_PATH.'/userfiles/images/gallery_cat/');
    		
	    	if($upload->isVail() == false){
				$file_thumb = $upload->transferFile(); //upload file
			}
    	}
    	
    	//Get max record
		$db = $this->getAdapter();
		$select = $db->select()->from($this->_name, array('max(cat_order) as max'));
		$max_record = $db->fetchOne($select)+1;
    		
    	$data = array('cat_parent_id' => $data['parent_id'], 'pic_thumb' => $file_thumb, 'cat_title' => htmlspecialchars($this->_xss->purify($data['cat_title'])), 'cat_titleen' => htmlspecialchars($this->_xss->purify($data['cat_titleen'])), 'cat_titlefr' => htmlspecialchars($this->_xss->purify($data['cat_titlefr'])), 'preview' => htmlspecialchars($this->_xss->purify($data['preview'])), 'previewen' => htmlspecialchars($this->_xss->purify($data['previewen'])), 'previewfr' => htmlspecialchars($this->_xss->purify($data['previewfr'])), 'cat_order' => $max_record, 'cat_hot' => htmlspecialchars($data['hot']));
    	$this->insert($data);
    }
	public function editItem($data = NULL){
    	$where = 'cat_id = '.$data['id'];
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
    		$upload->upload($_FILES['file_thumb'], $this->_config['gallery_width_cat'], $this->_config['gallery_height_cat'], $this->_config['sys_size_upload'], PUBLIC_PATH.'/userfiles/images/gallery_cat/');
    		
	    	if($upload->isVail() == false){
				$file_thumb = $upload->transferFile(); //upload file
				$upload->removeFile(PUBLIC_PATH.'/userfiles/images/gallery_cat/'.$data['fileold_thumb']);
			}
    	}

    	$where = 'cat_id = '.$data['id'];
    	$data = array('cat_parent_id' => $data['parent_id'], 'pic_thumb' => $file_thumb, 'cat_title' => htmlspecialchars($this->_xss->purify($data['cat_title'])), 'cat_titleen' => htmlspecialchars($this->_xss->purify($data['cat_titleen'])), 'cat_titlefr' => htmlspecialchars($this->_xss->purify($data['cat_titlefr'])), 'preview' => htmlspecialchars($this->_xss->purify($data['preview'])), 'previewen' => htmlspecialchars($this->_xss->purify($data['previewen'])), 'previewfr' => htmlspecialchars($this->_xss->purify($data['previewfr'])), 'cat_hot' => htmlspecialchars($data['hot']));
    	$this->update($data, $where);
    }
    
	//Back end - Kich hoat mẫu tin
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
				$where = 'cat_id = -1';
				$data = array('cat_enable' => $active);
				
				foreach ($record_id as $value){
					$id = intval($value);
					if ($id){
						$where .= ' OR cat_id=' . $id;
					}
				}
	
				$this->update($data, $where);
			}
		}
    }
    
	// Back end - Get cat_parent_id, cat_order
    public function getCatParent_CatOrder($cid){
    	$db = Zend_Registry::get('connectDb');
    	$select = $db->select()->from($this->_name, array('cat_parent_id', 'cat_order'))->where('cat_id = ?', $cid);
		return $db->fetchRow($select);
    }
    
	// Back end - Get cat_id, cat_order Next
    public function getCatid_CatOrder_Next($cid, $order){
    	$db = Zend_Registry::get('connectDb');
    	$select = $db->select()->from($this->_name, array('cat_id', 'cat_order'))->where('cat_parent_id = ?', $cid)->where('cat_order > ?', $order)->order('cat_order ASC');
		return $db->fetchRow($select);
    }
    
	// Back end - Get cat_id, cat_order Previous
    public function getCatid_CatOrder_Previous($cid, $order){
    	$db = Zend_Registry::get('connectDb');
    	$select = $db->select()->from($this->_name, array('cat_id', 'cat_order'))->where('cat_parent_id = ?', $cid)->where('cat_order < ?', $order)->order('cat_order DESC');
		return $db->fetchRow($select);
    }
    
    // Back end - Update for up, down
    public function updateUpDown($cat_info, $next_info, $cid){
		$this->update(array('cat_order' => $next_info['cat_order']), 'cat_id = '.$cid);
		$this->update(array('cat_order' => $cat_info['cat_order']), 'cat_id = '.$next_info['cat_id']);
    }
    
    /* functions for delete Cat */
	public function getInfoCat($data = NULL){
		$db = Zend_Registry::get('connectDb');
    	$select = $db->select()->from($this->_name, array('cat_title'.LANG))
							   ->where('cat_id = ?', $data['id']);
		return $db->fetchRow($select);
	}
	
	public function countItemSub($data = NULL){
		$db = Zend_Registry::get('connectDb');
    	$select = $db->select()->from(array('p' => 'dos_module_gallery'), array('COUNT(record_id) AS numcat'))
							   ->join(array('c' => $this->_name), 'p.dos_module_gallery_cat_cat_id = c.cat_id', array())
							   ->where('cat_id = ?', $data['id']);
		return $db->fetchOne($select);
	}
	
	public function countCat(){
		$db = Zend_Registry::get('connectDb');
    	$select = $db->select()->from($this->_name, array('count(cat_id) as totalItem'));
		return $db->fetchOne($select);
    }
	public function countSubcat($cat_id){
		$this->loopCat($cat_id); //loop find subcat
		
		$data['numcat'] = $this->_cat_id;
		$data['numitemcat'] = $this->_numitem;
		return $data;
    }
	private function loopCat($cat_id){
    	$db = Zend_Registry::get('connectDb');
    	$select = $db->select()->from($this->_name, array('cat_id'))->where('cat_parent_id = ?', $cat_id);
		$result = $db->fetchAll($select);

		foreach ($result as $value){
			$this->_cat_id++;
			$this->_numitem += $this->countItembyCat($value['cat_id']);
			$this->loopCat($value['cat_id']);
		}
    }
	private function countItembyCat($id){
    	$db = Zend_Registry::get('connectDb');
    	$select = $db->select()->from('dos_module_gallery', array('COUNT(record_id) AS numitem'))->where('dos_module_gallery_cat_cat_id = ?', $id);
		return $db->fetchOne($select);
    }
	public function findcatParent($cat_id, $cat_parent_id){
    	$db = Zend_Registry::get('connectDb');
    	$select = $db->select()->from($this->_name, array('cat_id'))->where('cat_parent_id = ?', $cat_id);
		$result = $db->fetchAll($select);

		foreach ($result as $value){
			$where = 'cat_id = '.$value['cat_id'];
		    $this->update(array('cat_parent_id' => $cat_parent_id), $where);
		}
    }
	//Xóa tất cả sản phẩm của phân loại con
    public function loopDelItemtoCat($cat_id){
    	$db = Zend_Registry::get('connectDb');
    	$select = $db->select()->from($this->_name, array('cat_id'))->where('cat_parent_id = ?', $cat_id);
		$result = $db->fetchAll($select);

		$item = new Gallery_Model_Gallery();
		foreach ($result as $value){
			//update dos_module_gallery_cat_cat_id
			$item->deleteItem($value['cat_id']);
			
			$this->loopDelItemtoCat($value['cat_id']);
		}
    }
	//Di chuyển tất cả sản phẩm của phân loại con đến phân loại:
	public function loopMoveItemtoCat($cat_id, $cat_id_new){
    	$db = Zend_Registry::get('connectDb');
    	$select = $db->select()->from($this->_name, array('cat_id'))->where('cat_parent_id = ?', $cat_id);
		$result = $db->fetchAll($select);

		$item = new Gallery_Model_Gallery();
		foreach ($result as $value){
			//update dos_module_product_cat_cat_id
			$item->updateItem($value['cat_id'], $cat_id_new);
			
			$this->loopMoveItemtoCat($value['cat_id'], $cat_id_new);
		}
    }
	//xóa phân loại con
	public function loopDelSubCat($cat_id){
    	$db = Zend_Registry::get('connectDb');
    	$select = $db->select()->from($this->_name, array('cat_id'))->where('cat_parent_id = ?', $cat_id);
		$result = $db->fetchAll($select);

		foreach ($result as $value){
			$where = 'cat_id = '.$value['cat_id'];
			$this->delete($where);
			$this->loopDelSubCat($value['cat_id']);
		}
    }
	//xóa hình ảnh của phân loại
	private function delPic($cid){
		$select = $this->select()->from($this->_name, array('pic_thumb', 'pic_full'))->where('cat_id =?', $cid);		
		$result = $this->fetchRow($select)->toArray();
		
		foreach ($result as $value){
			if($value){
				@unlink(PUBLIC_PATH.'/userfiles/images/gallery_cat/'.$value);
			}
		}
    }
	public function delCat($cid){
		$this->delPic($cid); //delete images
    	$where = 'cat_id = '.$cid;
    	$this->delete($where);
    }
}