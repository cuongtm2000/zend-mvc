<?php

class ChangePassForm extends CFormModel {

    public $pass_old;
    public $pass_new;
    public $pass_new_compare;

    /**
     * Declares the validation rules.
     */
    public function rules() {
        return array(
            array('pass_old, pass_new, pass_new_compare', 'required'),
            array('pass_old, pass_new, pass_new_compare', 'length', 'min' => 6, 'max' => 45),
            array('pass_new', 'compare', 'compareAttribute' => 'pass_new_compare'),
            array('pass_old', 'checkPassOld'),
        );
    }

    public function checkPassOld($attribute) {
        if (!Username::model()->find('username=:username AND password=:password', array(':username' => Yii::app()->user->id, ':password' => md5($this->pass_old)))) {
            $this->addError($attribute, 'Password: <strong>' . $this->pass_old . '</strong> is incorrect');
        }
    }

    /**
     * Declares customized attribute labels.
     * If not declared here, an attribute would have a label that is
     * the same as its name with the first letter in upper case.
     */
    public function attributeLabels() {
        return array(
            'pass_old' => 'Pass Old',
            'pass_new' => 'Pass New',
            'pass_new_compare' => 'Pass New Compare',
        );
    }
}