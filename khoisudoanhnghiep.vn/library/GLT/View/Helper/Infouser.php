<?php
class GLT_View_Helper_Infouser extends Zend_View_Helper_Abstract{
    public function infouser($value){
        $auth = Zend_Auth::getInstance();
        $infoUser = $auth->getIdentity();
        return $infoUser->$value;
    }
}