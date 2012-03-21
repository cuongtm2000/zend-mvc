<?php

class ChangePasswordForm extends CFormModel {

    public $pass_old;
    public $pass_new;
    public $pass_new_compare;

    public function rules() {
        return array(
            array('pass_new, pass_new_compare', 'required'),
            array('pass_old, pass_new, pass_new_compare', 'length', 'min' => 6, 'max' => 45),
            array('pass_new', 'compare', 'compareAttribute' => 'pass_new_compare'),
            array('pass_old', 'checkPassOld'),
        );
    }

    public function checkPassOld($attribute) {
        if (!User::model()->find('username=:username AND password=:password', array(':username' => Yii::app()->user->id, ':password' => md5($this->pass_old)))) {
            $this->addError($attribute, 'Mật khẩu cũ không chính xác');
        }
    }

    public function attributeLabels() {
        return array(
            'pass_old' => 'Mật khẩu cũ',
            'pass_new' => 'Mật khẩu mới',
            'pass_new_compare' => 'Xác nhận mật khẩu mới',
        );
    }

}