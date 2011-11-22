<?php
class Product_Model_ProductCat extends Zend_Db_Table{
	protected $_name = 'dos_module_product_cat';
    protected $_primary = 'cat_id';
    protected $_config = null;
    
    private $_cat_id = 0; //cat_id coi lai
    private $_numitem = 0; //numitem for cat coi lai
    
    private $_catdata = array();
    private $_cat_count = 0;
    private $_subcat_data = array();
    private $_sortcat_count = 0;
    
    private $_isupload_new = FALSE; //kiem tra upload editcat

	public function init(){
    	$this->_config = Zend_Registry::get("config");
    }
    
    // Front end - Get danh mục sản phẩm
	public function getListmenu(){
    	$select = $this->select()->from($this->_name,array('cat_id', 'cat_title'.LANG, 'cat_parent_id', 'pic_thumb', 'cat_extra1'))->where('cat_enable = 1')->order('cat_order ASC');
    	$result = $this->fetchAll($select);
    	if(count($result)){
    		return $result->toArray();
    	}else{
			$lang = Zend_Registry::get("lang");
    		return $lang['norecord'];    		
    	}
    }
    
	// Front end - ListCat cat_parent_id = 0
	public function getListCat(){
    	$select = $this->select()->from($this->_name, array('cat_id', 'pic_thumb', 'cat_title'.LANG))->where('cat_parent_id = 0')->where('cat_enable = 1')->order('cat_order ASC');
    	$result = $this->fetchAll($select);
    	if(count($result)){
    		return $result->toArray();
    	}else{
			$lang = Zend_Registry::get("lang");
    		return $lang['norecord'];    		
    	}
    }
    
