<?php

class ResetPassForm extends CFormModel {

    public $pass_new;
    public $pass_new_compare;

    public function rules() {
        return array(
            array('pass_new, pass_new_compare', 'required'),
            array('pass_new, pass_new_compare', 'length', 'min' => 6, 'max' => 45),
            array('pass_new', 'compare', 'compareAttribute' => 'pass_new_compare', 'message' => 'Your passwords do not match'),
        );
    }

    public function attributeLabels() {
        return array(
            'pass_new' => 'Pass new',
            'pass_new_compare' => 'Repeat password new',
        );
    }
}