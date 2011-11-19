<?php
class Statistics_Model_Statistics extends Zend_Db_Table{
	protected $_name = 'dos_sys_statistics';
    protected $_primary = 'session_id';
    protected $_config = NULL;
    private $_xss = NULL;
	
    private $_TIME_TO_LIVE = 1800;//sau này đưa vào config
    private $_PERIOD_ONLINE_TIME =300;//giây
    
    public function init(){
    	$this->_config = Zend_Registry::get("config");
        $this->_xss = Zend_Registry::get('xss');
    }
    
	public function isExist($sid)
	{
		$db = $this->getAdapter();
		$select = $db->select()->from($this->_name, array('count(session_id)'))
			->where('session_id=?',htmlspecialchars($this->_xss->purify($sid)));	
		return ($db->fetchOne($select)>0 )? true:false;
	}
    
	public function getTotal(){
    	$db = $this->getAdapter();
    	$select = $db->select()->from('dos_sys_webs', array('web_value'))
    		->where('web_name =?','total_visit');
		return $db->fetchOne($select);
    }
    
    public function updateTotal(){
     	$total=$this->getTotal();
	  	$db = $this->getAdapter();
	    $data = array('web_value' => $total+1);
	    $db->update('dos_sys_webs',$data, 'web_name = \'total_visit\'');
   //   		echo '<pre>'; print_r($e);	echo '</pre>';	
    }
    
	public function getOnlineToday(){
    	$db = $this->getAdapter();
    	$select = $db->select()->from('dos_sys_webs', array('web_value'))
    		->where('web_name =?','total_visit_today');
		return $db->fetchOne($select);
    }
    
	 public function updateOnlineToday($value ){
	 	if($value==0)
	 		$count=0;
	 	else
	 		$count=$this->getOnlineToday()+1; 
	 		
	  	$db = $this->getAdapter();
	    $data = array('web_value' => $count);
	    $db->update('dos_sys_webs',$data, 'web_name = \'total_visit_today\'');
    }

    public function getTimeStampToday(){
    	$db = $this->getAdapter();
    	$select = $db->select()->from('dos_sys_webs', array('web_value'))
    		->where('web_name =?','timestamp_today');
		return $db->fetchOne($select);
    }
    
    public function updateTimeStampToday($value){
	  	$db = $this->getAdapter();
	    $data = array('web_value' => $value);
	    $db->update('dos_sys_webs',$data, 'web_name = \'timestamp_today\'');
   //   		echo '<pre>'; print_r($e);	echo '</pre>';	
    }
    
	
	public function getTimeFromId($sid){
    	$db = $this->getAdapter();
    	$select = $db->select()->from($this->_name, array('time'))
    		->where('sesstion_id =?',$sid);
		return $db->fetchOne($select);
    }
    
   public function updateTimeFromId($sid){
	    $data = array('time' => time());
	    $this->update($data, 'session_id = \''.$sid.'\'');
    }
    
  	public function getOnline(){
    	$db = $this->getAdapter();
    	$select = $db->select()->from($this->_name, array('count(session_id)'))
    		->where('time  > \''.(time()- $this->_PERIOD_ONLINE_TIME).'\'');
		return $db->fetchOne($select);
    }

	public function add($sesstion_id){
		$this->insert(array(
			'session_id' => htmlspecialchars($this->_xss->purify($sesstion_id))
			,'time'=>time()));
    }
    
	public function clean(){
		$this->delete('time  <  '.(time()-$this->_TIME_TO_LIVE));
    }
}