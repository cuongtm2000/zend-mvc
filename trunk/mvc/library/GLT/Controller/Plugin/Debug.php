<?php
class GLT_Controller_Plugin_Debug extends Zend_Controller_Plugin_Abstract{
    public function preDispatch(Zend_Controller_Request_Abstract $request){
        
        $data=$this->getRequest()->getParams();
        if(DEBUG_MODE && $data['module']!= 'webadmin'){
            var_dump($this->getRequest()->getParams());   
        }
    }

}