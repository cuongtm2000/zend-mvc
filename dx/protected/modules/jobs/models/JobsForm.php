<?php

class JobsForm extends CFormModel {
    public $pic_thumb;
    public $hot = 0;
    public $enable = 1;
    public $hoiit_module_item_cat_cat_id;

    public $titlevi;
    public $titleen;
    public $previewvi;
    public $previewen;
    public $contentvi;
    public $contenten;
    public $tagvi;
    public $tagen;
    public $descriptionvi;
    public $descriptionen;

    public $remove_pic_thumb;

    public function rules() {
        return array(
            array('hoiit_module_item_cat_cat_id, titlevi, contentvi, tagvi', 'required'),
            array('hot, enable', 'numerical', 'integerOnly' => true),
            array('pic_thumb', 'file', 'types' => 'gif,png,jpg,jpeg,icon', 'allowEmpty' => true, 'maxSize' => 1024 * 1024 * 5),
            array('pic_thumb, titlevi, titleen, tagvi, tagen', 'length', 'max' => 100),
            array('descriptionvi, descriptionen', 'length', 'max' => 250),
            array('pic_thumb, previewvi, previewen, contentvi, contenten, remove_pic_thumb', 'safe')
        );
    }

    public function attributeLabels() {
        return array(
        );
    }
}