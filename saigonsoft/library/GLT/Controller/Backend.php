<?php
class GLT_Controller_Backend extends Zend_Controller_Action{
	
	public function preDispatch(){
		$this->view->lang = Zend_Registry::get("lang"); //load lang
		$this->view->web = Zend_Registry::get("web"); //load web

		$this->view->headTitle()->setSeparator(' - '); 
		$this->view->headTitle($this->view->web['titleweb']);
		$this->view->headMeta()->appendName('keywords', $this->view->web['keywords'].' - '.$this->view->web['titleweb']);
        $this->view->headMeta()->appendName('description', $this->view->web['description'].' - '.$this->view->web['titleweb']);
	}
}