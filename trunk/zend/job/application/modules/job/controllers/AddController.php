<?php
class AddController extends GLT_Controller_Action{
	private $_data;
	public function init(){
		$this->_data = $this->_request->getParams();
	}
    public function indexAction (){
    	$this->view->headLink()->appendStylesheet($this->_request->getBaseUrl().TEMPLATE.'/css/jquery-ui-1.8.14.custom.css');
        $this->view->headScript()->appendFile($this->_request->getBaseUrl() . '/public/plugin/ckeditor/ckeditor.js');
        $this->view->headScript()->appendFile($this->_request->getBaseUrl() . '/public/templates/adsense/js/jquery-1.5.1.js');
        $this->view->headScript()->appendFile($this->_request->getBaseUrl() . '/public/templates/adsense/js/jquery-ui-1.8.14.custom.min.js');
        $this->view->headScript()->appendFile($this->_request->getBaseUrl() . '/public/templates/adsense/js/jquery.ui.datepicker-vi.js');
        $this->view->headScript()->appendFile($this->_request->getBaseUrl() . '/public/templates/adsense/js/jquery.datepicker.config.js');	
       
        $job = new Job_Model_Job();
        $file = new Job_Model_File();
        $user = new Login_Model_User();
		        
        $this->view->users = $user->listUser();	
		
        if ($this->_request->isPost()) {			
			$this->view->data = $this->_data;
			$validate = new Job_Form_Validate($this->_data);
			if($validate->isError() == true){
				$this->view->error = $validate->getError();				
			}else{
				$this->_data['url']=$this->view->baseUrl();
				$id=$job->addItem($this->_data);
				$file->addItem($id, $this->view->baseUrl());
				$this->_redirect('/job/list');
			}
		}
		$this->webTitle('Add Job');
    }
}