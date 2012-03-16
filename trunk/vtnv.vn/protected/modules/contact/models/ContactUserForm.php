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
            array('fullname, address, phone, email, content', 'required'),
            array('email', 'email'),
            array('content', 'length', 'min' => 10),
        );
    }

    public function attributeLabels() {
        return array(
			'fullname' => 'Họ và tên',
			'address' => 'Địa chỉ',
			'phone' => 'Số điện thoại',
			'content' => 'Nội dung',
			'company' => 'Công ty',
        );
    }

}