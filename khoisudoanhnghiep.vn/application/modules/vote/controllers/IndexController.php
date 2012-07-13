<?php

class Vote_IndexController extends Zend_Controller_Action {

    private $_data;

    public function init() {
        $layoutPath = PUBLIC_PATH . '/templates' . TEM_INDEX;
        $option = array('layout' => 'vote', 'layoutPath' => $layoutPath);
        Zend_Layout::startMvc($option);
        $this->_data = $this->_request->getParams();
    }

    public function indexAction() {
        $vote =new Vote_Model_Vote();

        $diff=0;
        if(isset($this->_data['id'])){
            $is_update=FALSE;
            if(isset($_SESSION['voting'.$this->_data['vid']])){
                $diff= time()-$_SESSION['voting'.$this->_data['vid']];
                if($diff > 3600)
                    $is_update=TRUE;
            }  else {
                $is_update=TRUE;
            }
            if($is_update){
                $_SESSION['voting'.$this->_data['vid']]=  time();
                $ans=new Vote_Model_Answer();
                $ans->updateVote($this->_data['vid'],$this->_data['id']);
                $diff=-1;
            }
        }
        $this->view->time_remain=$diff;
        $data=$vote->getDetail($this->_data['vid']);
        $this->view->item=$data;
    }

}