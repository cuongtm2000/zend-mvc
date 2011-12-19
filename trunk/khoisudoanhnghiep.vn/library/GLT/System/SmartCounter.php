<?php
class GLT_System_SmartCounter extends Zend_Db_Table{
   protected $_name = 'dos_sys_statistics';
    protected $_primary = 'session_id';
    private $_config = NULL;
    private $_xss = NULL;
	
    private $_TIME_TO_LIVE = 1800;//sau này đưa vào config
    private $_PERIOD_ONLINE_TIME =300;//giây
    
    public function init(){
    	$this->_config = Zend_Registry::get("config");
        $this->_xss = Zend_Registry::get('xss');
		$this->update_counter();
    }
	
	public function getOnline(){
    	$db = $this->getAdapter();
    	$select = $db->select()->from($this->_name, array('count(session_id)'))
    		->where('time  > \''.(time()- $this->_PERIOD_ONLINE_TIME).'\'');
		return $db->fetchOne($select);
    }
	
	public function getOnlineToday(){
    	$db = $this->getAdapter();
    	$select = $db->select()->from('dos_sys_webs', array('web_value'))
    		->where('web_name =?','total_visit_today');
		return $db->fetchOne($select);
    }
    
	public function visit_total(){
    	$db = $this->getAdapter();
    	$select = $db->select()->from('dos_sys_webs', array('web_value'))
    		->where('web_name =?','total_visit');
		return $db->fetchOne($select);
    }
    
	private function isExist($sid){
		$db = $this->getAdapter();
		$select = $db->select()->from($this->_name, array('count(session_id)'))
			->where('session_id=?',htmlspecialchars($this->_xss->purify($sid)));	
		return ($db->fetchOne($select)>0 )? true:false;
	}

    private function updateTotal(){
     	$total=$this->visit_total();
	  	$db = $this->getAdapter();
	    $data = array('web_value' => $total+1);
	    $db->update('dos_sys_webs',$data, 'web_name = \'total_visit\'');
    }

	private function updateOnlineToday($value ){
	 	if($value==0){
	 		$count=1;
		}
	 	else{
	 		$count=$this->getOnlineToday()+1; 
		}
	 		
	  	$db = $this->getAdapter();
	    $data = array('web_value' => $count);
	    $db->update('dos_sys_webs',$data, 'web_name = \'total_visit_today\'');
    }

    private function getTimeStampToday(){
    	$db = $this->getAdapter();
    	$select = $db->select()->from('dos_sys_webs', array('web_value'))
    		->where('web_name =?','timestamp_today');
		return $db->fetchOne($select);
    }
    
    private function updateTimeStampToday($value){
	  	$db = $this->getAdapter();
	    $data = array('web_value' => $value);
	    $db->update('dos_sys_webs',$data, 'web_name = \'timestamp_today\'');	
    }
    
	
	private function getTimeFromId($sid){
    	$db = $this->getAdapter();
    	$select = $db->select()->from($this->_name, array('time'))
    		->where('sesstion_id =?',$sid);
		return $db->fetchOne($select);
    }
    
	private function updateTimeFromId($sid){
	    $data = array('time' => time());
	    $this->update($data, 'session_id = \''.$sid.'\'');
    }

	private function add($sesstion_id){
		$this->insert(array(
			'session_id' => htmlspecialchars($this->_xss->purify($sesstion_id))
			,'time'=>time()));
    }
    
	private function clean(){
		$this->delete('time  <  '.(time()-$this->_TIME_TO_LIVE));
    }
	
	private function update_counter (){
        //Nếu chuyển qua ngày mới (>84600s) reset lại bộ đếm theo ngày
    	$day_start = $this->getTimeStampToday();
    	if (time() - $day_start > 24*60*60) {
    		$tmp = mktime(0, 0, 0, date("m"), date("d"), date("Y"));
    		$this->updateTimeStampToday($tmp);
    		$this->updateOnlineToday(0);
    	}
    	    	
        $staSession = new Zend_Session_Namespace('statistics');
       
        $sid = $staSession->statistics;
        
        if ($sid == '') {
            $id = $this->rand_id();
            $staSession->statistics = $id;
            $this->add($id);
            $this->updateTotal();
            $this->updateOnlineToday(1);
        } else {
            if (!$this->isExist($sid)) {
                $this->add($sid);
                $this->updateTotal();
                $this->updateOnlineToday(1);
            } else {
                $this->updateTimeFromId($sid);
            }
        }
        $this->clean();//xóa các session có thời gian trên 30p
    }
    
    private function rand_id(){
    	$str = str_shuffle('abcdefghijklmnopqrstuvwxyz1234567890');
 		return  substr($str,0,9);
    }   
}
 