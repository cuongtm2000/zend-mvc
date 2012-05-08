<?php

class ForgotForm extends CFormModel {
    public $email;

    public function rules() {
        return array(
            array('email', 'required'),
            array('email', 'length', 'max' => 45),
            array('email', 'email'),
            array('email', 'checkEmailExist')
        );
    }

    public function checkEmailExist($attribute) {
        if (!Usernames::model()->find('email=:email', array(':email' => $this->email))) {
            $this->addError($attribute, 'Email: <strong>' . $this->email . '</strong> is incorrect');
        }
    }
}