<?php

class GLT_Controller_Action extends Zend_Controller_Action {

    public function preDispatch() {
        $this->view->lang = Zend_Registry::get("lang"); //load lang
        $this->view->config = Zend_Registry::get("config"); //load config
        $this->view->web = Zend_Registry::get("web"); //load config web
        ///adv
        $adv = new Adv_Model_Adv();
        $this->view->list_adv_right = $adv->getListAdvRight();

//         //static
//        $statistics = new GLT_System_SmartCounter();
//        $this->view->onlinetoday = $statistics->getOnlineToday();
//        $this->view->online = $statistics->getOnline();
//        $this->view->onlinetotal = $statistics->visit_total();
        //handbook
        $handbook_cat_class = new Handbook_Model_HandbookCat();
        $this->view->menu_cat_handbook = $handbook_cat_class->getListmenuParentID(0);

        //experience
        $experience_cat_class = new Experience_Model_ExperienceCat();
        $this->view->menu_cat_experience = $experience_cat_class->getListmenuParentID(0);

        //knows
        $knows_cat_class = new Knows_Model_KnowsCat();
        $this->view->menu_cat_knows = $knows_cat_class->getListmenuParentID(0);

        //consulting
        $consulting_cat_class = new Consulting_Model_ConsultingCat();
        $this->view->menu_cat_consulting = $consulting_cat_class->getListmenuParentID(0);

        //worldbusiness
        $worldbusiness_cat_class = new WorldBusiness_Model_WorldBusinessCat();
        $this->view->menu_cat_worldbusiness = $worldbusiness_cat_class->getListmenuParentID(0);

        //corporateculture
        $corporateculture_cat_class = new CorporateCulture_Model_CorporateCultureCat();
        $this->view->menu_cat_corporateculture = $corporateculture_cat_class->getListmenuParentID(0);

        //worldbusiness
        $entertainment_cat_class = new Entertainment_Model_EntertainmentCat();
        $this->view->menu_cat_entertainment = $entertainment_cat_class->getListmenuParentID(0);

        //Request
        $request = $this->_request->getParams();
        $this->view->module = $request['module'];

        //Google analytic
        $db = Zend_Registry::get('connectDb');
        $select = $db->select()->from('dos_sys_seos', array('seo_content'))->where("seo_name = 'google_analytic'");
        $result = $db->fetchRow($select);
        $this->view->google_analytic = stripslashes($result['seo_content']);

        //vote
        $vote = new Vote_Model_Vote();
        $this->view->vote = $vote->getFirstVote();
    }

    public function webTitle($str) {
        $this->view->headTitle(html_entity_decode($str) . ' - ' . $this->view->web['titleweb']);
        $this->view->headMeta()->appendName('keywords', $str . ' - ' . $this->view->web['keywords'] . ' - ' . $this->view->web['titleweb']);
        $this->view->headMeta()->appendName('description', $str . ' - ' . $this->view->web['description'] . ' - ' . $this->view->web['titleweb']);
    }

    public function checkcommment($session_id, $period) {
        if (isset($_SESSION[$session_id])) {
            $now = new Zend_Date();
            $last = new Zend_Date($_SESSION[$session_id]);

            $giay = $now->get(Zend_Date::TIMESTAMP) - $last->get(Zend_Date::TIMESTAMP);
            if ($giay > $period)
                $_SESSION[$session_id] = new Zend_Date();
            return ($giay - $period);
        }else {
            $_SESSION[$session_id] = new Zend_Date();
            return 0;
        }
    }
    public function showComment($data, $record_id){
        $tmp=ucfirst($data['module']).'_Model_Comments';
        $cmt = new $tmp();
        if ($this->_request->isPost()) {
            $validate = new GLT_Form_CmtValidate($data);
   
            if ($validate->isError() == true) {
                $this->view->error = $validate->getError();
                $this->view->items = $data;
            } else {
                $giay = $this->checkcommment('last_commnent', 60);        //	echo $giay;
                if ($giay < 0) {
                    $this->view->error = array('*Bạn gửi bình luận quá nhanh. Hãy thử lại sau ' . (-$giay) . ' giây!');
                    $this->view->items = $data;
                } else {
                    $this->view->error = array('* Bình luận của bạn đã được gửi thành công.');
                    $data['id']=$record_id;
                    $id = $cmt->addItem($data);
                    $this->_redirect('http://'.$_SERVER["SERVER_NAME"].$this->_request->getRequestUri().'#cmt'.$id);
                }
            }
        }
        $this->view->comments = $cmt->listItem($record_id);
    }

}