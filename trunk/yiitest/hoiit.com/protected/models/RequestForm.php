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
            // verifyCode needs to be entered correctly
            array('verifyCode', 'captcha', 'allowEmpty' => !CCaptcha::checkRequirements()),
        );
    }

    public function attributeLabels() {
        return array(
            'verifyCode' => 'Verification Code',
        );
    }
}