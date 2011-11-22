<?php
class Banner_Model_Banner extends Zend_Db_Table{
	protected $_name = 'dos_module_banner';
    protected $_primary = 'banner_id';
    protected $_config = NULL;
    private $_xss = NULL;
	
    public function init(){
    	$this->_config = Zend_Registry::get("config");
        $this->_xss = Zend_Registry::get('xss');
    }
	
	//Front end - Get all Banner
    public function getLogo(){
		$db = Zend_Registry::get('connectDb');
    	$select = $db->select()->from($this->_name, array('banner_name', 'banner_url', 'banner_link'))
    						   ->where('enable = ?', 1)
                               ->where("position = 'logo'");
		return $db->fetchRow($select);
    }
    
	//Front end - Get all Banner
    public function getAllBanner(){
         $select = $this->select()->from($this->_name, array('banner_id', 'banner_name', 'banner_url', 'banner_link'))
                                  ->where('enable = ?', 1)
                                  ->where("position = 'banner'")
                                  ->order('banner_order DESC');
        return $this->fetchAll($select)->toArray();
    }

	public function menuAdmin(){
        $menu[] = array('url'=>'banner', 'name'=>'Bài viết', 'nameen'=>'Post', 'namefr'=>'Post', 'num'=>$this->countItem());
        return $menu;
    }
    public function addItem($data = NULL){
    	$filename = null;
    	if (!empty($_FILES['file']['name'])){
    		$upload = new GLT_File_Upload();
    		$upload->upload($_FILES['file'], ($data['parentcat']=='logo') ? $this->_config['logo_width'] : $this->_config['banner_width'], ($data['parentcat']=='logo') ? $this->_config['logo_height'] : $this->_config['banner_height'], $this->_config['sys_size_upload'], PUBLIC_PATH.'/userfiles/images/banner/');
    		
	    	if($upload->isVail() == false){
				$filename = $upload->transferFile(); //upload file
			}else{
				print_r($upload->_errors);
			}
    	}
		
		//Get max record
		$db = $this->getAdapter();
		$select = $db->select()->from($this->_name, array('max(banner_order) as max'));
		$max_record = $db->fetchOne($select)+1;
    	
    	$data = array('banner_name' => htmlspecialchars($this->_xss->purify($data['title'])), 'banner_url' => $filename, 'banner_link' => htmlspecialchars($this->_xss->purify($data['banner_link'])), 'banner_order' => $max_record, 'enable' => htmlspecialchars($this->_xss->purify($data['active'])), 'position' => htmlspecialchars($this->_xss->purify($data['parentcat'])));
    	$this->insert($data);
    }
    public function editItem($data = NULL){
    	$where = 'banner_id = '.$data['id'];
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
    		$upload->upload($_FILES['file'], ($data['parentcat']=='logo') ? $this->_config['logo_width'] : $this->_config['banner_width'], ($data['parentcat']=='logo') ? $this->_config['logo_height'] : $this->_config['banner_height'], $this->_config['sys_size_upload'], PUBLIC_PATH.'/userfiles/images/banner/');
    		
	    	if($upload->isVail() == false){
	    		$upload->removeFile(PUBLIC_PATH.'/userfiles/images/banner/'.$data['fileold']);
				$filename = $upload->transferFile(); //upload file
			}else{
				print_r($upload->_errors);
			}
    	}
    	$where = 'banner_id = '.$data['id'];
    	$data = array('banner_name' => htmlspecialchars($this->_xss->purify($data['title'])), 'banner_url' => $filename, 'banner_link' => htmlspecialchars($this->_xss->purify($data['banner_link'])), 'enable' => htmlspecialchars($this->_xss->purify($data['active'])), 'position' => htmlspecialchars($this->_xss->purify($data['parentcat'])));
    	$this->update($data, $where);
    }

    public function countItem(){
    	$db = Zend_Registry::get('connectDb');
    	$select = $db->select()->from($this->_name, array('count(banner_id) as totalItem'));
		return $db->fetchOne($select);
    }
    public function listItem($data = NULL){
    	//Get paging number
    	$paginator = $data['paginator'];
    	if ($paginator['itemCountPerPage']>0){
			$page = $paginator['currentPage'];
			$rowCount = $paginator['itemCountPerPage'];
		}
		
		$db = Zend_Registry::get('connectDb');
    	$select = $db->select()->from($this->_name, array('banner_id', 'banner_date', 'banner_name', 'banner_url', 'banner_order', 'enable', 'position'))
    						   ->order('banner_order DESC')
    						   ->limitPage($page,$rowCount);
        
    	$result = $db->query($select)->fetchAll();
		if(count($result) > 0){
			return $result;
		}else{
			$lang = Zend_Registry::get("lang");
    		return $lang['norecord'];
		}
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
						$this->update(array('banner_order' => $order), 'banner_id=' . $id);
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
					$where = 'banner_id = -1';
					$data = array('enable' => $active);
					
					foreach ($record_id as $value){
						$id = intval($value);
						if ($id){
							$where .= ' OR banner_id=' . $id;
						}
					}
		
					$this->update($data, $where);
				}else{
					//delete
					$where = 'banner_id = -1';
					foreach ($record_id as $value){
						$id = intval($value);
						if ($id){
							$where .= ' OR banner_id=' . $id;
							$this->delPic($id);
						}
					}
					
					$this->delete($where);
				}
			}
		}
    }
	private function delPic($id){
		$select = $this->select()->from($this->_name, array('banner_url'))->where('banner_id =?', $id);		
		$result = $this->fetchRow($select)->toArray();
		
		@unlink(PUBLIC_PATH.'/userfiles/images/banner/'.$result['banner_url']);
    }
}