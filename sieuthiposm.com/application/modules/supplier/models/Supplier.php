<?php
class Supplier_Model_Supplier extends Zend_Db_Table{
	protected $_name = 'dos_module_supplier';
    protected $_primary = 'record_id';
    private $_config = null;
    private $_xss = NULL;
	
    public function init(){
    	$this->_config = Zend_Registry::get("config");
        $this->_xss = Zend_Registry::get('xss');
    }
    
	//Front end - Get bản tin mới nhất
	public function listItemnew($data = NULL){
		//Get paging number
    	$paginator = $data['paginator'];
    	if ($paginator['itemCountPerPage']>0){
			$page = $paginator['currentPage'];
			$rowCount = $paginator['itemCountPerPage'];
		}
		
		$db = Zend_Registry::get('connectDb');
    	$select = $db->select()->from($this->_name, array('record_id', 'pic_thumb', 'postdate', 'title'.LANG, 'preview'.LANG))
							   ->where('enable = 1')
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
    
	//Front end - Count bản tin mới nhất
	public function countItemnew(){
		$db = Zend_Registry::get('connectDb');
    	$select = $db->select()->from($this->_name, array('COUNT(record_id) AS total'))
							   ->where('enable = 1');
		return $db->fetchOne($select);
    }
    
    //Front end - Get bản tin mới nhất
	public function listPostedNew(){
		$db = Zend_Registry::get('connectDb');
    	$select = $db->select()->from(array('n' => $this->_name), array('record_id', 'pic_thumb', 'postdate', 'title'.LANG, 'preview'.LANG))
							   ->join(array('c' => $this->_name.'_cat'),'n.dos_module_supplier_cat_cat_id = c.cat_id', array('cat_title'.LANG))
							   ->where('enable = 1')
							   ->order('postdate DESC')
							   ->limitPage(0, 7);
		$result = $db->query($select)->fetchAll();
		if(count($result) > 0){
			return $db->query($select)->fetchAll();
		}else{
			$lang = Zend_Registry::get("lang");
    		return $lang['norecord'];
		}
    }
    
	//Front end - Get Bản tin Hot mới nhất
	public function listNewsHot(){
		$db = Zend_Registry::get('connectDb');
    	$select = $db->select()->from($this->_name, array('record_id', 'pic_thumb', 'postdate', 'title'.LANG))
							   ->where('enable = 1')
							   ->where('record_type = 1')
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
    
    //Front end - Get Bản tin bởi cat_id
	public function listNewsbyCat($data = NULL){
		//Get paging number
    	$paginator = $data['paginator'];
    	if ($paginator['itemCountPerPage']>0){
			$page = $paginator['currentPage'];
			$rowCount = $paginator['itemCountPerPage'];
		}	
	//	echo $page;		echo $rowCount;
		$db = Zend_Registry::get('connectDb');
    	$select = $db->select()->from($this->_name, array('*'))
							   ->where('enable = 1')
							   ->where('dos_module_supplier_cat_cat_id =?', $data['cid'])
							   ->order('record_order DESC')
							   ->order('postdate DESC')
							   ->limitPage($page, $rowCount)
							  // ->limit(1)
							   ;
		$result = $db->query($select)->fetchAll();
		if(count($result) > 0){
			return $result[0];
		}else{
			$lang = Zend_Registry::get("lang");
    		return $lang['norecord'];
		}
    }
	
	/*public function getPrevNextIdbyCat($cid , $order, $postdate){
		$db = Zend_Registry::get('connectDb');
    	$select = $db->select()->from($this->_name, array('record_id', 'title'))
							   ->where('enable = 1')
							   ->where('dos_module_supplier_cat_cat_id =?', $cid)
							   ->where('record_order <= ?',$order)
							   ->where('postdate > ?',$postdate)
							   ->order('record_order ASC')
							   ->order('postdate ASC');
		$prev = $db->fetchRow($select);
		
	  	$select = $db->select()->from($this->_name, array('record_id', 'title'))
							   ->where('enable = 1')
							   ->where('dos_module_supplier_cat_cat_id =?', $cid) 
							   ->where('record_order >= ?',$order)
							   ->where('postdate < ?',$postdate)
							   ->order('record_order DESC')
							   ->order('postdate DESC');
		$next = $db->fetchRow($select);

		return array('prev'=> $prev , 'next'=> $next);
		
    }*/
	//Front end - Count bản tin bởi cat_id
	public function countNewsbyCat($data = NULL){
		$db = Zend_Registry::get('connectDb');
    	$select = $db->select()->from($this->_name, array('COUNT(record_id) AS total'))
							   ->where('enable = 1')
							   ->where('dos_module_supplier_cat_cat_id =?', $data['id']);
		$result = $db->fetchOne($select);
		if(count($result) > 0){
			return $result;
		}else{
			$lang = Zend_Registry::get("lang");
    		return $lang['norecord'];
		}
    }
    
    //Front end - Get detail new
	public function detailItem($data = NULL){
    	$where = 'record_id = '.$data['id'];
    	if(count($this->fetchRow($where))){
    		return $this->fetchRow($where)->toArray();
    	}else{
    		$lang = Zend_Registry::get("lang");
    		echo $lang['norecord'];
    	}
    }
	//Back end -- Lay ten bai viet tu id  == Ninh
	public function getItem($id){
    	try{
		$db = Zend_Registry::get('connectDb');
    	$select = $db->select()->from($this->_name, array('title'))->where('record_id = ?',$id);
		$r= $db->fetchRow($select);
		return $r['title'];
		}catch(Exception $e){
			echo '<pre>';print_r($e);	echo '</pre>';
		}
    }
    
    
	public function listItemadmin(){
		$db = Zend_Registry::get('connectDb');
    	$select = $db->select()->from(array('n' => $this->_name), array('record_id', 'postdate', 'title'.LANG, 'hits', 'record_order', 'record_type', 'enable'))
							   ->join(array('c' => $this->_name.'_cat'),'n.dos_module_supplier_cat_cat_id = c.cat_id', array('cat_title'.LANG))
							   ->order('record_order DESC')
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
		$select = $db->select()->from($this->_name, array('COUNT(record_id) AS num'))
                               ->where('dos_module_supplier_cat_cat_id = ?', $cid);
        return $db->fetchOne($select);
    }
    
	public function countItemadmin(){
    	$db = $this->getAdapter();
    	$select = $db->select()->from($this->_name, array('count(record_id) as totalItem'));
		return $db->fetchOne($select);
    }
	public function menuAdmin(){
		$cat = new Supplier_Model_SupplierCat();
        $menu[] = array('url'=>'supplier/cat', 'name'=>'Danh mục', 'nameen'=>'Category', 'namefr'=>'Category', 'num'=>$cat->countCat());
        $menu[] = array('url'=>'supplier', 'name'=>'Bài viết', 'nameen'=>'Post', 'namefr'=>'Post', 'num'=> $this->countItemadmin());
      
        return $menu;
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
							$this->delPicMulti($id);
							$this->delPic($id);
						}
					}
					$this->delete($where);
				}
			}
		}
    }
	private function delPicMulti($id){
		$select = $this->select()->from($this->_name, array('pic_desc'))->where('record_id =?', $id);		
		$result = $this->fetchRow($select)->toArray();
		
		$str = explode('|', $result['pic_desc']);
    	foreach ($str as $value){
    		@unlink(PUBLIC_PATH.'/userfiles/images/supplier/'.$value);
    	}
    }
	public function delPic($id){
		$select = $this->select()->from($this->_name, array('pic_thumb'))->where('record_id =?', $id);		
		$result = $this->fetchRow($select);
		
		if($result['pic_thumb']){
			@unlink(PUBLIC_PATH.'/userfiles/images/supplier/'.$result['pic_thumb']);
		}
    }
    
    //Back end - Add new item
	public function addItem($data = NULL){
		//Upload multi file
		$file_desc_multi = array();
		$file_desc = $_FILES['file_desc'];
		$desc_name = $file_desc['name'];
		
		$i = 0;
		foreach($desc_name as $value){
			if (!empty($desc_name[$i])){
				$upload = new GLT_File_Upload();
				$upload->uploadMulti($file_desc['name'][$i], $file_desc['size'][$i], $file_desc['tmp_name'][$i], $this->_config['supplier_width'], $this->_config['supplier_height'], $this->_config['sys_size_upload'], PUBLIC_PATH.'/userfiles/images/supplier/');
				
				if($upload->isVail() == false){
					$file_desc_multi[] = $upload->transferFile(); //upload file
				}else{
					print_r($upload->_errors);
				}
			}
            $i++;
		}
		
		$file_thumb = null;
    	if (!empty($_FILES['file_thumb']['name'])){
    		$upload = new GLT_File_Upload();
    		$upload->upload($_FILES['file_thumb'], $this->_config['supplier_width_thumb'], $this->_config['supplier_height_thumb'], $this->_config['sys_size_upload'], PUBLIC_PATH.'/userfiles/images/supplier/');
    		
	    	if($upload->isVail() == false){
				$file_thumb = $upload->transferFile(); //upload file
			}
    	}
    	
    	//Get max record
		$db = $this->getAdapter();
		$select = $db->select()->from($this->_name, array('max(record_order) as max'));
		$max_record = $db->fetchOne($select)+1;
		
    	$data = array('pic_thumb' => $file_thumb, 'pic_desc' => implode("|", $file_desc_multi), 'title' => htmlspecialchars($this->_xss->purify($data['title'])), 'titleen' => htmlspecialchars($this->_xss->purify($data['titleen'])), 'titlefr' => htmlspecialchars($this->_xss->purify($data['titlefr'])), 'slogan' => htmlspecialchars($this->_xss->purify($data['slogan'])), 'expert' => htmlspecialchars($this->_xss->purify($data['expert'])), 'address' => htmlspecialchars($this->_xss->purify($data['address'])), 'contact' => htmlspecialchars($this->_xss->purify($data['contact'])), 'phone' => htmlspecialchars($this->_xss->purify($data['phone'])), 'fax' => htmlspecialchars($this->_xss->purify($data['fax'])), 'tel' => htmlspecialchars($this->_xss->purify($data['tel'])), 'website' => htmlspecialchars($this->_xss->purify($data['website'])), 'email' => htmlspecialchars($this->_xss->purify($data['email'])), 'preview' => htmlspecialchars($this->_xss->purify($data['preview'])), 'previewen' => htmlspecialchars($this->_xss->purify($data['previewen'])), 'previewfr' => htmlspecialchars($this->_xss->purify($data['previewfr'])), 'content' => htmlspecialchars($this->_xss->purify($data['detail'])), 'contenten' => htmlspecialchars($this->_xss->purify($data['detailen'])), 'contentfr' => htmlspecialchars($this->_xss->purify($data['detailfr'])), 'record_order' => $max_record, 'record_type' => htmlspecialchars($this->_xss->purify($data['hot'])), 'enable' => htmlspecialchars($this->_xss->purify($data['active'])), 'dos_module_supplier_cat_cat_id' => htmlspecialchars($this->_xss->purify($data['parentcat'])));
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
		//Upload multi file
		$file_upload_new = array();
		$file_desc_multi = array();
		$file_desc = $_FILES['file_desc'];
		$desc_name = $file_desc['name'];
		
		$i = 0;
		foreach($desc_name as $value){
			if (!empty($desc_name[$i])){
				$upload = new GLT_File_Upload();
				$upload->uploadMulti($file_desc['name'][$i], $file_desc['size'][$i], $file_desc['tmp_name'][$i], $this->_config['supplier_width'], $this->_config['supplier_height'], $this->_config['sys_size_upload'], PUBLIC_PATH.'/userfiles/images/supplier/');
				
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
				$upload->removeFile(PUBLIC_PATH.'/userfiles/images/supplier/'.$value);
			}
			$file_upload_new = $file_desc_multi;
		}else{
			$file_upload_new = $data['file_old'];
		}
		
		$file_thumb = $data['fileold_thumb'];
    	if (!empty($_FILES['file_thumb']['name'])){
    		$upload = new GLT_File_Upload();
    		$upload->upload($_FILES['file_thumb'], $this->_config['supplier_width_thumb'], $this->_config['supplier_height_thumb'], $this->_config['sys_size_upload'], PUBLIC_PATH.'/userfiles/images/supplier/');
    		
	    	if($upload->isVail() == false){
				$file_thumb = $upload->transferFile(); //upload file
				$upload->removeFile(PUBLIC_PATH.'/userfiles/images/supplier/'.$data['fileold_thumb']);
			}
    	}
		
    	$where = 'record_id = '.$data['id'];
    	$data = array('pic_thumb' => $file_thumb, 'pic_desc' => implode("|", $file_upload_new), 'title' => htmlspecialchars($this->_xss->purify($data['title'])), 'titleen' => htmlspecialchars($this->_xss->purify($data['titleen'])), 'titlefr' => htmlspecialchars($this->_xss->purify($data['titlefr'])), 'slogan' => htmlspecialchars($this->_xss->purify($data['slogan'])), 'expert' => htmlspecialchars($this->_xss->purify($data['expert'])), 'address' => htmlspecialchars($this->_xss->purify($data['address'])), 'contact' => htmlspecialchars($this->_xss->purify($data['contact'])), 'phone' => htmlspecialchars($this->_xss->purify($data['phone'])), 'fax' => htmlspecialchars($this->_xss->purify($data['fax'])), 'tel' => htmlspecialchars($this->_xss->purify($data['tel'])), 'website' => htmlspecialchars($this->_xss->purify($data['website'])), 'email' => htmlspecialchars($this->_xss->purify($data['email'])), 'preview' => htmlspecialchars($this->_xss->purify($data['preview'])), 'previewen' => htmlspecialchars($this->_xss->purify($data['previewen'])), 'previewfr' => htmlspecialchars($this->_xss->purify($data['previewfr'])), 'content' => htmlspecialchars($this->_xss->purify($data['detail'])), 'contenten' => htmlspecialchars($this->_xss->purify($data['detailen'])), 'contentfr' => htmlspecialchars($this->_xss->purify($data['detailfr'])), 'record_type' => htmlspecialchars($this->_xss->purify($data['hot'])), 'enable' => htmlspecialchars($this->_xss->purify($data['active'])), 'dos_module_supplier_cat_cat_id' => htmlspecialchars($this->_xss->purify($data['parentcat'])));
    	$this->update($data, $where);
    }
    //Back end - Delete for cat
	public function delItembyCat($data = NULL){
    	$db = Zend_Registry::get('connectDb');
    	$select = $db->select()->from($this->_name, array('record_id'))->where('dos_module_supplier_cat_cat_id =?', $data['id']);
		$result = $db->query($select)->fetchAll();
		
    	if($data['delproduct'] == 'del'){
	    	foreach ($result as $value){
	    		//delete item
	    		$this->delPicMulti($value['record_id']); //delete picture multi
				$this->delPic($value['record_id']); //delete picture
				$where = 'record_id = '.$value['record_id'];
				$this->delete($where);
			}
    	}elseif ($data['delproduct'] == 'move'){
	    	foreach ($result as $value){
	    		//move item
				$where = 'record_id = '.$value['record_id'];
		    	$this->update(array('dos_module_supplier_cat_cat_id' => $data['catmove']), $where);
			}
    	}
    	
    	//Back end - move all subcat to new cat parent
    	$cat = new Supplier_Model_SupplierCat();
    	
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
	//Back end - delete item to new cat
    public function deleteItem($cat_id){
    	$db = Zend_Registry::get('connectDb');
    	$select = $db->select()->from($this->_name, array('record_id'))->where('dos_module_supplier_cat_cat_id = ?', $cat_id);
		$result = $db->fetchAll($select);
		foreach ($result as $value){
			$this->delPic($value['record_id']);
		}
		$where = 'dos_module_supplier_cat_cat_id = '.$cat_id;
		$this->delete($where);
    }
	//Back end - update item to new cat
    public function updateItem($cat_id, $cat_id_new){
    	$where = 'dos_module_supplier_cat_cat_id = '.$cat_id;
		$this->update(array('dos_module_supplier_cat_cat_id' => $cat_id_new), $where);
    }
}