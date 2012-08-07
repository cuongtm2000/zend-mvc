<?php

class ContactForm extends CFormModel {
    public $titlevi;
    public $titleen;
    public $contentvi;
    public $contenten;
    public $tagvi;
    public $tagen;
    public $descriptionvi;
    public $descriptionen;
    public $hot = 0;
    public $enable = 1;

    public function rules() {
        return array(
            array('titlevi, contentvi, tagvi', 'required'),
            array('hot, enable', 'numerical', 'integerOnly' => true),
            array('titlevi, titleen, tagvi, tagen', 'length', 'max' => 100),
            array('descriptionvi, descriptionen', 'length', 'max' => 250),
            array('contentvi, contenten', 'safe')
        );
    }

    public function attributeLabels() {
        return array(
        );
    }
}