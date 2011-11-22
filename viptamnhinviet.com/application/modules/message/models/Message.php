<?php
class Message_Model_Message extends Zend_Db_Table
{
    protected $_name = 'dos_module_message_content';
    protected $_primary = 'record_id';
    protected $_config = NULL;
    private $_xss = NULL;
    private $_username;
    public function init ()
    {
        $this->_config = Zend_Registry::get("config");
        $this->_xss = Zend_Registry::get('xss');
        //Get info login
        $auth = Zend_Auth::getInstance();
        if ($auth->hasIdentity()) {
            $this->_username = $auth->getIdentity()->username;
        }
    }

    public function countUnread ()
    {
        $db = $this->getAdapter();
        $select = $db->select()
            ->from('dos_module_message', array('count(recipient)'))
            ->where('status= 0')
            ->where('recipient=?', $this->_username);
        return $db->fetchOne($select);
    }
    public function getAll ($data){
    		//Get paging number
    	$paginator = $data['paginator'];
    	if ($paginator['itemCountPerPage']>0){
			$page = $paginator['currentPage'];
			$rowCount = $paginator['itemCountPerPage'];
		}
		
        try {
            $db = Zend_Registry::get('connectDb');
            $select = $db->select()
                ->from(array('c' => $this->_name), 
            array('record_id', 'sender', 'content', 'title', 'datetime'))
                ->join(array('m' => 'dos_module_message'), 
            				'record_id = id_content', //where
							array('status'))
                ->where('recipient= ?', $this->_username)
                ->order('datetime DESC')
                ->limitPage($page, $rowCount);
            return $db->query($select)->fetchAll();
        } catch (Exception $e) {
            echo $select->__toString();   echo '<pre>';     print_r($e);      echo '</pre>';
        }
    }
  	public function countAll (){
            $db = Zend_Registry::get('connectDb');
            $select = $db->select()
                ->from(array('c' => $this->_name), 
            array('count(record_id)'))
                ->join(array('m' => 'dos_module_message'), 
            				'record_id = id_content', //where
							array(''))
                ->where('recipient= ?', $this->_username);
           return $db->fetchOne($select);     
    }
  	public function countAllSend (){
            $db = Zend_Registry::get('connectDb');
            $select = $db->select()
                ->from(array('c' => $this->_name), 
            array('count(record_id)'))
                ->join(array('m' => 'dos_module_message'), 
            				'record_id = id_content', //where
							array(''))
                ->where('sender= ?', $this->_username);
           return $db->fetchOne($select);     
    }
    
    public function getAllSend($data)
    {
    	 	$paginator = $data['paginator'];
    	if ($paginator['itemCountPerPage']>0){
			$page = $paginator['currentPage'];
			$rowCount = $paginator['itemCountPerPage'];
		}
		
        try {
            $db = Zend_Registry::get('connectDb');
            $select = $db->select()
                ->from(array('c' => $this->_name), 
            array('record_id', 'content', 'title', 'datetime'))
                ->join(array('m' => 'dos_module_message'), 
            		'record_id = id_content', //where
					array('status','recipient'))
                ->where('sender= ?', $this->_username)
                ->order('datetime DESC')
                ->limitPage($page, $rowCount);
            return $db->query($select)->fetchAll();
        } catch (Exception $e) {
            echo $select->__toString();   echo '<pre>';     print_r($e);      echo '</pre>';
        }
    }
    public function getFromId ($id)
    {
        try {
            $db = Zend_Registry::get('connectDb');
            $db->update('dos_module_message', array('status' => 1), 
           		 		array('id_content = ' . $id, 'recipient = \'' . $this->_username . '\''));
            $select = $db->select()
                ->from(array('c' => $this->_name), 
            		array('record_id', 'sender', 'content', 'title', 'datetime'))
                ->join(array('m' => 'dos_module_message'), 
           					 'record_id = id_content', //where
							array('status'))
                ->where('recipient= ?', $this->_username)
                ->where('record_id=?', $id);//->order('datetime DESC')
            
            return $db->fetchRow($select);
        } catch (Exception $e) {
            echo '<pre>';            print_r($e);            echo '</pre>';
        }
    }
    public function getSendFromId ($id)
    {
        try {
            $db = Zend_Registry::get('connectDb');
          
            $select = $db->select()
                ->from(array('c' => $this->_name), 
            		array('record_id', 'content', 'title', 'datetime'))
                ->join(array('m' => 'dos_module_message'), 
           					 'record_id = id_content', //where
							array('status','recipient'))
                ->where('sender= ?', $this->_username)
                ->where('record_id=?', $id);
            return $db->fetchRow($select);
        } catch (Exception $e) {
            echo '<pre>';            print_r($e);            echo '</pre>';
        }
    }
    //đếm số người còn sử dụng thư có id này
    public function countRecipientUse ($id)
    {
        try {
            $db = Zend_Registry::get('connectDb');
            $select = $db->select()
                ->from('dos_module_message', array('count(recipient)'))
                ->where('id_content= ?', $id);
            return $db->fetchOne($select);
        } catch (Exception $e) {
            echo '<pre>';            print_r($e);            echo '</pre>';
        }
    }
    public function delItem ($id)
    {
        $db = Zend_Registry::get('connectDb');
     //   if ($this->countRecipientUse($id) == 1)
       //     $this->delete('record_id = ' . $id);
        $db->delete('dos_module_message', 
        array('id_content = ' . $id, 'recipient = \'' . $this->_username . '\''));
    }
    public function addItem ($data = NULL)
    {    //	echo '<pre>';print_r($data);echo '</pre>';
        try {
            $db = $this->getAdapter();
            $blind = array(	'sender' => htmlspecialchars($this->_xss->purify($this->_username)), 
           	 				'title' => htmlspecialchars($this->_xss->purify($data['title'])), 
           	 				'content' => htmlspecialchars($this->_xss->purify($data['detail'])));
            $id_cont = $this->insert($blind);
            $repc = str_replace(' ', '', $data['recipient']);
            $repc = explode(';', $repc);
            $repc = array_unique($repc);
            foreach ($repc as $value) {
                $blind = array('recipient' => $value, 'id_content' => $id_cont, 
                'status' => 0);
                $db->insert('dos_module_message', $blind);
            }
        } catch (Exception $e) {
            echo '<pre>';
            print_r($e);
            echo '</pre>';
        }
    }
    public function countItem ()
    {
        $db = $this->getAdapter();
        $select = $db->select()->from($this->_name, 
        array('count(support_id) as totalItem'));
        return $db->fetchOne($select);
    }
}