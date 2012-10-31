<?php

class DefaultController extends Controller {
    public function actionIndex() {
        $this->layout = '//layouts/column-2';

        $model = new ContactUserForm();
        if (isset($_POST['ContactUserForm'])) {
            $model->attributes = $_POST['ContactUserForm'];
            if ($model->validate()) {
                $send_type = Config::getValue('contact_send_mail_smtp');
                $contact_email_received = Config::getValue('contact_email_received');

                if ($send_type == 1) {
                    $contact_username = Config::getValue('contact_username');

                    Yii::import('ext.Phpmailer.JPhpMailer');
                    $mail = new JPhpMailer;
                    $html = 'Hi <b>' . $_SERVER['HTTP_HOST'] . '</b>!<br /><br />Below is contact information from website customers <b>http://' . $_SERVER['HTTP_HOST'] . '</b><br /><br/><b>Fullname</b>: ' . $model->fullname . '<br /><b>Company</b>: ' . $model->company . '<br /><b>Address</b>: ' . $model->address . '<br /><b>Phone</b>: ' . $model->phone . '<br /><b>Email</b>: ' . $model->email . '<br /><b>Content</b>: ' . nl2br($model->content) . '<br /><br />--<br/>YiiProject.com';
                    $mail->sendMailSmtp($contact_username, $contact_email_received, $_SERVER['HTTP_HOST'], 'Name to', 'Contact from ' . $_SERVER['HTTP_HOST'] . ' website', $html, 1, $model->email, $model->fullname);
                } else {
                    $headers = "From: {$model->email}\r\nReply-To: {$model->email}";
                    mail($contact_email_received, 'Contact from ' . $_SERVER['HTTP_HOST'] . ' website', $model->content, $headers);
                }

                Yii::app()->user->setFlash('contactSuccess', 'Thank you for contacting us. We will respond to you as soon as possible.');
                $this->refresh();
            }
        }

        $this->render('index', array('item' => Contact::model()->firstItem(), 'model' => $model));
    }
}