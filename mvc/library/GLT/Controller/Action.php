<?php
class GLT_Controller_Action extends Zend_Controller_Action{
	
	public function preDispatch(){
		$this->view->lang = Zend_Registry::get("lang"); //load lang
		//$this->view->config = Zend_Registry::get("config"); //load config
		$this->view->web = Zend_Registry::get("web"); //load web
		
        //Get thư viện CSS, JS dùng chung
        $this->view->headScript()->appendFile($this->_request->getBaseUrl().TEMPLATE.'/js/jquery-1.6.4.min.js');
        $this->view->headScript()->appendFile($this->_request->getBaseUrl().TEMPLATE.'/js/jquery-banner-rotato.js');
        $this->view->headScript()->appendFile($this->_request->getBaseUrl().TEMPLATE.'/js/jquery-banner-rotato.effect.js');
        $this->view->headLink()->appendStylesheet($this->_request->getBaseUrl().TEMPLATE.'/css/wt-rotator.css');
        
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