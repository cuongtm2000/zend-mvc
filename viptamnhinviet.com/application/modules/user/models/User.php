<?php
class User_Model_User extends Zend_Db_Table{
	protected $_name = 'dos_sys_users';
    protected $_primary = 'username';
    private $_config = null;
    private $_xss = NULL;
    private $_web = NULL;
	private $_username;
    
    public function init(){
    	$this->_config = Zend_Registry::get("config");
        $this->_xss = Zend_Registry::get('xss');
        $this->_web = Zend_Registry::get("web");
    //Get info login
    	$auth = Zend_Auth::getInstance();
    	if ($auth->hasIdentity()){
			$this->_username = $auth->getIdentity()->username;
    	}
    }
    
	 public function addItem($data=NULL){
		$birthday = $data['year'].'-'.$data['month'].'-'.$data['day'];
		$day = new Zend_Date($birthday, 'yyyy-M-d');
		
		try{
			$bind = array('username' => htmlspecialchars($this->_xss->purify(trim($data['username']))), 
						  'email' => htmlspecialchars($this->_xss->purify($data['email'])),  			  
						  'password' => md5($data['password']),    				  
						  'full_name' => htmlspecialchars($this->_xss->purify($data['full_name'])),				  
						  'birthday' => $day->get('yyyy-MM-dd'),				  
						  'address' => htmlspecialchars($this->_xss->purify($data['address'])),				  
						  'cmnd' => htmlspecialchars($this->_xss->purify($data['cmnd'])),				  
						  'phone' => htmlspecialchars($this->_xss->purify($data['phone'])),				  
						  'bank_number' => htmlspecialchars($this->_xss->purify($data['bank_number'])),				  
						  'bank_name' => htmlspecialchars($this->_xss->purify($data['bank_name'])),				  
						  'user_gioithieu' => htmlspecialchars($this->_xss->purify($data['user_gioithieu'])),				  
						  'user_baotro' => htmlspecialchars($this->_xss->purify($data['user_baotro'])),				  
						  'user_group' => 'user',
						  'enable' => 0	,
						  'actived'=>0,		
						  );
			$this->insert($bind);
            
            $html = 'Xin chào: <strong>'.$data['username'].'</strong><br /><br />';
            //send mail
        	$mail = new GLT_System_Mail();
       		$mail->sendMailSmtp($this->_web['admin_email'], $data['email'], $this->_web['admin_name'], $data['username'], 'Thông tin đăng ký thành viên tại Viptamnhinviet.com', $html);	
		}catch(Exception $e){
			echo '<pre>'; print_r($e); echo '</pre>'; 
		}
    }
	public function updateItem($data=NULL){
		$birthday = $data['year'].'-'.$data['month'].'-'.$data['day'];
		$day=new Zend_Date($birthday, 'yyyy-M-d');
		
		try{
			$bind = array('email' => htmlspecialchars($this->_xss->purify($data['email'])),  			  
						  'password' => md5($data['password']),    				  
						  'full_name' => htmlspecialchars($this->_xss->purify($data['full_name'])),				  
						  'birthday' => $day->get('yyyy-MM-dd'),				  
						  'address' => htmlspecialchars($this->_xss->purify($data['address'])),				  
						  'cmnd' => htmlspecialchars($this->_xss->purify($data['cmnd'])),				  
						  'phone' => htmlspecialchars($this->_xss->purify($data['phone'])),				  
						  'bank_number' => htmlspecialchars($this->_xss->purify($data['bank_number'])),				  
						  'bank_name' => htmlspecialchars($this->_xss->purify($data['bank_name'])),				  
						  		
						  );
			$this->update($bind);		
		}catch(Exception $e){
			/*echo '<pre>'; print_r($e); echo '</pre>'; */
		}
    }
	
	public function getChild($user)	{
		$select = $this->select()->from($this->_name,array('username'))
					->where('user_baotro =?',$user);
		return $this->fetchAll($select)->toArray();	
	}
	public function getItem($user)	{
		$select = $this->select()->from($this->_name,array('*'))
					->where('username =?',$user);
		return $this->fetchRow($select)->toArray();	
	}
	
	public function createTree($user){
		$tree['value']=$user;
		$children= $this->getChild($user);
		$tree['c0']=0;		$tree['c1']=0;		$i=0;
	
		foreach($children as $child){
			$tree[$i]=$this->createTree($child['username']);
			$tree['c'.$i] += $tree[$i]['c0'] + $tree[$i]['c1']+1;
			$i++;
		}
		return $tree;
	}
	
