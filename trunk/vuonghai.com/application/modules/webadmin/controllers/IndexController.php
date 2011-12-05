<?php
class Webadmin_IndexController extends GLT_Controller_Backend {
		
	public function init(){        
        $this->view->lang = Zend_Registry::get("lang"); //load language
        //List menu
        $listmenu = Zend_Registry::get("listmenu");
        $this->view->listmenu = $listmenu;
        
        $this->view->selecthome = ' class="selected"';                               
	}
	public function indexAction() {
        $numuser = new Webadmin_Model_User();
        $this->view->numuser = $numuser->countUser();
	}
    public function loginAction() {
        if ($this->_request->isPost()) {
        	$user = new Webadmin_Model_Account();
        	if($user->checkLogin($this->getRequest()->getParam('username'), $this->getRequest()->getParam('password'))){
        		$session = new Zend_Session_Namespace('logged');
                $session->loginok = '1'; //session logged
                $path = $this->get_between($this->_request->getRequestUri(), '/', '/webadmin');
                $session->path = ($path) ? '/'.$path : '';
                $this->_redirect('/webadmin');
        	}else{
        		$error[] = 'Đăng nhập thất bại:';
            	$error[] = '- Vui lòng kiểm tra Username và Password';
				$this->view->messages = $error; 
				//parse to textbox
				$this->view->user = $this->getRequest()->getParam('username');
				$this->view->pass = $this->getRequest()->getParam('password');
        	}
        }
        $layoutPath = PUBLIC_PATH .'/templates' . TEM_ADMIN;
        $option = array ('layout' => 'login', 'layoutPath' => $layoutPath );
        Zend_Layout::startMvc ( $option );
	}
    public function logoutAction() {
        $auth = Zend_Auth::getInstance();
        $auth->clearIdentity();
        $this->_redirect('/webadmin');
    }
	private function get_between($input, $start, $end){
        $substr = substr($input, strlen($start)+strpos($input, $start), (strlen($input) - strpos($input, $end))*(-1));
        return $substr;
	}
    public function alexaAction(){
    	$p = array();
        preg_match( '#<POPULARITY URL="(.*?)" TEXT="([0-9]+){1,}"/>#si', file_get_contents('http://data.alexa.com/data?cli=10&dat=s&url=' . $_SERVER['HTTP_HOST']), $p );
        echo isset($p[2]) ? number_format(intval($p[2])):0;
        $this->_helper->viewRenderer->setNoRender(); // Disable the viewscript
        $this->_helper->layout->disableLayout();  // Disable the layout
    }

}