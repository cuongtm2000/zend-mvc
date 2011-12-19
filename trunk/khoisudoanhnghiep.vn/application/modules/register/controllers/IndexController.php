<?php
class Register_IndexController extends GLT_Controller_Action {
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
		$province = new Default_Model_Provinces();
		$this->view->province = $province->listProvinces();
		
		if($this->_request->isPost()){	
			$validate = new Register_Form_Validate($this->_data);
			
			if($validate->isError() == true){
				$this->view->error = $validate->getError();
				$this->view->items = $this->_data;
			}else{
				$reg = new Register_Model_Register();
				$reg->addItem($this->_data);
				$this->_redirect('/');
			}
		}
		$this->webTitle($this->view->lang[$this->_data['module']]);
	}
}