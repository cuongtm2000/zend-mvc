<?php
class Productions_IndexController extends GLT_Controller_Action {
    private $_data;
    protected $_config;
    protected $_paginator;
    
    public function init(){
        //Load config
        $this->_config = Zend_Registry::get("config");
        
        //Load function for module
		$this->_data = $this->_request->getParams();
		
        //Paging
        $this->_paginator['itemCountPerPage'] = $this->_config['sys_num_paging'];
        $this->_paginator['pageRange'] = $this->_config['sys_num_pagerange'];
        $this->_paginator['currentPage'] = $this->_request->getParam('page',1);
		$this->_data['paginator'] = $this->_paginator;
        
        $loadfunction = new Default_Model_Common();
        foreach($loadfunction->loadFunction($this->_data['module']) as $value){
            if($this->_data['action'] == $value['action']){
                $load = new $value['model_load']();
                $this->view->$value['varname'] = $load->$value['function_load']();
            }
        }
    }
	public function catAction() {
		$itemCat=new Productions_Model_ProductionsCat();
		$cid=$this->_data['cid'];	
		while ($cid !=0 ) {
			$listCatParent[] =	$itemCat->getDetailCatFromCid($cid);
			$pcid=$itemCat->getCatParent_CatOrder($cid);
			$cid=$pcid['cat_parent_id'];
		}	
		$this->view->itemCat=array_reverse($listCatParent);
		
		$item = new Productions_Model_Productions();
		$this->view->items = $item->listNewsbyCat($this->_data);
		
		//paging
		$totalItem = $item->countNewsbyCat($this->_data);
		$paginator = new GLT_Paginator();
		$this->view->paginator = $paginator->createPaginator($totalItem, $this->_paginator);
		
		$this->webTitle($this->view->lang[$this->_data['module']]);
	}
	public function indexAction() {
		$item = new Productions_Model_Productions();
		$this->view->items = $item->listItemnew($this->_data);
		
		//paging
		$totalItem = $item->countItemnew();
		$paginator = new GLT_Paginator();
		$this->view->paginator = $paginator->createPaginator($totalItem, $this->_paginator);
		
		$this->webTitle($this->view->lang[$this->_data['module']]);
	}
	public function viewAction(){
		$item = new Productions_Model_Productions();
		$detail = $item->detailItem($this->_data);
		$this->view->item = $detail;
		
		$itemCat=new Productions_Model_ProductionsCat();
		$cid=$detail['dos_module_item_cat_cat_id'];	
		while ($cid !=0 ) {
			$listCatParent[] =	$itemCat->getDetailCatFromCid($cid);
			$pcid=$itemCat->getCatParent_CatOrder($cid);
			$cid=$pcid['cat_parent_id'];
		}	
		$this->view->itemCat=array_reverse($listCatParent);
		
		$this->webTitle($detail['title'.LANG]. ' - '.$this->view->lang[$this->_data['module']]);
		
		$cmt= new Productions_Model_Comments();
		if($this->_request->isPost()){	
			$validate = new Productions_Form_ValidateComment($this->_data);
			
			if($validate->isError() == true){
				$this->view->error = $validate->getError();
				$this->view->items = $this->_data;
			}else{
				$giay=$this->checkcommment('last_commnent',60);
			//	echo $giay;
				if($giay < 0){
					$this->view->error= array('*Bạn gửi bình luận quá nhanh. Hãy thử lại sau '.(-$giay).' giây!');	
					$this->view->items=$this->_data;
				}else{
					$this->view->error= array('* Bình luận của bạn đã được gửi thành công.');
					$id=$cmt->addItem($this->_data);
					//$this->_redirect('http://'.$_SERVER["SERVER_NAME"].$this->_request->getRequestUri().'#comment'.$id);
				}			
			}
		}
		$this->view->comments=$cmt->listItem($this->_data);
	}	
	
	public function checkcommment($session_id,$period){
    	if(isset($_SESSION[$session_id])){
			$now=new Zend_Date();
			$last= new Zend_Date($_SESSION[$session_id]);
			
			$giay= $now->get(Zend_Date::TIMESTAMP) - $last->get(Zend_Date::TIMESTAMP);
			if($giay > $period)
				$_SESSION[$session_id]=new Zend_Date();
			return ($giay - $period);				
		}else{
			$_SESSION[$session_id]=new Zend_Date();
			return 0;
		}		
    }
}