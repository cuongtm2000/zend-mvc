<?php
class FinishController extends GLT_Controller_Action{
    protected $_data;

    public function init (){
        $this->_data = $this->_request->getParams();
    }
    public function indexAction ()
    {
		$job = new Job_Model_Job();
        $file = new Job_Model_File();
		if (isset($this->_data['id'])) {
            $id = $this->_data['id'];
            $j = $job->getJob($id);
            $files=$file->listFiles($id);
			$j['files'] = $files;            
			
            $this->view->job = $j;
            $this->view->id = $id;  
        }else{
			$this->_redirect('/job/list');
		}
		if ($this->_request->isPost()) {			
			$job->finishItem($this->_data['id']);
			$this->_redirect('/job/list');
		}
	} 
}