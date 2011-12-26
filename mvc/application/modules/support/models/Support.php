<?php
class Support_Model_Support extends Zend_Db_Table{
	protected $_name = 'dos_module_support';
    protected $_primary = 'support_name';
    protected $_config = NULL;
    private $_xss = NULL;
	
    public function init(){
    	$this->_config = Zend_Registry::get("config");
        $this->_xss = Zend_Registry::get('xss');
    }
	public function getListmenu(){
		$select = $this->select()->from($this->_name, array('support_name', 'support_phone', 'support_value', 'support_order', 'support_type', 'support_part'))->order('support_order ASC');
        $result= $this->fetchAll($select)->toArray();
        return $result;
    }
	//Back end - menu admin
	public function menuAdmin(){
        $menu[] = array('url'=>'support', 'name'=>'Bài viết', 'nameen'=>'Post', 'namefr'=>'Post', 'num'=>$this->countItem());
        return $menu;
    }
	public function addItem($data = NULL){
		// Delete all record
	    $this->delallItem();
            
		// Declare
		$fullname = $data['fullname'];
		$support_phone = $data['support_phone'];
		$support_value = $data['support_value'];
		$support_part = $data['support_part'];
		$order = $data['order'];
		$type = $data['type'];

		$i = 0;
		foreach($support_value as $value){
			if($i<6){
				if(!empty($value[$i]) && !empty($type[$i])){
					$this->insert(array('support_name' => $this->_xss->purify($fullname[$i]), 'support_phone' => $this->_xss->purify($support_phone[$i]), 'support_value' => $this->_xss->purify($support_value[$i]), 'support_order' => $this->_xss->purify($order[$i]), 'support_type' => $this->_xss->purify($type[$i]), 'support_part' => $this->_xss->purify($support_part[$i])));
				}
				$i++;
			}
		}
    }
    public function delallItem(){
    	$where = '';
        $this->delete($where);
    }
	public function countItem(){
    	$db = $this->getAdapter();
    	$select = $db->select()->from($this->_name, array('count(support_id) as totalItem'));
		return $db->fetchOne($select);
    }
}