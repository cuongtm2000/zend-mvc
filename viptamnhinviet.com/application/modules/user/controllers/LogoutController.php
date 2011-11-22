<?php
class User_LogoutController extends GLT_Controller_Action {
	public function indexAction() {
        $auth = Zend_Auth::getInstance();
        $auth->clearIdentity();
        $this->_redirect('/');
    }
}