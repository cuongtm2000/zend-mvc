<?php

class GLT_Controller_Backend extends Zend_Controller_Action {

    public function preDispatch() {
        $web = Zend_Registry::get("web"); //load config web

        $this->view->headTitle()->setSeparator(' - ');
        $this->view->headTitle($web['titleweb']);
        $this->view->headMeta()->appendName('keywords', $web['keywords'] . ' - ' . $web['titleweb']);
        $this->view->headMeta()->appendName('description', $web['description'] . ' - ' . $web['titleweb']);
    }

}