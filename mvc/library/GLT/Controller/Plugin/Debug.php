<?php
class GLT_Controller_Plugin_Debug extends Zend_Controller_Plugin_Abstract{
    public function preDispatch(Zend_Controller_Request_Abstract $request){
        
        $module=$this->getRequest()->getParam('module');
        if(DEBUG_MODE){
            if( $module != 'webadmin')
                var_dump($this->getRequest()->getParams());   
            elseif (DEBUG_MODE_IN_WEBADMIN) {
                var_dump($this->getRequest()->getParams());  
            }
        }
    }

}