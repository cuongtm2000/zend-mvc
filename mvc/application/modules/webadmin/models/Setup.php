<?php
class Webadmin_Model_Setup extends Zend_Db_Table{
	protected $_name = 'dos_sys_modules';
    protected $_primary = 'module';
    private $_xss = NULL;

    public function init(){
        $this->_xss = Zend_Registry::get('xss');
    }

    public function getListmodule(){
        $select = $this->select()->from('dos_sys_modules',array('moduleid', 'module', 'moduleen', 'modulefr', 'url', 'target', 'position'))->order('position ASC');
        $result = $this->fetchAll($select)->toArray();
        return $result;
    }
    public function addListmodule($data = NULL){
    	$moduleid = $data['modelid'];
		$module = $data['model'];
		$moduleen = isset($data['modelen']) ? $data['modelen'] : '';
		$modulefr = isset($data['modelfr']) ? $data['modelfr'] : '';
		$url = $data['url'];
		$target = $data['target'];
		$position = $data['pos'];
		
		//add new modelid
		$modelidnew = isset($data['modelnewen']) ? $data['modelidnew'] : '';
		$modelnew = isset($data['modelnewen']) ? $data['modelnew'] : '';
		$modelnewen = isset($data['modelnewen']) ? $data['modelnewen'] : '';
		$modelnewfr = isset($data['modelnewfr']) ? $data['modelnewfr'] : '';
		$urlnew = isset($data['modelnewen']) ? $data['urlnew'] : '';
		$targetnew = isset($data['modelnewen']) ? $data['targetnew'] : '';
		$posnew = isset($data['modelnewen']) ? $data['posnew'] : '';
		
		//delete all module
		$this->delListmodule();
		
    	$i = 0;
		foreach($moduleid as $value){
			if(!empty($moduleid[$i]) && !empty($module[$i]) && !empty($url[$i])){
            	$bind = array('moduleid' => $this->_xss->purify(trim($moduleid[$i])), 'module' => $this->_xss->purify(trim($module[$i])), 'moduleen' => isset($moduleen[$i]) ? $this->_xss->purify(trim($moduleen[$i])) : '', 'modulefr' => isset($modulefr[$i]) ? $this->_xss->purify(trim($modulefr[$i])) : '', 'url' => $this->_xss->purify(trim($url[$i])), 'target' => $this->_xss->purify(trim($target[$i])), 'position' => $this->_xss->purify(trim($position[$i])));
        		$this->insert($bind);
            }
            $i++;
        }
        
    	$j = 0;
    	if($modelidnew){
			foreach($modelidnew as $value){
				if(!empty($modelidnew[$j]) && !empty($modelnew[$j]) && !empty($urlnew[$j])){
	            	$bind = array('moduleid' => isset($modelidnew[$j]) ? $this->_xss->purify(trim($modelidnew[$j])) : '', 'module' => isset($modelnew[$j]) ? $this->_xss->purify(trim($modelnew[$j])) : '', 'moduleen' => isset($modelnewen[$j]) ? $this->_xss->purify(trim($modelnewen[$j])) : '', 'modulefr' => isset($modelnewfr[$j]) ? $this->_xss->purify(trim($modelnewfr[$j])) : '', 'url' => isset($urlnew[$j]) ? $this->_xss->purify(trim($urlnew[$j])) : '', 'target' => isset($targetnew[$j]) ? $this->_xss->purify(trim($targetnew[$j])) : '', 'position' => isset($posnew[$j]) ? $this->_xss->purify(trim($posnew[$j])) : '');
	        		$this->insert($bind);
	            }
	            $j++;
	        }
    	}
    }
    public function delListmodule(){
        $where = '';
        $this->delete($where);
    }
    //getlist Menu for Admin
    public function getListmenu(){
        $data[] = array('url'=>'web', 'name'=>'Cấu hình website');
        $data[] = array('url'=>'menu', 'name'=>'Cấu hình Menu');
        $data[] = array('url'=>'lang', 'name'=>'Cấu hình ngôn ngữ');
        $data[] = array('url'=>'function', 'name'=>'Cấu hình chức năng');
        $data[] = array('url'=>'config', 'name'=>'Cấu hình hệ thống');
        return $data;
    }
}