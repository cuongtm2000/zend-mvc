<?php
class ListController extends GLT_Controller_Action{
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
		//$this->_data['user'] = $this->view->infouser('username');
    }
    public function indexAction (){
        $this->view->listjobs = $this->_dbJob->listJobs($this->_data);
		//paging
		$totalItem = $this->_dbJob->countItem();
		$paginator = new GLT_Paginator();
		$this->view->paginator = $paginator->createPaginator($totalItem, $this->_paginator);
		
		$this->webTitle('List Job');
    }
	public function viewAction (){
        if (isset($this->_data['id'])) {
            $id = $this->_data['id'];
            $job = $this->_dbJob->getJob($id);
            $files=$this->_dbFile->listFiles($id);
			$job['files'] = $files;            

            $this->view->job = $job;
            $this->view->id = $id;  
        }
        $this->webTitle('View Job');
    }
}
