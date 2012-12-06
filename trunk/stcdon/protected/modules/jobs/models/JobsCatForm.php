<?php

class JobsCatForm extends CFormModel {
    public $cat_id;
    public $cat_parent_id;
    public $cat_titlevi;
    public $cat_titleen;
    public $previewvi;
    public $previewen;
    public $tagvi;
    public $tagen;
    public $descriptionvi;
    public $descriptionen;
    public $pic_thumb;
    public $cat_hot = 0;
    public $cat_enable = 1;
    public $remove_pic_thumb;

    public function rules() {
        return array(
            array('cat_parent_id, cat_titlevi, tagvi', 'required'),
            array('cat_id, cat_parent_id, cat_hot, cat_enable', 'numerical', 'integerOnly' => true),
            array('pic_thumb', 'file', 'types' => 'gif,png,jpg,jpeg,icon', 'allowEmpty' => true, 'maxSize' => 1024 * 1024 * 5),
            array('pic_thumb, cat_titlevi, cat_titleen, tagvi, tagen', 'length', 'max' => 100),
            array('descriptionvi, descriptionen', 'length', 'max' => 250),
            array('cat_id, previewvi, previewen, remove_pic_thumb', 'safe')
        );
    }

    public function attributeLabels() {
        return array(
        );
    }
}