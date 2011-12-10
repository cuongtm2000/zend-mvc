<?php
class GLT_Controller_Action extends Zend_Controller_Action{
	
	public function preDispatch(){
		$this->view->lang = Zend_Registry::get("lang"); //load lang
		$this->view->config = Zend_Registry::get("config"); //load config
		$this->view->web = Zend_Registry::get("web"); //load web
		
        //Get thư viện CSS, JS dùng chung
        $this->view->headScript()->appendFile($this->_request->getBaseUrl().TEMPLATE.'/js/jquery-1.6.4.min.js');
       	$this->view->headScript()->appendFile($this->_request->getBaseUrl().TEMPLATE.'/js/jquery-banner-rotato.js');
       	$this->view->headScript()->appendFile($this->_request->getBaseUrl().TEMPLATE.'/js/jquery-banner-rotato.effect.js');
       	$this->view->headScript()->appendFile($this->_request->getBaseUrl().TEMPLATE.'/js/jquery.prettyPhoto.js');
        $this->view->headLink()->appendStylesheet($this->_request->getBaseUrl().TEMPLATE.'/css/wt-rotator.css');
        $this->view->headLink()->appendStylesheet($this->_request->getBaseUrl().TEMPLATE.'/css/prettyPhoto.css');
        
        //Get Logo và banner
        $banner = new Banner_Model_Banner();
        $this->view->logo = $banner->getLogo();
        $this->view->banner = $banner->getAllBanner();
        
		//Get Product Cat
		$productcat = new Product_Model_ProductCat();
		$this->view->listProductCat = $productcat->getListmenu();
		
		//Get support
		$support = new Support_Model_Support(); 
		$this->view->menu_support=$support->getListmenu();

		//Get Adv
		$adv = new Adv_Model_Adv();
		$this->view->adv = $adv->getListAdvLeft();
	
		
		//Get contact_home
		$contact = new Contact_Model_Contact();
		$this->view->contact_home = $contact->getHomeRecord();
		
		//Get Video home
		$video_home = new Video_Model_Video();
		$this->view->video_home = $video_home->getHomeItem();
		
        //Request
        $request = $this->_request->getParams();
		$this->view->module= $request['module'];
        
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