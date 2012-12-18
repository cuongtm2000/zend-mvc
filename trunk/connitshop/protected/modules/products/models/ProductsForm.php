<?php

class ProductsForm extends CFormModel {
    public $pic_thumb;
    public $pic_full;
    public $pic_desc;
    public $unit;
    public $hot = 0;
    public $specials = 0;
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
    public $remove_pic_full;
    public $remove_pic_desc;

    public function rules() {
        return array(
            array('hoiit_module_item_cat_cat_id, titlevi, contentvi, tagvi', 'required'),
            array('hot, specials, enable', 'numerical', 'integerOnly' => true),
            array('pic_thumb, pic_full, titlevi, titleen, tagvi, tagen', 'length', 'max' => 100),
            array('descriptionvi, descriptionen', 'length', 'max' => 250),
            array('pic_desc', 'length', 'max' => 500),
            array('unit', 'length', 'max' => 45),
            array('pic_thumb, pic_full, pic_desc, unit, previewvi, previewen, contentvi, contenten, remove_pic_thumb, remove_pic_full, remove_pic_desc', 'safe')
        );
    }

    public function attributeLabels() {
        return array(
        );
    }
}