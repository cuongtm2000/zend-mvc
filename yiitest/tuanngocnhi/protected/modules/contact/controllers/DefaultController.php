<?php

class DefaultController extends Controller {

    public function actionIndex() {
		$this->layout = '//layouts/column-2';
		Yii::app()->clientScript->registerCssFile(Yii::app()->theme->baseUrl . '/css/main.css');
		$model = ucfirst($this->module->getName());
        $items = new $model();
        
        $contact = new ContactUserForm(); //contact user form
        if (isset($_POST['ContactUserForm'])) {
            $contact->attributes = $_POST['ContactUserForm'];
            if ($contact->validate()) {
                $username_class = new Username;
                $username = $username_class->infoUser('user');
                
                Yii::import('application.extensions.phpmailer.JPhpMailer');
                $mail = new JPhpMailer;
                $html = 'Chào <b>' . $username['fullname'] . '</b>!<br /><br />Cảm ơn bạn đã sử dụng dịch vụ công ty chúng tôi. Dưới đây là thông tin Khách hàng liên hệ từ website <b>http://' . Yii::app()->session['subdomain'] . '.dos.vn</b><br /><br/><b>Fullname</b>: ' . $contact->fullname . '<br /><b>Company</b>: ' . $contact->company . '<br /><b>Address</b>: ' . $contact->address . '<br /><b>Phone</b>: ' . $contact->phone . '<br /><b>Email</b>: ' . $contact->email . '<br /><b>Content</b>: ' . nl2br($contact->content).'<br /><br />--<br/>Dos.vn';
                $mail->sendMailSmtp('sender@dos.vn', $username['email'], 'Dos.vn', $username['fullname'], 'Liên hệ từ web: ' . Yii::app()->session['subdomain'] . '.dos.vn', $html, 1, $contact->email, $contact->fullname);

                Yii::app()->user->setFlash('contactSuccess', 'Thank you for contacting us. We will respond to you as soon as possible.');
                $this->refresh();
            }
        }
        
        $this->render(Yii::app()->session['template'] . '/index', array('item' => $items->firstItem(), 'contact' => $contact));
    }

}