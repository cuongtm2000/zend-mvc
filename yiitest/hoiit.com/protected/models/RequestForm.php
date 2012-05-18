<?php

class RequestForm extends CFormModel {
    public $name;
    public $email;
    public $phone;
    public $subject;
    public $content;
    public $verifyCode;

    public function rules() {
        return array(
            array('name, email, phone, subject, content', 'required'),
            array('email', 'email'),
            array('content', 'length', 'min' => 35),
            array('verifyCode', 'captcha', 'allowEmpty' => !CCaptcha::checkRequirements()),
        );
    }

    public function attributeLabels() {
        return array(
            'name' => Yii::t('main', 'name'),
            'phone' => Yii::t('main', 'phone'),
            'subject' => Yii::t('main', 'subject'),
            'content' => Yii::t('main', 'content'),
            'verifyCode' => Yii::t('main', 'verifyCode'),
        );
    }
}