<?php

class ErrorController extends Zend_Controller_Action{
    public function errorAction(){
        $errors = $this->_getParam('error_handler');
        switch ($errors->type) { 
            case Zend_Controller_Plugin_ErrorHandler::EXCEPTION_NO_CONTROLLER:
            case Zend_Controller_Plugin_ErrorHandler::EXCEPTION_NO_ACTION:
                // 404 error -- controller or action not found
                $this->getResponse()->setHttpResponseCode(404);
                $this->view->message = 'Trang web không tồn tại, vui lòng liên hệ <a href="thanhansoft@gmail.com">thanhansoft@gmail.com</a>';
                break;
            default:
                // application error 
                $this->getResponse()->setHttpResponseCode(500);
                $this->view->message = 'Lỗi ứng dụng, vui lòng liên hệ <a href="thanhansoft@gmail.com">thanhansoft@gmail.com</a>';
                break;
        }
        $this->view->exception = $errors->exception;
        $this->view->request   = $errors->request;
    }
    public function indexAction(){
        $this->getResponse()->setHttpResponseCode(500);
        $this->view->message = $this->_getParam('message'); 
    }
}