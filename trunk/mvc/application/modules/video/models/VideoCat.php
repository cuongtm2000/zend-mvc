<?php
class Video_Model_VideoCat extends Zend_Db_Table{
	protected $_name = 'dos_module_video_cat';
    protected $_primary = 'cat_id';
    protected $_config = null;
	private $_xss = NULL;
    
    private $_cat_id = 0; //cat_id coi lai
    private $_numitem = 0; //numitem for cat coi lai
    
    private $_catdata = array();
    private $_cat_count = 0;
    private $_subcat_data = array();
    private $_sortcat_count = 0;
    
    private $_isupload_new = FALSE; //kiem tra upload editcat

	public function init(){
    	$this->_config = Zend_Registry::get("config");
		$this->_xss = Zend_Registry::get('xss');
    }
    
    // Front end - Get danh mục
	public function getListmenu(){
    	$select = $this->select()->from($this->_name, array('cat_id', 'cat_parent_id', 'pic_thumb', 'cat_title'.LANG))->where('cat_enable = 1')->order('cat_order ASC');
    	$result = $this->fetchAll($select);
    	if(count($result)){
    		return $result->toArray();
    	}else{
			$lang = Zend_Registry::get("lang");
    		return $lang['norecord'];    		
    	}
    }
    // Get info Cat by id
    public function getCatbyId($cid){
    	$db = Zend_Registry::get('connectDb');
    	$select = $db->select()->from($this->_name, array('cat_title'.LANG))->where('cat_id = ?', $cid);
		return $db->fetchRow($select);
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
    
	public function listCatParent($cid = 0){
		$select = $this->select()->from($this->_name, array('cat_id', 'cat_title'.LANG, 'cat_parent_id', 'pic_thumb', 'cat_order', 'cat_enable'))->order('cat_order DESC');
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
    
	public function countItem(){
    	$db = Zend_Registry::get('connectDb');
    	$select = $db->select()->from($this->_name, array('count(cat_id) as totalItem'));
		return $db->fetchOne($select);
    }
	public function addItem($data = NULL){		
		//Upload pic_thumb
		$file_thumb = null;
    	if (!empty($_FILES['file_thumb']['name'])){
    		$upload = new GLT_File_Upload();
    		$upload->upload($_FILES['file_thumb'], $this->_config['video_width_cat_thumb'], $this->_config['video_height_cat_thumb'], $this->_config['sys_size_upload'], PUBLIC_PATH.'/userfiles/images/video_cat/');
    		
	    	if($upload->isVail() == false){
				$file_thumb = $upload->transferFile(); //upload file
			}else{
				print_r($upload->_errors);
			}
    	}
    	
    	//Get max record
		$db = $this->getAdapter();
		$select = $db->select()->from($this->_name, array('max(cat_order) as max'));
		$max_record = $db->fetchOne($select)+1;
    	
    	$data = array('pic_thumb' => $file_thumb, 'cat_parent_id' => $data['parent_id'], 'cat_title' => $this->_xss->purify($data['cat_title']), 'cat_titleen' => $this->_xss->purify($data['cat_titleen']), 'cat_titlefr' => $this->_xss->purify($data['cat_titlefr']), 'cat_order' => $max_record, 'cat_enable' => $data['active']);
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
    		$upload->upload($_FILES['file_thumb'], $this->_config['video_width_cat_thumb'], $this->_config['video_height_cat_thumb'], $this->_config['sys_size_upload'], PUBLIC_PATH.'/userfiles/images/video_cat/');
    		
	    	if($upload->isVail() == false){
				$file_thumb = $upload->transferFile(); //upload file
				$upload->removeFile(PUBLIC_PATH.'/userfiles/images/video_cat/'.$data['fileold_thumb']);
			}else{
				print_r($upload->_errors);
			}
    	}
    	
    	$where = 'cat_id = '.$data['id'];
    	$data = array('pic_thumb' => $file_thumb, 'cat_parent_id' => $data['parent_id'], 'cat_title' => $this->_xss->purify($data['cat_title']), 'cat_titleen' => $this->_xss->purify($data['cat_titleen']), 'cat_titlefr' => $this->_xss->purify($data['cat_titlefr']), 'cat_enable' => $data['active']);
    	$this->update($data, $where);
    }
	public function productCat(){
    	$db = Zend_Registry::get('connectDb');
    	$select = $db->select()->from($this->_name, array('cat_id', 'pic_thumb', 'pic_full', 'cat_title'.LANG))->where('cat_parent_id = ?', 0)->where('cat_enable = ?', 1)->order('cat_order ASC');

		$result = $db->query($select)->fetchAll();
		if(count($result) > 0){
			return $db->query($select)->fetchAll();
		}else{
			$lang = Zend_Registry::get("lang");
    		return $lang['norecord'];
		}
    }
	
	public function getInfoCat($data = NULL){
		$db = Zend_Registry::get('connectDb');
    	$select = $db->select()->from($this->_name, array('cat_title'.LANG))
							   ->where('cat_id = ?', $data['id']);
		return $db->fetchRow($select);
	}
	
	public function countItemSub($data = NULL){
		$db = Zend_Registry::get('connectDb');
    	$select = $db->select()->from(array('p' => 'dos_module_video'), array('COUNT(record_id) AS numcat'))
							   ->join(array('c' => $this->_name), 'p.dos_module_video_cat_cat_id = c.cat_id', array())
							   ->where('cat_id = ?', $data['id']);
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
    	$select = $db->select()->from('dos_module_product', array('COUNT(record_id) AS numitem'))->where('dos_module_product_cat_cat_id = ?', $id);
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
    //Di chuyển tất cả sản phẩm của phân loại con đến phân loại:
	public function loopMoveProducttoCat($cat_id, $cat_id_new){
    	$db = Zend_Registry::get('connectDb');
    	$select = $db->select()->from($this->_name, array('cat_id'))->where('cat_parent_id = ?', $cat_id);
		$result = $db->fetchAll($select);

		$product = new Video_Model_Video();
		foreach ($result as $value){
			//update dos_module_product_cat_cat_id
			$product->updateItem($value['cat_id'], $cat_id_new);
			
			$this->loopMoveProducttoCat($value['cat_id'], $cat_id_new);
		}
    }
	//Xóa tất cả sản phẩm của phân loại con
    public function loopDelProducttoCat($cat_id){
    	$db = Zend_Registry::get('connectDb');
    	$select = $db->select()->from($this->_name, array('cat_id'))->where('cat_parent_id = ?', $cat_id);
		$result = $db->fetchAll($select);

		$product = new Video_Model_Video();
		foreach ($result as $value){
			//update dos_module_product_cat_cat_id
			$product->deleteItem($value['cat_id']);
			
			$this->loopDelProducttoCat($value['cat_id']);
		}
    }
    //xóa phân loại con
	public function loopDelSubCat($cat_id){
    	$db = Zend_Registry::get('connectDb');
    	$select = $db->select()->from($this->_name, array('cat_id'))->where('cat_parent_id = ?', $cat_id);
		$result = $db->fetchAll($select);

		foreach ($result as $value){
			$this->delPic($value['cat_id']); //delete images
			$where = 'cat_id = '.$value['cat_id'];
			$this->delete($where);
			$this->loopDelSubCat($value['cat_id']);
		}
    }
    //xóa hình ảnh của phân loại
	private function delPic($cid){
		$select = $this->select()->from($this->_name, array('pic_thumb'))->where('cat_id =?', $cid);		
		$result = $this->fetchRow($select)->toArray();
		
		@unlink(PUBLIC_PATH.'/userfiles/images/video_cat/'.$result['pic_thumb']);
    }
    public function delCat($cid){
    	$this->delPic($cid); //delete images
    	$where = 'cat_id = '.$cid;
    	$this->delete($where);
    }
}