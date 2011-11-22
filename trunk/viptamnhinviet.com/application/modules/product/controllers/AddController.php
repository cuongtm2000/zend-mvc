<?php
class Product_AddController extends GLT_Controller_Action {
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
		$cat = new Product_Model_ProductCat();
		$this->view->cat = $cat->listCatParent();
		
    	if($this->_request->isPost()){
    		$validate  = new Product_Form_ProductValidate($this->_data);
    		if($validate->isError()==true){
    			$this->view->error = $validate->getError();
				$this->view->items = $validate->getData();
    		}else{
    			$record = new Product_Model_Product();
    			$record->addItem2($this->_data);
    			$this->_redirect('product/list');
    		}
    	}
        $this->webTitle('Đăng sản phẩm mới');
	}
}