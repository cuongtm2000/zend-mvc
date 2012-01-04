<?php
class Webadmin_ConsultingController extends GLT_Controller_Backend{
	private $_data;
	private $_module;
	private $_controller;
	private $_action;
	private $_currentController;
	private $_config;
	private $_paginator;
	private $_model;
	private $_modelCat;
	
    public function init(){    	
    	//load language
        $this->view->lang = Zend_Registry::get("lang");
        //load config
        $this->_config = Zend_Registry::get("config");
        $this->view->config = $this->_config;
        
    	$this->_data = $this->_request->getParams();
    	$this->_module = $this->_data['module']; //Get module
        $this->_controller = $this->_data['controller']; //Get controller
        $this->_action = $this->_data['action']; //Get action
        $this->_currentController = '/' . $this->_data['module'].'/' . $this->_data['controller'];
        
        $this->_model=ucfirst($this->_controller).'_Model_'.ucfirst($this->_controller);
        $this->_modelCat=$this->_model.'Cat';        
        
        $this->_paginator['itemCountPerPage'] = $this->_config['sys_num_paging'];
        $this->_paginator['pageRange'] = $this->_config['sys_num_pagerange'];
        $this->_paginator['currentPage'] = $this->_request->getParam('page',1);
		$this->_data['paginator'] = $this->_paginator;

        //List menu admin
        $listmenu = Zend_Registry::get("listmenu");
        $this->view->listmenu = $listmenu;
        
        //parse to view
        $this->view->currentController = $this->_currentController;
        $this->view->controller = $this->_controller;
        $this->view->selecthome = ' class="selected"';
    }
    public function catAction(){
    	$cat = new $this->_modelCat();  
		$this->view->items = $cat->listCatParent();
		$this->view->model=$this->_model;
    	if($this->_request->isPost()){
        	$cat->activeItem($this->_data);
        	$this->_redirect('http://'.$_SERVER["SERVER_NAME"].$this->_request->getRequestUri());
        }
    }
	public function catupAction(){
    	$cat = new $this->_modelCat();
    	//Cat info
    	$cat_info = $cat->getCatParent_CatOrder($this->_data['id'])  ;
    	
    	//Next info
    	$next_info = $cat->getCatid_CatOrder_Next($cat_info['cat_parent_id'], $cat_info['cat_order']);

    	if(isset($next_info['cat_id']) && isset($next_info['cat_order'])){
    		//Update up
    		$cat->updateUpDown($cat_info, $next_info, $this->_data['id']);
    	}
    	
		$this->_helper->viewRenderer->setNoRender(); // Disable the viewscript
		$this->_helper->layout->disableLayout();  // Disable the layout
		
		$this->_redirect($this->_module.'/'.$this->_controller.'/cat');
    }
    public function catdownAction(){
    	$cat = new $this->_modelCat();
    	//Cat info
    	$cat_info = $cat->getCatParent_CatOrder($this->_data['id'])  ;
    	
    	//Previous info
    	$previous_info = $cat->getCatid_CatOrder_Previous($cat_info['cat_parent_id'], $cat_info['cat_order']);

    	if(isset($previous_info['cat_id']) && isset($previous_info['cat_order'])){
    		//Update down
    		$cat->updateUpDown($cat_info, $previous_info, $this->_data['id']);
    	}
    	
		$this->_helper->viewRenderer->setNoRender(); // Disable the viewscript
		$this->_helper->layout->disableLayout();  // Disable the layout
		
		$this->_redirect($this->_module.'/'.$this->_controller.'/cat');
    }
	public function addcatAction(){
        $this->view->headScript()->appendFile($this->_request->getBaseUrl().TEMPLATE_ADMIN.'/js/jquery.seoAlias.js');
        $this->view->headScript()->appendFile($this->_request->getBaseUrl().TEMPLATE_ADMIN.'/js/string.seoAlias.js');
        
    	$cat = new $this->_modelCat();
    	$this->view->listcat = $cat->listCatParent();
    	
    	if ($this->_request->isPost()) {
    		$validateForm = ucfirst($this->_controller).'_Form_CatValidate';
    		$validate  = new $validateForm($this->_data);
    		if($validate->isError()==true){
    			$this->view->error = $validate->getError();
				$this->view->items = $validate->getData();
    		}else{
    			$cat->addItem($this->_data);
    			$this->_redirect($this->_module.'/'.$this->_controller.'/cat');
    		}
        }
    }
	public function editcatAction(){
		$this->view->headScript()->appendFile($this->_request->getBaseUrl().TEMPLATE_ADMIN.'/js/checklist.js');
        $this->view->headScript()->appendFile($this->_request->getBaseUrl().TEMPLATE_ADMIN.'/js/jquery.seoAlias.js');
        $this->view->headScript()->appendFile($this->_request->getBaseUrl().TEMPLATE_ADMIN.'/js/string.seoAlias.js');
    	
        $cat = new $this->_modelCat();
        $this->view->listcat = $cat->listCatParent($this->_data['id']);
		$this->view->item = $cat->editItem($this->_data);
		
		if ($this->_request->isPost()) {
			$validateForm = ucfirst($this->_controller).'_Form_CatValidate';
    		$validate  = new $validateForm($this->_data);
			
    		if($validate->isError()==true){
    			$this->view->error = $validate->getError();
				$this->view->items = $validate->getData();
    		}else{
    			$cat->saveItem($this->_data);
    			$this->_redirect($this->_module.'/'.$this->_controller.'/cat');
    		}
        }
    }
	public function delcatAction(){
    	$cat = new $this->_modelCat();
    	
    	//cat_id for delete
    	$this->view->infocat = $cat->getInfoCat($this->_data); //Tên phân loại
    	$this->view->numcat = $cat->countItemSub($this->_data); //Số sản phẩm con

    	$this->view->subcat = $cat->countSubcat($this->_data['id']);

    	//list cat
		$this->view->listcat = $cat->listCatParent($this->_data['id']);
    	
    	if($this->_request->isPost()){
    		$item = new $this->_model();
    		$item->delItembyCat($this->_data);
    		$this->_redirect($this->_module.'/'.$this->_controller.'/cat');
    	}
    }
	public function indexAction(){
		$item = new $this->_model();   
		$this->view->items = $item->listItemadmin($this->_data);

		$totalItem = $item->countItemadmin();
		$paginator = new GLT_Paginator();
		$this->view->paginator = $paginator->createPaginator($totalItem, $this->_paginator);

        if($this->_request->isPost()){
        	$item->activeItem($this->_data);
        	$this->_redirect('http://'.$_SERVER["SERVER_NAME"].$this->_request->getRequestUri());
        }
    }
	public function addAction(){
		$this->view->headScript()->appendFile($this->_request->getBaseUrl().'/public/plugin/ckeditor/ckeditor.js');
        $this->view->headScript()->appendFile($this->_request->getBaseUrl().TEMPLATE_ADMIN.'/js/jquery.seoAlias.js');
        $this->view->headScript()->appendFile($this->_request->getBaseUrl().TEMPLATE_ADMIN.'/js/string.seoAlias.js');
		
    	$cat = new $this->_modelCat();
		$this->view->cat = $cat->listCatParent();
		
    	if($this->_request->isPost()){
    		$validateForm = ucfirst($this->_controller).'_Form_Validate';
    		$validate  = new $validateForm($this->_data);

    		if($validate->isError()==true){
    			$this->view->error = $validate->getError();
				$this->view->items = $validate->getData();
    		}else{
    			$item = new $this->_model();
    			$item->addItem($this->_data);
    			$this->_redirect($this->_module.'/'.$this->_controller);
    		}
    	}
    }
	public function editAction(){
    	$this->view->headScript()->appendFile($this->_request->getBaseUrl().TEMPLATE_ADMIN.'/js/checklist.js');
    	$this->view->headScript()->appendFile($this->_request->getBaseUrl().'/public/plugin/ckeditor/ckeditor.js');
        $this->view->headScript()->appendFile($this->_request->getBaseUrl().TEMPLATE_ADMIN.'/js/jquery.seoAlias.js');
        $this->view->headScript()->appendFile($this->_request->getBaseUrl().TEMPLATE_ADMIN.'/js/string.seoAlias.js');

    	$item = new $this->_model();
		$this->view->item = $item->editItem($this->_data);
		
		$cat = new $this->_modelCat();
		$this->view->cat = $cat->listCatParent();
		
    	if ($this->_request->isPost()) {
    		$validateForm = ucfirst($this->_controller).'_Form_Validate';
    		$validate  = new $validateForm($this->_data);
    		if($validate->isError()==true){
    			$this->view->error = $validate->getError();
				$this->view->item = $item->editItem($this->_data);
    		}else{
    			$item->saveItem($this->_data);
				$this->_redirect($this->_module.'/'.$this->_controller);
    		}
		}
    }
}