<?php

class DefaultController extends Controller {
    public function actionIndex() {

        $model = new ContactUserForm();
        if (isset($_POST['ContactUserForm'])) {
            $model->attributes = $_POST['ContactUserForm'];
            if ($model->validate()) {
                $send_type = Config::getValue('contact_send_mail_smtp');
                $contact_email_received = Config::getValue('contact_email_received');
                $host = Config::getValue('contact_host');
                $user = Config::getValue('contact_username');
                $password = Config::getValue('contact_password');

                //if ($send_type == 1) {
                    $contact_username = Config::getValue('contact_username');

                    Yii::import('ext.Phpmailer.JPhpMailer');
                    $mail = new JPhpMailer;
                    $html = 'Xin chào <b>' . $_SERVER['HTTP_HOST'] . '</b>!<br /><br />Bên dưới là thông tin người dùng liên hệ từ website <b>http://' . $_SERVER['HTTP_HOST'] . '</b><br /><br/><b>Họ và tên</b>: ' . $model->fullname . '<br /><b>Công ty</b>: ' . $model->company . '<br /><b>Địa chỉ</b>: ' . $model->address . '<br /><b>Số điện thoại</b>: ' . $model->phone . '<br /><b>Email</b>: ' . $model->email . '<br /><b>Nội dung</b>: ' . nl2br($model->content) . '<br /><br />--';
                    $mail->sendMailSmtp($contact_username, $contact_email_received, '', $_SERVER['HTTP_HOST'], 'Liên hệ từ website ' . $_SERVER['HTTP_HOST'], $html, 1, $model->email, $model->fullname, $host, $user, $password);
                //} else {
                //$headers = "From: {$model->email}\r\nReply-To: {$model->email}";
                //mail($contact_email_received, 'Contact from ' . $_SERVER['HTTP_HOST'] . ' website', $model->content, $headers);
                //}

                Yii::app()->user->setFlash('contactSuccess', 'Thank you for contacting us. We will respond to you as soon as possible.');
                $this->refresh();
            }
        }

        $this->render('index', array('item' => Contact::model()->firstItem(), 'model' => $model));
    }
}