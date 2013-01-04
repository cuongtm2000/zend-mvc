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
            'fullname' => "Họ và tên",
            'company' => 'Tổ chức/đơn vị',
            'address' =>'Địa chỉ',
            'email' => 'Email',
            'phone' => 'Số ĐT',
            'content' =>'Nội dung',
        );
    }

}