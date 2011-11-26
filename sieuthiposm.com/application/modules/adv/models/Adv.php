<?php
class Adv_Model_Adv extends Zend_Db_Table{
	protected $_name = 'dos_module_adv';
    protected $_primary = 'record_id';
    private $_config = NULL;
    private $_xss = NULL;
	
    public function init(){
    	$this->_config = Zend_Registry::get("config");
        $this->_xss = Zend_Registry::get('xss');
    }
    //Front end - Danh sách quảng cáo 
    public function getListmenu(){
         $select = $this->select()->from($this->_name, array('record_id', 'pic_thumb', 'title'.LANG, 'url', 'description', 'position', 'type'))
                                  ->where('enable = ?',1)
                                  ->order('record_order ASC');
        $result= $this->fetchAll($select)->toArray();
        return $result;
    }
	//Front end - Danh sách quảng cáo Right Top
    public function getListAdvRightTop(){
         $select = $this->select()->from($this->_name, array('record_id', 'pic_thumb', 'title'.LANG, 'url', 'description', 'type'))
         						  ->where('position =?', 'right-top')
                                  ->where('enable = ?',1)
                                  ->order('record_order ASC');
        $result= $this->fetchAll($select)->toArray();
        return $result;
    }
	//Front end - Danh sách quảng cáo Right Bottom
    public function getListAdvRightBottom(){
         $select = $this->select()->from($this->_name, array('record_id', 'pic_thumb', 'title'.LANG, 'url', 'description', 'type'))
         						  ->where('position =?', 'right-bottom')
                                  ->where('enable = ?',1)
                                  ->order('record_order ASC');
        $result= $this->fetchAll($select)->toArray();
        return $result;
    }
    public function getDetail($id){
         $select = $this->select()->from($this->_name, array('title'.LANG, 'content'.LANG))
                                  ->where('enable = ?', 1)
                                  ->where('record_id = ?', $id);
        $result= $this->fetchAll($select)->toArray();
        return $result;
    }
    //Back end - Danh sách menu trong Admin
	public function menuAdmin(){
        $menu[] = array('url'=>'adv', 'name'=>'Bài viết', 'nameen'=>'Post', 'namefr'=>'Post', 'num'=>$this->countItem());
        return $menu;
    }
    //Back end - Thêm mới mẫu tin
    public function addItem($data = NULL){
    	$filename = null;
    	if (!empty($_FILES['file']['name'])){
    		$upload = new GLT_File_Upload();
    		$upload->upload($_FILES['file'], $this->_config['adv_width'], $this->_config['adv_height'], $this->_config['sys_size_upload'], PUBLIC_PATH.'/userfiles/images/adv/');
    		
	    	if($upload->isVail() == false){
				$filename = $upload->transferFile(); //upload file
			}else{
				print_r($upload->_errors);
			}
    	}

    	$data = array('title' => htmlspecialchars($this->_xss->purify($data['title'])), 'titleen' => htmlspecialchars($this->_xss->purify($data['titleen'])), 'titlefr' => htmlspecialchars($this->_xss->purify($data['titlefr'])), 'pic_thumb' => $filename, 'url' => htmlspecialchars($this->_xss->purify($data['url'])), 'description' => htmlspecialchars($this->_xss->purify($data['description'])), 'start_date' => htmlspecialchars($this->_xss->purify(date('Y-m-d', strtotime($data['start_date'])))), 'end_date' => htmlspecialchars($this->_xss->purify(date('Y-m-d', strtotime($data['end_date'])))), 'position' => htmlspecialchars($this->_xss->purify($data['position'])), 'type' => htmlspecialchars($this->_xss->purify($data['type'])), 'enable' => htmlspecialchars($this->_xss->purify($data['active'])));
    	$this->insert($data);
    }
    //Back end - Get chi tiết bản tin
    public function editItem($data = NULL){
    	$where = 'record_id = '.$data['id'];
    	$result = $this->fetchRow($where);
    	if(count($result)){
    		return $result->toArray();
    	}else{
    		$lang = Zend_Registry::get("lang");
    		echo $lang['norecord'];
    	}
    }
    //Back end - Cập nhật bản tin
    public function saveItem($data = NULL){
    	$filename = $data['fileold'];
    	if (!empty($_FILES['file']['name'])){
    		$upload = new GLT_File_Upload();
    		$upload->upload($_FILES['file'], $this->_config['adv_width'], $this->_config['adv_height'], $this->_config['sys_size_upload'], PUBLIC_PATH.'/userfiles/images/adv/');
    		
	    	if($upload->isVail() == false){
				$filename = $upload->transferFile(); //upload file
				$upload->removeFile(PUBLIC_PATH.'/userfiles/images/adv/'.$data['fileold']);
			}else{
				print_r($upload->_errors);
			}
    	}
    	$where = 'record_id = '.$data['id'];
    	$data = array('title' => htmlspecialchars($this->_xss->purify($data['title'])), 'titleen' => htmlspecialchars($this->_xss->purify($data['titleen'])), 'titlefr' => htmlspecialchars($this->_xss->purify($data['titlefr'])), 'pic_thumb' => $filename, 'url' => htmlspecialchars($this->_xss->purify($data['url'])), 'description' => htmlspecialchars($this->_xss->purify($data['description'])), 'start_date' => htmlspecialchars($this->_xss->purify(date('Y-m-d', strtotime($data['start_date'])))), 'end_date' => htmlspecialchars($this->_xss->purify(date('Y-m-d', strtotime($data['end_date'])))), 'position' => htmlspecialchars($this->_xss->purify($data['position'])), 'type' => htmlspecialchars($this->_xss->purify($data['type'])), 'enable' => htmlspecialchars($this->_xss->purify($data['active'])));
    	$this->update($data, $where);
    }   
    //Back end - Đếm tổng số mẫu tin
    public function countItem(){
    	$db = Zend_Registry::get('connectDb');
    	$select = $db->select()->from($this->_name, array('count(record_id) as totalItem'));
		return $db->fetchOne($select);
    }
    //Back end - Danh sách mẫu tin
    public function listItem($data = NULL){
    	//get paging number
    	$paginator = $data['paginator'];
    	if ($paginator['itemCountPerPage']>0){
			$page = $paginator['currentPage'];
			$rowCount = $paginator['itemCountPerPage'];
		}
			
    	$select = $this->select()->from($this->_name, array('record_id', 'title'.LANG, 'hits', 'start_date', 'end_date', 'record_order', 'enable'))
    							 ->order('record_order ASC')
    							 ->order('create_date DESC')
    							 ->limitPage($page,$rowCount);
        $result = $this->fetchAll($select)->toArray();
        if(count($result) > 0){
        	return $result;
        }else{
        	$lang = Zend_Registry::get("lang");
    		return $lang['norecord'];
        }
    }
    //Back end - Show, hide, delete item
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
    //Back end - Xóa hình ảnh
	public function delPic($id){
		$select = $this->select()->from($this->_name, array('pic_thumb'))->where('record_id =?', $id);		
		$result = $this->fetchRow($select)->toArray();
		@unlink(PUBLIC_PATH.'/userfiles/images/adv/'.$result['pic_thumb']);
    }
}