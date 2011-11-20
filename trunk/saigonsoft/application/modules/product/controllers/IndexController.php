<?php
class Product_IndexController extends GLT_Controller_Action {
    private $_data;
    private $_paginator;
    private $_config;
    
    public function init(){        
    	//Load Zend_Registry
        $this->_config = Zend_Registry::get("config");
        
    	//Load function for module
		$this->_data = $this->_request->getParams();
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
	public function indexAction() {
		$record = new Product_Model_Product();
		$this->_data['cid']=10;
		$this->view->listcat = $record->productByCat($this->_data);
		    	//paging
		$totalItem = $record->countItembyCatID($this->_data['cid']);
		$paginator = new GLT_Paginator();
		$this->view->paginator = $paginator->createPaginator($totalItem, $this->_paginator);
		
		
		$this->webTitle($this->view->lang[$this->_data['module']]);
	}
    public function viewAction(){
//		$this->view->headLink()->appendStylesheet($this->_request->getBaseUrl().TEMPLATE.'/css/product-detail.css');
//		$this->view->headLink()->appendStylesheet($this->_request->getBaseUrl().TEMPLATE.'/css/jquery.fancybox-1.3.1.css');
//		$this->view->headScript()->appendFile($this->_request->getBaseUrl().TEMPLATE.'/js/tab-detail.js');
//		$this->view->headScript()->appendFile($this->_request->getBaseUrl().TEMPLATE.'/js/jcarousellite_1.0.1.js');
//		$this->view->headScript()->appendFile($this->_request->getBaseUrl().TEMPLATE.'/js/special-block.js');
//		$this->view->headScript()->appendFile($this->_request->getBaseUrl().TEMPLATE.'/js/contentslider.js');
//		$this->view->headScript()->appendFile($this->_request->getBaseUrl().TEMPLATE.'/js/scroller.js');
//		$this->view->headScript()->appendFile($this->_request->getBaseUrl().TEMPLATE.'/js/jquery.fancybox-1.3.1.js');
//		$this->view->headScript()->appendFile($this->_request->getBaseUrl().TEMPLATE.'/js/lightbox.js');
	
		$record = new Product_Model_Product();
    	$result = $record->getDetail($this->_data['id']);
    	$this->view->productdetail = $result;

    	$this->view->productcat = $record->productByCatNoneid($result['dos_module_product_cat_cat_id'], $this->_data['id']);
    	
    	$this->webTitle($result['title'.LANG].' - '.$this->view->lang[$this->_data['module']]);
    }
    
    public function confimAction(){
    	$this->_helper->viewRenderer->setNoRender(); // Disable the viewscript
		$this->_helper->layout->disableLayout();  // Disable the layout

    	if($this->_request->isPost()){
			$record = new Product_Model_Product();
			$record->orderSendmail($this->_data);
			$this->_redirect($this->_data['module'].'/index/success');
		}
    }
    public function successAction(){
    	$this->webTitle($this->view->lang['contact_success']);
    }
    public function catAction(){
    	$record = new Product_Model_Product();
    	$this->view->productcat = $record->productByCat($this->_data);
    	
    	//paging
		$totalItem = $record->countItembyCatID($this->_data['cid']);
		$paginator = new GLT_Paginator();
		$this->view->paginator = $paginator->createPaginator($totalItem, $this->_paginator);
    	
    	$cat = new Product_Model_ProductCat();
    	$this->view->infocat = $cat->getCatbyId($this->_data['cid']);
    	$this->view->listsubcat = $cat->getListSubCat($this->_data);
    	
    	$this->webTitle($this->view->infocat['cat_title'.LANG].' - '.$this->view->lang[$this->_data['module']]);
    }
    // insert an item into cart
	public function orderAction(){
    	$cartSession = new Zend_Session_Namespace('cart');
		$ssInfo = $cartSession->getIterator();
		$filter = new Zend_Filter_Digits();
		$id = $filter->filter($this->_data['id']);
		if(count($cartSession->cart) == 0){
			$cart[$id] = 1;
			$cartSession->cart = $cart;
		}else{
			$tmp = $ssInfo['cart'];
			if(array_key_exists($id,$tmp) == true){
				$tmp[$id] = $tmp[$id] + 1;
			}else{
				$tmp[$id] = 1;
			}
			$cartSession->cart = $tmp;
		}
		$this->_redirect('/product/index/cart-item');
		
		$this->_helper->viewRenderer->setNoRender(); // Disable the viewscript
		$this->_helper->layout->disableLayout();  // Disable the layout
    }
    // view cart info
    public function cartItemAction(){
    	$cartSession = new Zend_Session_Namespace('cart');
		$ssInfo = $cartSession->getIterator();
		$tblProduct = new Product_Model_Product();
		$this->view->Items = $tblProduct->listItem($ssInfo['cart']);
		$this->view->cart =  $ssInfo['cart'];

		if($this->_request->isPost()){
			//update the num of date
			$cartSession = new Zend_Session_Namespace('cart');
			$ssInfo = $cartSession->getIterator();
			$tmp = $ssInfo['cart'];
			foreach ($tmp as $k => $v){
				$tmp[$k] = $this->_data['num_of_dates'][$k];
			}
			$cartSession->cart = $tmp;
			//redirect
			$this->_redirect('/product/index/ordering');
		}
		
		$this->webTitle($this->view->lang['product_cartitem']);
    }
    
    // delete an item in cart
    public function cartDeleteAction(){
    	$id = $this->_data['id'];
    	
    	$cartSession = new Zend_Session_Namespace('cart');
		$ssInfo = $cartSession->getIterator();
		$tmp = $ssInfo['cart'];
		unset($tmp[$id]);
		$cartSession->cart = $tmp;
		$this->_redirect('/product/index/cart-item');
		$this->_helper->viewRenderer->setNoRender();
    }
    
    public function orderingAction(){
    	$cartSession = new Zend_Session_Namespace('cart');
		$ssInfo = $cartSession->getIterator();
		$tblProduct = new Product_Model_Product();
		$this->view->Items = $tblProduct->listItem($ssInfo['cart']);
		$this->view->cart =  $ssInfo['cart'];
		
    	if($this->_request->isPost()){
			//validate data
			$validator = new Product_Form_ValidateOrdering($this->_data);
			if($validator->isError() == true){				
				$this->view->messageError = $validator->getMessageError();
				$this->view->FormInfo = $validator->getData();
			}else{
				//Gui mail
				$formInfo = $validator->getData();
				$tblProduct->orderSendmail($formInfo, $this->view->Items);
				$this->_redirect($this->_data['module'].'/index/success');
			}
		}
		$this->webTitle($this->view->lang['product_ordering']);
    }
}