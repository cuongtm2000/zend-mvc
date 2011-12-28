<?php
class News_IndexController extends GLT_Controller_Action {
    private $_data;
    protected $_config;
    protected $_paginator;
    protected $_model;
    protected $_modelCat;
    
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
        $this->_model=ucfirst($this->_data['module']).'_Model_'.ucfirst($this->_data['module']);
        $this->_modelCat=$this->_model.'Cat';
    }
	public function catAction() {
		$cat = new $this->_modelCat();
		$this->view->detailcat = $cat->getDetailCat($this->_data);
		
		$item = new $this->_model();
		$this->view->items = $item->listItembyCat($this->_data);
		
		//paging
		$totalItem = $item->countItembyCat($this->_data);
		$paginator = new GLT_Paginator();
		$this->view->paginator = $paginator->createPaginator($totalItem, $this->_paginator);

		$this->webTitle($this->view->detailcat['cat_title'.LANG].' - '.$this->view->lang[$this->_data['module']]);
	}
	public function indexAction() {
		$item = new $this->_model();
		$this->view->list_news_new = $item->listItemsHot($this->_data);
		
		//paging
		//$totalItem = $item->countItemnew();
		//$paginator = new GLT_Paginator();
		//$this->view->paginator = $paginator->createPaginator($totalItem, $this->_paginator);
		$this->webTitle($this->view->lang[$this->_data['module']]);
	}
	public function viewAction(){
		$item = new $this->_model();
		$detail = $item->detailItem($this->_data);
		$this->view->item = $detail;
		$this->view->otherItem = $item->itemByCatNoneid(
									$detail['dos_module_item_cat_cat_id'], 
									$this->_data['id']);
		$this->webTitle($detail['title'.LANG]. ' - '.$this->view->lang[$this->_data['module']]);
	}
}