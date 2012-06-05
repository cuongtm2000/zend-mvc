<?php

class CartForm extends CFormModel {

    public $fullname;
    public $address;
    public $phone;
    public $email;
    public $content;

    public function rules() {
        return array(
            // username and password are required
            array('fullname, address, phone, email, content', 'required'),
            array('email', 'email'),
            array('fullname, phone, email', 'length', 'max' => 45),
            array('address', 'length', 'max' => 100),
        );
    }

    public function attributeLabels() {
        return array(
            'fullname' => Yii::t('user', 'fullname'),
            'address' => Yii::t('user', 'address'),
            'phone' => Yii::t('user', 'phone'),
            'content' => Yii::t('user', 'content'),
        );
    }

}