<?php
class GLT_Controller_Action extends Zend_Controller_Action{
	public function webTitle($str){
		$this->view->headTitle($str.' - Job Management Software - Grouplaptrinh.com');
		$this->view->headMeta()->appendName('keywords', $str.' - Job Management Software - Grouplaptrinh.com');
        $this->view->headMeta()->appendName('description', $str.' - Job Management Software - Grouplaptrinh.com');
	}
}