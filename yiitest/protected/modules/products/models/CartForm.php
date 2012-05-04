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
            array('fullname,address,phone,email,content', 'required'),
            array('email','email'),
            array('phone','numerical',),
  
    
        );
    }

    public function attributeLabels() {
        return array(
            'fullname' => 'Họ và tên',
            'address' => 'Địa chỉ',
            'phone' => 'Số điện thoại',
            'content' => 'Nội dung',
        );
    }

}