<?php

class ContactUserForm extends CFormModel {

    public $fullname;
    public $company;
    public $address;
    public $phone;
    public $email;
    public $content;

    public function rules() {
        return array(
            array('fullname, email, content', 'required'),
            array('email', 'email'),
            array('content', 'length', 'min' => 10),
        );
    }

    public function attributeLabels() {
        return array(
            'fullname' => Yii::t('user', 'fullname'),
            'company' => Yii::t('user', 'company'),
            'address' => Yii::t('user', 'address'),
            'email' => Yii::t('user', 'email'),
            'phone' => Yii::t('user', 'phone'),
            'content' => Yii::t('user', 'content'),
        );
    }

}