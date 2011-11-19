<?php
class Statistics_IndexController extends GLT_Controller_Action {
    private $_arrParam;
    private $_lang;
    private $_statistics;
    
    public function init(){
    	$this->_statistics=new Statistics_Model_Statistics();
    	$this->update_counter();
    }
	
    public function indexAction() {
    	 $staSession = new Zend_Session_Namespace('statistics');
    	
    
    	 echo 'Đang online ';
    	 echo $this->_statistics->getOnline();
    	 echo '<br />Số truy cập trong ngày ';
    	 echo $this->_statistics->getOnlineToday();
    	 echo '<br />Tổng lượt truy cập '; 
    	 echo $this->_statistics->getTotal();
    	
    	$this->_helper->viewRenderer->setNoRender();
    }
    private function update_counter ()
    {
        //Nếu chuyển qua ngày mới (>84600s) reset lại bộ đếm theo ngày
    	$day_start=$this->_statistics->getTimeStampToday();
    	if (time() - $day_start > 24*60*60) {
    		$tmp = mktime(0, 0, 0, date("m"), date("d"), date("Y"));
    		$this->_statistics->updateTimeStampToday($tmp);
    		$this->_statistics->updateOnlineToday(0);
    	}
    	    	
        $staSession = new Zend_Session_Namespace('statistics');
        $sid = $staSession->statistics;
        
        if ($sid == '') {
            $id = $this->rand_id();
            $staSession->statistics = $id;
            $this->_statistics->add($id);
            $this->_statistics->updateTotal();
            $this->_statistics->updateOnlineToday(1);
        } else {
            if (! $this->_statistics->isExist($sid)) {
                $this->_statistics->add($sid);
                $this->_statistics->updateTotal();
                $this->_statistics->updateOnlineToday(1);
            } else {
                $this->_statistics->updateTimeFromId($sid);
            }
        }
        $this->_statistics->clean();//xóa các session có thời gian trên 30p
    }
    
    private function rand_id(){
    	$str = str_shuffle('abcdefghijklmnopqrstuvwxyz1234567890');
 		return  substr($str,0,9);
    }   
}
