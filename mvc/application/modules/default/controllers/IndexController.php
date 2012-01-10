<?php
class IndexController extends GLT_Controller_Action {
	private $_data;
    
	public function init(){        
    	//Load function for module
	//	$this->_data = $this->_request->getParams();
//        
//        $loadfunction = new Default_Model_Common();
//        foreach($loadfunction->loadFunction($this->_data['module']) as $value){
//            if($this->_data['action'] == $value['action']){
//                $load = new $value['model_load']();
//                $this->view->$value['varname'] = $load->$value['function_load']();
//            }
//        }
	}
		
	public function indexAction() {
	//   var_dump($this->_data);
		//$this->view->headScript()->appendFile($this->_request->getBaseUrl().TEMPLATE.'/js/jcarousellite_1.0.1.js');
		//$this->view->headScript()->appendFile($this->_request->getBaseUrl().TEMPLATE.'/js/special-block.js');
		
		//parse title
	//	$this->webTitle($this->view->lang['default']);
	}
}