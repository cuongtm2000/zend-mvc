<?php
class IndexController extends GLT_Controller_Action {
	protected $_data;
    protected $_dbJob;
  
    
    public function init (){
        $this->_data = $this->_request->getParams();
        
        $this->_dbJob = new Job_Model_Job();
		$this->_data['user'] = $this->view->infouser('username');
		$this->_paginator['itemCountPerPage'] = 10;
        $this->_paginator['pageRange'] = 5;
        $this->_paginator['currentPage'] = $this->_request->getParam('page',1);
		$this->_data['paginator'] = $this->_paginator;
    }
    public function indexAction (){
        $this->view->listjobs = $this->_dbJob->listJobs($this->_data);
		$this->view->listRecievJobs =  $this->_dbJob->listReceivedJobs($this->_data);
		
		$this->webTitle('Job Management Software');
    }
}