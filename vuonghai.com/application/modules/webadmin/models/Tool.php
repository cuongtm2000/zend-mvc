<?php
class Webadmin_Model_Tool extends Zend_Db_Table{
	protected $_name = 'dos_sys_seos';
    protected $_primary = 'seo_name';

    //getlist Menu for Admin
    public function getListmenu(){
        $data[] = array('url'=>'seo', 'name'=>'Công cụ tìm kiếm');
        $data[] = array('url'=>'analytics', 'name'=>'Báo cáo thống kê');
        return $data;
    }
    public function getGoogleAnalytic(){
    	$db = $this->getAdapter();
    	$select = $db->select()->from($this->_name, array('seo_content'))
    				   		   ->where("seo_name = 'google_analytic'");
    	return $db->fetchRow($select);
    }
    public function insertGoogleAnalytic($data = NULL){
    	$validator = new Zend_Validate();
    	$validator->addValidator(new Zend_Validate_Db_RecordExists(array('table' => $this->_name, 'field' => 'seo_name')));
		if ($validator->isValid('google_analytic')) {
			//Update
			$this->update(array('seo_content'=> $data['google_analytic']), "seo_name = 'google_analytic'");
		}else{
			//Insert
			$this->insert(array('seo_name'=> 'google_analytic', 'seo_content'=> $data['google_analytic']));
		}
    }
}