	private function getTreeItem($tree){
		$items[]= $tree['value'];
		if(isset($tree[0]))
			$items=array_merge($items, $this->getTreeItem($tree[0]));
		if(isset($tree[1]))
			$items=array_merge($items, $this->getTreeItem($tree[1]));
		return $items;		
	}
	
	public function menuAdmin(){
        $menu[] = array('url'=>'user/index', 'name'=>'Danh sách User', 'nameen'=>'Post', 'namefr'=>'Post', 'num'=>0/* $this->countItemadmin()*/);
        $menu[] = array('url'=>'user/active', 'name'=>'User chờ kích hoạt', 'nameen'=>'Post', 'namefr'=>'Post', 'num'=>0/* $this->countItemadmin()*/);
        return $menu;
    }

	public function getUser_Quanly($user){
		try{
			$db = Zend_Registry::get('connectDb');
			$select = $this->select()
							->from($this->_name, array('user_quanly'))
							->where('username= ?',$user);
	        return $db->fetchOne($select);
		}catch(Exception $e){
			echo '<pre>';			print_r($e);			echo '</pre>'; 
		}        
    }
	public function setUser_Quanly($user,$value){
		try{
			$where = ' username= \''.$user.'\'';
			$data = array('user_quanly' => $value);
			$this->update($data, $where);
		}catch(Exception $e){
			echo '<pre>'; print_r($e); echo '</pre>'; 
		}	         
    }
    
	public function getNguoiGT($user){
		try{
			$db = Zend_Registry::get('connectDb');
			$select = $this->select()
							->from($this->_name, array('user_gioithieu'))
							->where('username= ?',$user);
	        return $db->fetchOne($select);
		}catch(Exception $e){
			echo '<pre>';			print_r($e);			echo '</pre>'; 
		}        
    }
	public function getNguoiBaotro($user){
		try{
			$db = Zend_Registry::get('connectDb');
			$select = $this->select()
							->from($this->_name, array('user_baotro'))
							->where('username= ?',$user);
	        return $db->fetchOne($select);
		}catch(Exception $e){
			echo '<pre>'; print_r($e); echo '</pre>'; 
		}        
    }
	public function getTK($user){
		try{
			$db = Zend_Registry::get('connectDb');
			$select = $this->select()
							->from($this->_name, array('balance'))
							->where('username= ?',$user);
	        return $db->fetchOne($select);
		}catch(Exception $e){
			echo '<pre>'; print_r($e); echo '</pre>'; 
		}	         
    }
    
	public function addTK($user,$value){
		try{
			$where = ' username= \''.$user.'\'';
			$data = array('balance' => $value);
			$this->update($data, $where);
		}catch(Exception $e){
			echo '<pre>'; print_r($e); echo '</pre>'; 
		}	         
    }
    
	public function getListmenu($data){
	    $paginator = $data['paginator'];
    	if ($paginator['itemCountPerPage']>0){
			$page = $paginator['currentPage'];
			$rowCount = $paginator['itemCountPerPage'];
		}
		
		try{
			$select = $this->select()
							->from($this->_name, 
								array('username', 	'email', 	'full_name', 
									'birthday', 	'phone', 
									'bank_number',	'bank_name','user_gioithieu',
									'user_baotro',	'balance',	'create_date',
									'enable'
								))
							->where('actived= 1')
                            ->where("username != 'grouplaptrinh'")
							->order('create_date DESC')
							 ->limitPage($page, $rowCount);;
	        return $this->fetchAll($select)->toArray();
		}catch(Exception $e){
			echo '<pre>'; print_r($e); echo '</pre>'; 
		}
    }
	public function countActived(){
        $db = Zend_Registry::get('connectDb');
		try{     
			$select = $this->select()
							->from($this->_name, array('count(username)'))
							->where('actived= 1')
                            ->where("username != 'grouplaptrinh'");
	         return $db->fetchOne($select);    
		}catch(Exception $e){
			echo '<pre>'; print_r($e); echo '</pre>'; 
		}
    }
	public function countUnActived(){
        $db = Zend_Registry::get('connectDb');
		try{
			$select = $this->select()
							->from($this->_name, array('count(username)'))
							->where('actived= 0');
            return $db->fetchOne($select);    
		}catch(Exception $e){
			echo '<pre>'; print_r($e); echo '</pre>'; 
		}
    }
    
