<?php
class GLT_System_Mail{
	
	public function sendMailLocal($from, $to, $namefrom, $nameto, $subject, $content){
		$mail = new Zend_Mail('UTF-8');
		$mail->setBodyText($content);
		$mail->setBodyHtml($content);
		$mail->setFrom($from, $namefrom);
		$mail->addTo($to, $nameto);
		//$mail->addBcc ($from, $namefrom); //Them nguoi nhan
		$mail->addBcc('webcontact@thuonghoi.com', $nameto);
		$mail->setSubject($subject);
		$mail->send();
	}
	
	public function sendMailSmtp($from, $to, $namefrom, $nameto, $subject, $content){
		$connmail = new Zend_Mail_Transport_Smtp ( 'smtp.gmail.com', array ('auth' => 'login', 'username' => 'noreply@thuonghoi.com', 'password' => 'thanhan2', 'ssl' => 'ssl', 'port' => 465 ) );
		Zend_Mail::setDefaultTransport ( $connmail );
		$mail = new Zend_Mail ( 'UTF-8' );
		$mail->setBodyHtml ($content);
		$mail->addTo ($to, $nameto); 
		//$mail->addBcc ($from, $namefrom); //Them nguoi nhan
		$mail->addBcc ('webcontact@thuonghoi.com', $nameto);
		$mail->setSubject ($subject);
		$mail->setFrom ($from, $namefrom);
        $mail->setReplyTo($from, $namefrom);
		$mail->send ();
	}
}