<?php

class ContactForm extends CFormModel {

    public $name;
    public $email;
    public $website;
    public $phone;
    public $body;
    public $verifyCode;

    public function rules() {
        return array(
            array('name, email, phone, body', 'required'),
            array('website', 'url'),
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