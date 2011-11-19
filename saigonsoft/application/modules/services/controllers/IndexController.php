<?php
class Services_IndexController extends GLT_Controller_Action {
    private $_data;
    
    public function init(){       
        //Load function for module
		$this->_data = $this->_request->getParams();
        
        $loadfunction = new Default_Model_Common();
        foreach($loadfunction->loadFunction($this->_data['module']) as $value){
            if($this->_data['action'] == $value['action']){
                $load = new $value['model_load']();
                $this->view->$value['varname'] = $load->$value['function_load']();
            }
        }
    }
	public function indexAction() {
        $record = new Services_Model_Services();

        //list first record
        $this->view->item = $record->getFristRecord();
        
        //parse title
        $this->webTitle($this->view->lang[$this->_data['module']]);
	}
    public function viewAction(){
        $record = new Services_Model_Services();
        
        $detail = $record->getDetail($this->_data['id']);
        $this->view->item = $detail;
		
        //parse title
        $this->webTitle($detail['title'.LANG].' - '.$this->view->lang[$this->_data['module']]);
    }
}