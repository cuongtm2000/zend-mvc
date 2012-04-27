<?php
class Job_Model_File extends Zend_Db_Table{
	protected $_name = 'glt_files';
    protected $_primary = 'file_id';
    
    
	public function listFiles($id_job){
		$select = $this->select()
			->from($this->_name,array('file_name','file_url'))
			->where('glt_jobs_job_id=?',$id_job);
        $result= $this->fetchAll($select)->toArray();
        return $result;
	}
	public function getFile($id_file){
		$select = $this->select()
						->from($this->_name)
						->where('file_id=?',$id_file);
       $result= $this->fetchAll($select);
       return $result;
	}
	public function addItem($id,$baseUrl){
    	$filename = null;
    	if (!empty($_FILES['ufile']['name'])){
    		$upload = new GLT_File_Upload();
    		$upload->upload($_FILES['ufile'],10000,PUBLIC_PATH.'/files/',$id);
    		
	    	if($upload->isVail() == false){
				$filename = $upload->transferFile(); //upload file	
				$data = array(	'file_name' 		=> $filename, 
						'file_url' 			=> $baseUrl.'/public/files/'.$filename, 
						'glt_jobs_job_id' 	=> $id);
				$this->insert($data);
			}else{
				print_r($upload->_errors);
			}			
    	}       
    }
	public function delItem($id){
		$this->delete('glt_jobs_job_id=\''.$id.'\'');
		$upload = new GLT_File_Upload();
		$upload->transferFile(); //upload file
    }
}