	// Front end - Tìm danh mục con
	public function getListSubCat($data = NULL){
    	$select = $this->select()->from($this->_name, array('cat_id', 'pic_thumb', 'cat_title'.LANG))->where('cat_parent_id = ?', $data['cid'])->where('cat_enable = 1')->order('cat_order ASC');
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
    	$select = $db->select()->from($this->_name, array('pic_full', 'pic_desc', 'cat_title'.LANG, 'preview'.LANG, 'cat_extra1', 'cat_extra2', 'cat_extra3', 'cat_extra4'))->where('cat_id = ?', $cid);
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
		//Upload multi file
		$file_desc_multi = array();
		$file_desc = $_FILES['file_desc'];
		$desc_name = $file_desc['name'];
		
		$i = 0;
		foreach($desc_name as $value){
			if (!empty($desc_name[$i])){
				$upload = new GLT_File_Upload();
				$upload->uploadMulti($file_desc['name'][$i], $file_desc['size'][$i], $file_desc['tmp_name'][$i], $this->_config['product_width_cat'], $this->_config['product_height_cat'], 2000, PUBLIC_PATH.'/userfiles/images/product_cat/');
				
				if($upload->isVail() == false){
					$file_desc_multi[] = $upload->transferFile(); //upload file
				}else{
					print_r($upload->_errors);
				}
			}
            $i++;
		}
		
		//Upload pic_thumb
		$file_thumb = null;
    	if (!empty($_FILES['file_thumb']['name'])){
    		$upload = new GLT_File_Upload();
    		$upload->upload($_FILES['file_thumb'], $this->_config['product_width_cat_thumb'], $this->_config['product_height_cat_thumb'], $this->_config['sys_size_upload'], PUBLIC_PATH.'/userfiles/images/product_cat/');
    		
	    	if($upload->isVail() == false){
				$file_thumb = $upload->transferFile(); //upload file
			}else{
				print_r($upload->_errors);
			}
    	}
    	
    	//Upload pic_full
		$file_full = null;
    	if (!empty($_FILES['file_full']['name'])){
    		$upload = new GLT_File_Upload();
    		$upload->upload($_FILES['file_full'], $this->_config['product_width_cat'], $this->_config['product_height_cat'], $this->_config['sys_size_upload'], PUBLIC_PATH.'/userfiles/images/product_cat/');
    		
	    	if($upload->isVail() == false){
				$file_full = $upload->transferFile(); //upload file
			}else{
				print_r($upload->_errors);
			}
    	}
    	
    	//Get max record
		$db = $this->getAdapter();
		$select = $db->select()->from($this->_name, array('max(cat_order) as max'));
		$max_record = $db->fetchOne($select)+1;
    	
    	$data = array('pic_thumb' => $file_thumb, 'pic_full' => $file_full, 'pic_desc' => implode("|", $file_desc_multi), 'cat_parent_id' => $data['parent_id'], 'cat_title' => $data['cat_title'], 'cat_titleen' => $data['cat_titleen'], 'cat_titlefr' => $data['cat_titlefr'], 'preview' => $data['preview'], 'previewen' => $data['previewen'], 'previewfr' => $data['previewfr'], 'cat_order' => $max_record, 'cat_extra1' => $data['extra1'], 'cat_extra2' => $data['extra2'], 'cat_extra3' => $data['extra3'], 'cat_extra4' => $data['extra4'], 'cat_enable' => $data['active']);
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
		//Upload multi file
		$file_upload_new = array();
		$file_desc_multi = array();
		$file_desc = $_FILES['file_desc'];
		$desc_name = $file_desc['name'];
		
		$i = 0;
		foreach($desc_name as $value){
			if (!empty($desc_name[$i])){
				$upload = new GLT_File_Upload();
				$upload->uploadMulti($file_desc['name'][$i], $file_desc['size'][$i], $file_desc['tmp_name'][$i], $this->_config['product_width_cat'], $this->_config['product_height_cat'], 2000, PUBLIC_PATH.'/userfiles/images/product_cat/');
				
				if($upload->isVail() == false){
					$file_desc_multi[] = $upload->transferFile(); //upload file
				}else{
					print_r($upload->_errors);
				}
				
				//kiem tra xem co upload không?
				if(!$this->_isupload_new){
					$this->_isupload_new = TRUE;
				}
			}
            $i++;
		}

		//kiem tra có upload moi hay khong?
		if($this->_isupload_new){
			foreach($data['file_old'] as $value){
				$upload = new GLT_File_Upload();
				$upload->removeFile(PUBLIC_PATH.'/userfiles/images/product_cat/'.$value);
			}
			$file_upload_new = $file_desc_multi;
		}else{
			$file_upload_new = $data['file_old'];
		}
		
		$file_thumb = $data['fileold_thumb'];
    	if (!empty($_FILES['file_thumb']['name'])){
    		$upload = new GLT_File_Upload();
    		$upload->upload($_FILES['file_thumb'], $this->_config['product_width_cat_thumb'], $this->_config['product_height_cat_thumb'], $this->_config['sys_size_upload'], PUBLIC_PATH.'/userfiles/images/product_cat/');
    		
	    	if($upload->isVail() == false){
				$file_thumb = $upload->transferFile(); //upload file
				$upload->removeFile(PUBLIC_PATH.'/userfiles/images/product_cat/'.$data['fileold_thumb']);
			}else{
				print_r($upload->_errors);
			}
    	}
    	
		$file_full = $data['fileold_full'];
    	if (!empty($_FILES['file_full']['name'])){
    		$upload = new GLT_File_Upload();
    		$upload->upload($_FILES['file_full'], $this->_config['product_width_cat'], $this->_config['product_height_cat'], $this->_config['sys_size_upload'], PUBLIC_PATH.'/userfiles/images/product_cat/');
    		
	    	if($upload->isVail() == false){
				$file_full = $upload->transferFile(); //upload file
				$upload->removeFile(PUBLIC_PATH.'/userfiles/images/product_cat/'.$data['fileold_full']);
			}else{
				print_r($upload->_errors);
			}
    	}
    	
    	$where = 'cat_id = '.$data['id'];
    	$data = array('pic_thumb' => $file_thumb, 'pic_full' => $file_full, 'pic_desc' => implode("|", $file_upload_new), 'cat_parent_id' => $data['parent_id'], 'cat_title' => $data['cat_title'], 'cat_titleen' => $data['cat_titleen'], 'cat_titlefr' => $data['cat_titlefr'], 'preview' => $data['preview'], 'previewen' => $data['previewen'], 'previewfr' => $data['previewfr'], 'cat_extra1' => $data['extra1'], 'cat_extra2' => $data['extra2'], 'cat_extra3' => $data['extra3'], 'cat_extra4' => $data['extra4'], 'cat_enable' => $data['active']);
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
    	$select = $db->select()->from(array('p' => 'dos_module_product'), array('COUNT(record_id) AS numcat'))
							   ->join(array('c' => $this->_name), 'p.dos_module_product_cat_cat_id = c.cat_id', array())
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

		$product = new Product_Model_Product();
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

		$product = new Product_Model_Product();
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
			$this->delPicMulti($value['cat_id']); //delete images multi
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
				@unlink(PUBLIC_PATH.'/userfiles/images/product_cat/'.$value);
			}
		}
    }
	private function delPicMulti($cid){
		$select = $this->select()->from($this->_name, array('pic_desc'))->where('cat_id =?', $cid);		
		$result = $this->fetchRow($select)->toArray();
		
		$str = explode('|', $result['pic_desc']);
    	foreach ($str as $value){
    		@unlink(PUBLIC_PATH.'/userfiles/images/product_cat/'.$value);
    	}
    }
    public function delCat($cid){
    	$this->delPic($cid); //delete images
    	$this->delPicMulti($cid); //delete images multi
    	$where = 'cat_id = '.$cid;
    	$this->delete($where);
    }
}