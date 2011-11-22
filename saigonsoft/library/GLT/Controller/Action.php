<?php
class GLT_Controller_Action extends Zend_Controller_Action{
	
	public function preDispatch(){
		$this->view->lang = Zend_Registry::get("lang"); //load lang
		//$this->view->config = Zend_Registry::get("config"); //load config
		$this->view->web = Zend_Registry::get("web"); //load web
		
		$pro = new Product_Model_Product();
		$paginator['itemCountPerPage'] =100;
        $paginator['pageRange'] = 10;
        $paginator['currentPage'] =1;
        
		$this->view->menu_product = $pro->productByCat(array('cid'=>10, 'paginator'=> $paginator));

		//Support
		$support=new Support_Model_Support();
		$this->view->menu_support=$support->getListmenu();
		//Contact
		$contact = new Contact_Model_Contact();
		$this->view->contact_home = $contact->getHomeRecord();
		
        //Request
        $request = $this->_request->getParams();
		$this->view->module = $request['module'];
		
        //Get Logo và banner
        $banner = new Banner_Model_Banner();
        $this->view->logo = $banner->getLogo();
        $this->view->banner = $banner->getAllBanner($this->view->module);

        //Google analytic
        $db = Zend_Registry::get('connectDb');
    	$select = $db->select()->from('dos_sys_seos', array('seo_content'))->where("seo_name = 'google_analytic'");
    	$result = $db->fetchRow($select);
        $this->view->google_analytic = stripslashes($result['seo_content']);
	}
	public function webTitle($str){
		$this->view->headTitle($str.' - '.$this->view->web['titleweb']);
		$this->view->headMeta()->appendName('keywords', $str.' - '.$this->view->web['keywords'].' - '.$this->view->web['titleweb']);
        $this->view->headMeta()->appendName('description', $str.' - '.$this->view->web['description'].' - '.$this->view->web['titleweb']);
	}
}