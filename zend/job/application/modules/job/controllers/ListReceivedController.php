<?php
class ListReceivedController extends GLT_Controller_Action{
	protected $_data;
    protected $_dbJob;
    protected $_dbFile;
    protected $_paginator;
	  
    public function init (){
        $this->_data = $this->_request->getParams();
        $this->_dbJob = new Job_Model_Job();
        $this->_dbFile=new Job_Model_File();
		$this->_paginator['itemCountPerPage'] = 10;
        $this->_paginator['pageRange'] = 5;
        $this->_paginator['currentPage'] = $this->_request->getParam('page',1);
		$this->_data['paginator'] = $this->_paginator;
		$this->_data['user'] = $this->view->infouser('username');
    }
    public function indexAction (){
    	//paging
		$totalItem = $this->_dbJob->countItemRecive($this->_data['user']);
		$paginator = new GLT_Paginator();
		$this->view->paginator = $paginator->createPaginator($totalItem, $this->_paginator);
        $this->view->listjobs =  $this->_dbJob->listReceivedJobs($this->_data);

        $this->webTitle('Received Job');
    }
}