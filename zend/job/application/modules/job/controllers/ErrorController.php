<?php
class ErrorController extends Zend_Controller_Action{
	public function errorAction(){
		// Ensure the default view suffix is used so we always return good
		$this->_helper->viewRenderer->setViewSuffix('phtml');
		
		// Grab the error object from the request
		$errors = $this->_getParam('error_handler');
		
		switch ($errors->type ) {
			case Zend_Controller_Plugin_ErrorHandler::EXCEPTION_NO_CONTROLLER:
			case Zend_Controller_Plugin_ErrorHandler::EXCEPTION_NO_ACTION:
				// 404 error -- controller or action not found
				$this->getResponse()->setHttpResponseCode(404);
				$this->view->message = 'Trang web không tồn tại, vui lòng liên hệ <a href="thanhansoft@gmail.com">thanhansoft@gmail.com</a>';
				$this->view->code  = 404;
				if ($errors->type == Zend_Controller_Plugin_ErrorHandler::EXCEPTION_NO_CONTROLLER) {
					$this->view->info = sprintf(
					'Unable to find controller "%s" in module "%s"',
					$errors->request->getControllerName(),
					$errors->request->getModuleName()
					);
				}
				if ($errors->type == Zend_Controller_Plugin_ErrorHandler::EXCEPTION_NO_ACTION) {
					$this->view->info = sprintf(
					'Unable to find action "%s" in controller "%s" in module "%s"',
					$errors->request->getActionName(),
					$errors->request->getControllerName(),
					$errors->request->getModuleName()
					);
				}
			break;
			case Zend_Controller_Plugin_ErrorHandler::EXCEPTION_NO_ACTION:
			default:
				// application error
				$this->getResponse()->setHttpResponseCode(500);
				$this->view->message = 'Lỗi ứng dụng, vui lòng liên hệ <a href="thanhansoft@gmail.com">thanhansoft@gmail.com</a>';
				$this->view->code  = 500;
				$this->view->info  = $errors->exception;
			break;
		}
		
		/*
		// send a mail to let someone know that there was a problem!
		$config = Zend_Registry::get('configuration');
		$tr = new Zend_Mail_Transport_Smtp($config->smtp);
		Zend_Mail::setDefaultTransport($tr);
		
		$mail = new Zend_Mail();
		$emailBody = "An error occurred in the system. The error message contained the following output:\n\n";
		$emailBody .= $this->view->message." (".$this->view->code.")\n\n";
		$emailBody .= "Zend Error Type: ".$errors->type."\n\n";
		$emailBody .= "REQUEST_URI: ".$_SERVER['REQUEST_URI']."\n\n";
		if ( isset($_SERVER['HTTP_REFERER']) ) {
		$emailBody .= "HTTP_REFERER: ".$_SERVER['HTTP_REFERER']."\n\n";
		}
		$emailBody .= "Stack trace: \n\n". $errors->exception->getTraceAsString()."\n\n";
		
		// find the user to blame!
		$username = Zend_Auth::getInstance()->getIdentity();
		$emailBody .= "This error was created by ".$username.".";
		
		$mail->setBodyText($emailBody);
		$mail->setFrom('anAddress@example.com', '');
		$mail->addTo($config->adminEmail, $config->adminName);
		$mail->setSubject('An Error Occured');
		// Email
		$mail->send();
		*/
		
		$this->view->title = 'Error!';
		$this->view->heading = 'Error!';
		
		// pass the environment to the view script so we can conditionally
		// display more/less information
		$this->view->env   = $this->getInvokeArg('env');
		
		// pass the actual exception object to the view
		$this->view->exception = $errors->exception;
		
		// pass the request to the view
		$this->view->request = $errors->request;
	}
}