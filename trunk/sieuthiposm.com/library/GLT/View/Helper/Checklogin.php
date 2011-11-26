<?php
class GLT_View_Helper_Checklogin extends Zend_View_Helper_Abstract{
    public function checklogin(){
    	$auth = Zend_Auth::getInstance();
	    if ($auth->hasIdentity()) {
	        return true;
	    }
        return false;
    }
}