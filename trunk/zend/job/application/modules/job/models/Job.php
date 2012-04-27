<?php
class Job_Model_Job extends Zend_Db_Table{
	protected $_name = 'glt_jobs';
    protected $_primary = 'job_id';
    private $_xss = NULL;
	private $_username;
	
    public function init(){    	
        $this->_xss = Zend_Registry::get('xss');
		//Get info login
    	$auth = Zend_Auth::getInstance();
    	if ($auth->hasIdentity()){
			$this->_username = $auth->getIdentity()->username;
    	}
    }
    
	public function listJobs($data = NULL){
		try{
			//get paging number
	    	$paginator = $data['paginator'];
	    	if ($paginator['itemCountPerPage']>0){
				$page = $paginator['currentPage'];
				$rowCount = $paginator['itemCountPerPage'];
			}
			$select = $this->select()->from($this->_name, array('job_id', 'job_title','reciever','start_date','last_date','status'))
									->where('glt_usernames_username=?', $this->_username)
									 ->limitPage($page,$rowCount)
									 ->order('job_id DESC');
	        $result= $this->fetchAll($select)->toArray();
			foreach ($result as &$j) {
	            $this->fixAll($j);
	        }		
		}catch(Exception $e){
			echo $e;
		}
        return $result;
	}
	public function countItem(){
    	$db = $this->getAdapter();
    	$select = $db->select()->from($this->_name, array('COUNT(job_id) as total'))->where('glt_usernames_username=?',$this->_username);
		return $db->fetchOne($select);
    }
	public function countItemRecive(){
    	$db = $this->getAdapter();
    	$select = $db->select()->from($this->_name, array('COUNT(job_id) as total'))->where('reciever=?',$this->_username);
		return $db->fetchOne($select);
    }
	public function getJob($i){
		try{
			$select = $this->select()->from($this->_name, 
						array('job_id', 'content','job_title','reciever','start_date','last_date','status'))
						->where('job_id=?',$i);
			$result= $this->fetchRow($select)->toArray();
			$this->fixAll($result);
		}catch(Exception $e){
			echo $e;
		}
        return $result;
	}
	public function listReceivedJobs($data){
		try{
			//get paging number
	    	$paginator = $data['paginator'];
	    	if ($paginator['itemCountPerPage']>0){
				$page = $paginator['currentPage'];
				$rowCount = $paginator['itemCountPerPage'];
			}	
		
			$select = $this->select()->from($this->_name, 
				array('job_id', 'job_title','start_date','glt_usernames_username','last_date','status'))
				->where('reciever=?',$data['user'])
				->limitPage($page,$rowCount)
				->order('job_id DESC');
				
	        $result= $this->fetchAll($select)->toArray();
			foreach ($result as &$j) {
	            $this->fixAll($j);
	        }
		}catch(Exception $e){
			echo $e;
		}
        return $result;
	}
/*	public function listReceivedJob($i){
		$select = $this->select()->from($this->_name, 
						array('job_id', 'content','job_title','glt_usernames_username',
							'start_date','last_date','status'))
					->where('job_id=?',$i);
        $result= $this->fetchRow($select)->toArray();
        return $result;
	}*/
	public function addItem($data){
		$ngay_batdau=$this->yyyymmdd($data['start_date']);
		$ngay_ketthuc=$this->yyyymmdd($data['last_date']);
		
		
		$dd = array(
			'job_title' => $this->_xss->purify($data['title']), 
			'content' 	=> $this->_xss->purify($data['content']), 
			'start_date'=> $this->_xss->purify($ngay_batdau),
			'last_date' => $this->_xss->purify($ngay_ketthuc), 
			'reciever' 	=> $this->_xss->purify($data['reciever']),
			'glt_usernames_username' => $this->_xss->purify($this->_username));
		try{ 
			$id= $this->insert($dd);
			
			$html = 'Xin chào <b>'.$data['reciever'].'</b>,<br /><br />Bạn vừa nhận được yêu cầu xử lí một công việc từ <b>'.$this->_username.'</b> với nội dung như sau:<br /><br /><b>Tên công việc:</b> '.$data['title'].'<br /><b>Nội dung:</b> '.$data['content'].'<br /><b>Ngày bắt đầu:</b> '.$data['start_date'].'<br /><b>Ngày kết thúc:</b> '.$data['last_date'].'<br />Cố gắng xử lý sớm nhé!<br /><br />Chúc hợp tác vui vẻ<br />---<br />Product name: Job Management Software<br/>Grouplaptrinh.com';
			$mail = new GLT_System_Mail();
			$user= new Login_Model_User();
			$email= $user->getEmail($data['reciever']);
			
			$mail->sendMailSmtp('info@grouplaptrinh.com', $email, 'Grouplaptrinh.com', $data['userid'], 'Yêu cầu xử lí công việc số '.$id.' - Job Management Software - Grouplaptrinh.com', $html);

			return $id;
		}catch(Zend_Mail_Protocol_Exception  $m){
			echo 'Gửi mail bị lỗi';
			return $id;
		}
		catch(Exception $e){
			echo '<pre>';
			print_r($e);
		}
	}
	public function updateItem($data){
		$ngay_batdau=$this->yyyymmdd($data['start_date']);
		$ngay_ketthuc=$this->yyyymmdd($data['last_date']);
		
		$dd = array(
			'job_title' => $this->_xss->purify($data['title']), 
			'content' 	=> $this->_xss->purify($data['content']), 
			'start_date'=> $this->_xss->purify($ngay_batdau),
			'last_date' => $this->_xss->purify($ngay_ketthuc), 
			'reciever' 	=> $this->_xss->purify($data['reciever']));
		try{
			$where='job_id =\''.$data['id'].'\' and glt_usernames_username= \''.$this->_username.'\'';
			return $this->update($dd,$where);	
		}
		catch(Exception $e){
			echo '<pre>';
			print_r($e);
		}
	}	
	public function finishItem($id){
		try{
			$where='`job_id` =\''.$id.'\' and (`reciever`= \''.$this->_username.'\' or `glt_usernames_username`= \''.$this->_username.'\')';
			$this->update(array('status' => '1'),$where);	
			
			$data=$this->getJob($id);
			
			$html = 'Xin chào <b>'.$data['glt_usernames_username'].'</b>,<br /><br /><b>'.$data['reciever'].'</b> vừa kết thúc một công việc mà bạn đã giao.<br /><b>Mã công việc</b> là: '.$id.' <br /><br />Chúc hợp tác vui vẻ<br />---<br />Product name: Job Management Software<br />Grouplaptrinh.com';
			$mail = new GLT_System_Mail();
			$user= new Login_Model_User();
			$email= $user->getEmail($this->_username);
		
			$mail->sendMailSmtp('info@grouplaptrinh.com', $email, 'Grouplaptrinh.com', $data['userid'], 'Kết thúc công việc số '.$id.' - Job Management Software - Grouplaptrinh.com', $html);

		}catch(Zend_Mail_Protocol_Exception  $m){
			echo 'Gửi mail bị lỗi';
		}
		catch(Exception $e){
			echo '<pre>';
			print_r($e);
		}
	}
	public function delItem($id){
		$where='job_id =\''.$id.'\' and glt_usernames_username= \''.$this->_username.'\'';
		$this->delete($where);
    }
	private function yyyymmdd ($str){
        list ($day, $month, $year) = explode('-', $str);
        if ($day < 10 && (strlen($day) == 1))
            $day = '0' . $day;
        if ($month < 10 && (strlen($month) == 1))
            $month = '0' . $month;
        return $year . '-' . $month . '-' . $day;
    }
	private  function ddmmyyyy (&$date){
        $l = explode(' ', $date);
        list ($y, $m, $d) = explode('-', $l[0]);
        $date= $d . '-' . $m . '-' . $y;
    }
	 private function fixAll (&$j){
        $j['time'] = '';
        $this->ddmmyyyy($j['start_date']);
        $this->ddmmyyyy($j['last_date']);
        if ($j['status'] == '0') {
            $j['status'] = '<b>Chưa hoàn thành</b>';
            $d1 = new Zend_Date($j['start_date'], 'dd-MM-yyyy');
            $d2 = new Zend_Date($j['last_date'], 'dd-MM-yyyy');
            $d_now = new Zend_Date();
            $d_now->set('00:00:00', Zend_Date::TIMES);
            if ($d_now->isLater($d2)) {
                $j['status'] = '<b style="color:#E67817;">Quá hạn</b>';
            } elseif ($d_now->isLater($d1) || $d1->isToday()) {
                $period = $d2->sub($d1)->toValue(Zend_Date::DAY_OF_YEAR);
                $period_to_now = $d_now->sub($d1)->toValue(Zend_Date::DAY_OF_YEAR);
				if($period)	$j['time'] = $period_to_now . '/' . $period . ' ngày (' .
                 round($period_to_now * 100 / $period) . '%)';
            }
        } else {
            $j['status'] = '<b style="color:#0E8F6B;">Đã kết thúc</b>';
        }
    }
	 
}