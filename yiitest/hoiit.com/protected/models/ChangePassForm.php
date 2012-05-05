<?php

class ChangePassForm extends CFormModel {

    public $pass_old;
    public $pass_new;
    public $pass_new_compare;

    public function rules() {
        return array(
            array('pass_old, pass_new, pass_new_compare', 'required'),
            array('pass_old, pass_new, pass_new_compare', 'length', 'min' => 6, 'max' => 45),
            array('pass_new', 'compare', 'compareAttribute' => 'pass_new_compare'),
            array('pass_old', 'checkPassOld'),
        );
    }

    public function checkPassOld($attribute) {
        if (!Usernames::model()->find('username=:username AND password=:password', array(':username' => Yii::app()->user->id, ':password' => md5($this->pass_old)))) {
            $this->addError($attribute, 'Password Old: <strong>' . $this->pass_old . '</strong> is incorrect');
        }
    }

    public function attributeLabels() {
        return array(
            'pass_old' => 'Pass Old',
            'pass_new' => 'Pass New',
            'pass_new_compare' => 'Pass New Compare',
        );
    }
}