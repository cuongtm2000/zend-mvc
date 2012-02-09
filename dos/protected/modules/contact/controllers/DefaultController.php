<?php

class DefaultController extends Controller {

    public function actionIndex() {
        $model = ucfirst($this->module->getName());
        $items = new $model();
        
        $contact = new ContactUserForm(); //contact user form
        if (isset($_POST['ContactUserForm'])) {
            $contact->attributes = $_POST['ContactUserForm'];
            if ($contact->validate()) {
                /*$headers = "From: {$model->email}\r\nReply-To: {$model->email}";
                mail(Yii::app()->params['adminEmail'], $model->subject, $model->body, $headers);*/
                sleep(10);
                Yii::app()->user->setFlash('contactSuccess', 'Thank you for contacting us. We will respond to you as soon as possible.');
                $this->refresh();
            }
        }
        
        $this->render(Yii::app()->session['template'] . '/index', array('item' => $items->firstItem(), 'contact' => $contact));
    }

}