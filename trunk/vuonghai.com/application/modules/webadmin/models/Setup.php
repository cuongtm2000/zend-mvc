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
		$moduleen = $data['modelen'];
		$modulefr = $data['modelfr'];
		$url = $data['url'];
		$target = $data['target'];
		$position = $data['pos'];
		
		//add new modelid
		$modelidnew = $data['modelidnew'];
		$modelnew = $data['modelnew'];
		$modelnewen = $data['modelnewen'];
		$modelnewfr = $data['modelnewfr'];
		$urlnew = $data['urlnew'];
		$targetnew = $data['targetnew'];
		$posnew = $data['posnew'];
		
		//delete all module
		$this->delListmodule();
		
    	$i = 0;
		foreach($moduleid as $value){
			if(!empty($moduleid[$i]) && !empty($module[$i]) && !empty($url[$i])){
                    $data = array('moduleid' => $this->_xss->purify($moduleid[$i]), 'module' => $this->_xss->purify($module[$i]), 'moduleen' => $this->_xss->purify($moduleen[$i]), 'modulefr' => $this->_xss->purify($modulefr[$i]), 'url' => $this->_xss->purify($url[$i]), 'target' => $this->_xss->purify($target[$i]), 'position' => $this->_xss->purify($position[$i]));
        			$this->insert($data);
            }
            $i++;
        }
        
    	$j = 0;
		foreach($modelidnew as $value){
			if(!empty($modelidnew[$j]) && !empty($modelnew[$j]) && !empty($urlnew[$j])){
                    $data = array('moduleid' => $this->_xss->purify($modelidnew[$j]), 'module' => $this->_xss->purify($modelnew[$j]), 'moduleen' => $this->_xss->purify($modelnewen[$j]), 'modulefr' => $this->_xss->purify($modelnewfr[$j]), 'url' => $this->_xss->purify($urlnew[$j]), 'target' => $this->_xss->purify($targetnew[$j]), 'position' => $this->_xss->purify($posnew[$j]));
        			$this->insert($data);
            }
            $j++;
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