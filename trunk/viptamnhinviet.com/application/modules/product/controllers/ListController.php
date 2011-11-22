<?php
class Product_ListController extends GLT_Controller_Action {
	private $_data;    
    public function init(){
    	//Check login
    	$auth = Zend_Auth::getInstance();
        if (!$auth->hasIdentity()) {
        	$this->_redirect('/');
        }
        
        //Load function for module
		$this->_data = $this->_request->getParams();

        $loadfunction = new Default_Model_Common();
        foreach($loadfunction->loadFunction($this->_data['module']) as $value){
            if($this->_data['action'] == $value['action']){
                $load = new $value['model_load']();
                $this->view->$value['varname'] = $load->$value['function_load']();
            }
        }
    }
	
	public function indexAction() {	
		$product = new Product_Model_Product();
		$this->view->lsPostItem = $product->listPostedItem();
	}
}