	public function activeItem($data = NULL){	
		$flag = isset($data['factive']) ? $data['factive'] : 'disable';
		$ids  = isset($data['ids']) ? $data['ids'] : '';
		if ( !empty($ids) ){
			if ( !is_array($ids) ){
				$record_id[0]	= $ids;
			}
			else{
				$record_id		= $ids;
			}
			unset($ids);
			
			$where = 'username = -1';
			foreach ($record_id as $value)
				$where .= ' OR username= \''.$value.'\'';
				
			if($flag){
				//show or hidden
				$active	= ($flag == "enable") ? 1 : 0;			
				$data = array('enable' => $active);
				$this->update($data, $where);
			}else{
				//delete
				$this->delete($where);
			}
		}	
    }

	public function getUnActive($data){
	    $paginator = $data['paginator'];
    	if ($paginator['itemCountPerPage']>0){
			$page = $paginator['currentPage'];
			$rowCount = $paginator['itemCountPerPage'];
		}

		try{
			$select = $this->select()
							->from($this->_name, 
								array('username',	'email', 	'full_name', 
									'birthday', 	'phone', 	'bank_number',
									'bank_name',	'user_gioithieu',		'user_baotro',
									'balance',		'create_date',		'enable'
								))
							->where('actived = 0')
							->order('create_date DESC')
							 ->limitPage($page, $rowCount);;
	        return $this->fetchAll($select)->toArray();
		}catch(Exception $e){
			echo '<pre>'; print_r($e); echo '</pre>'; 
		}
    }
    
    
	public function activedItem($data = NULL){	
		try{
		$flag = isset($data['factive']) ? $data['factive'] : 'disable';
		$ids  = isset($data['ids']) ? $data['ids'] : '';
		if ( !empty($ids) ){
			if ( !is_array($ids) ){
				$record_id[0]	= $ids;
			}
			else{
				$record_id		= $ids;
			}
			unset($ids);
			
			$where = 'username = -1';
			foreach ($record_id as $value){
				$where .= ' OR username= \''.$value.'\'';
				$nguoiGT=$this->getNguoiGT($value);
				$tk=$this->getTK($nguoiGT);
				$this->addTK($nguoiGT, $tk+400);///
				$log= new User_Model_Log();
				$log->addItem("Hoa hồng trực tiếp", '  -  ',$nguoiGT, 400);
				
				$this->addQuanly($nguoiGT);
				//add quan ly tv cấp trên
				$user_baotro=$this->getNguoiBaotro($nguoiGT);
				while ($user_baotro != '') {
					$this->addQuanly($user_baotro);
					$user_baotro=$this->getNguoiBaotro($user_baotro);
				}
			}
			if($flag){/////show or hidden
				$data = array('actived' => 1,'enable'=> 1);
				$this->update($data, $where);
			}else{				//delete
				$this->delete($where);
			}
		}
	}catch(Exception $e){
			echo '<pre>'; print_r($e); echo '</pre>'; 
		}	
	}
	private  function addQuanly($user){
		
		$_No_User=15;
		
		$tree=$this->createTree($user);
		
		if(isset($tree[0]))
			$child_L	=	$this->getTreeItem($tree[0]);
		else 
			$child_L=array();
			
		if(isset($tree[1]))
			$child_R	=	$this->getTreeItem($tree[1]);
		else 
			$child_R=array();
		
		$listUserQuanly=$this->getUser_Quanly($user);//user đã tính thêm tiền
		if($listUserQuanly== '')
			$listUserQuanly=array();
		else {
			$listUserQuanly=explode('|',$listUserQuanly);			
		}
		$child_L= array_diff($child_L, $listUserQuanly);//bỏ đi các user đã tính tiền
		$child_R= array_diff($child_R, $listUserQuanly);
		
		if(count($child_L) >=$_No_User && count($child_R) >= $_No_User ){
			//them tiền, add vào quan ly
			$left= array_chunk($child_L, $_No_User);
			$right = array_chunk($child_R, $_No_User);
			
			$listUserQuanly=array_merge($listUserQuanly,$left[0]);
			$listUserQuanly=array_merge($listUserQuanly,$right[0]);
			
			$this->setUser_Quanly($user, implode('|',$listUserQuanly));
			
			$k=0;
			switch (count($listUserQuanly)/($_No_User*2)) {
				case 3:		$value= 5000; $k=3;		break;
				case 6:		$value= 10000;$k=6;		break;
				case 12:	$value= 15000;$k=12;	break;	
				case 24:	$value= 30000;$k=24;	break;
				case 48:	$value= 50000;$k=48;	break;
				case 80:	$value= 100000;$k=80;	break;
				default:	$value=0;				break;
			}
			if($value >0){
				$tk=$this->getTK($user);
				$this->addTK($user, $tk+$value);///		
				$log= new User_Model_Log();
				$log->addItem("Hoa hồng hoa hồng quản lý lần ".$k, '  -  ',$user, $value);
			}	
		}	
	}
}