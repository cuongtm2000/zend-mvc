<?php

class Vote_IndexController extends Zend_Controller_Action {

    private $_data;

    public function init() {
            $layoutPath = PUBLIC_PATH . '/templates' . TEM_INDEX;
            $option = array('layout' => 'vote', 'layoutPath' => $layoutPath );
            Zend_Layout::startMvc($option);
    }

    public function indexAction() {
 
    }

}