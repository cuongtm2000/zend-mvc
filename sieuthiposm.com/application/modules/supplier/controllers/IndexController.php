<?php
class Supplier_IndexController extends GLT_Controller_Action {
    private $_data;
    private $_config;
    private $_paginator;
    
    public function init(){        
        //Load config
        $this->_config = Zend_Registry::get("config");
        
        //Load function for module
		$this->_data = $this->_request->getParams();

        //Paging
        $this->_paginator['itemCountPerPage'] = 1;//$this->_config['sys_num_paging'];
        $this->_paginator['pageRange'] =9;// $this->_config['sys_num_pagerange'];
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
	public function viewAction(){
		$this->view->headLink()->appendStylesheet($this->_request->getBaseUrl().TEMPLATE.'/css/jquery.lightbox-0.5.css');
		$this->view->headScript()->appendFile($this->_request->getBaseUrl().TEMPLATE.'/js/jquery.lightbox-0.5.js');
		$this->view->headScript()->appendFile($this->_request->getBaseUrl().TEMPLATE.'/js/stepcarousel.js');
		
		$itemCat=new Supplier_Model_SupplierCat();
		$cid = $this->_data['cid'];		
		while ($cid !=0 ){
			$catdetail = $itemCat->getDetailCat($cid);
			$listCatParent[] = $catdetail['cat_title'.LANG];
			$pcid=$itemCat->getCatParent_CatOrder($cid);
			$cid = $pcid['cat_parent_id'];
		}	
		$this->view->itemCat = array_reverse($listCatParent);
		
		$item = new Supplier_Model_Supplier();
		if(isset($this->_data['cid'])){
			//paging
			$totalItem = $item->countItembyCatID($this->_data['cid']);
			$paginator = new GLT_Paginator();
			$this->view->paginator = $paginator->createPaginator($totalItem, $this->_paginator);
			$detail = $item->listNewsbyCat($this->_data);
		}else{
			$detail = $item->detailItem($this->_data);
		}

		$this->view->item = $detail;
		
		$title = (is_array($detail)) ?  $detail['title'.LANG] : $detail;
		$this->webTitle($title. ' - '.$this->view->lang[$this->_data['module']]);
	}
}