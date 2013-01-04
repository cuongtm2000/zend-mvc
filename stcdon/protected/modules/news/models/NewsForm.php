<?php

class NewsForm extends CFormModel {
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
            'record_id' => 'Record',
            'previewvi' => 'Thông tin mô tả',
            'pic_thumb' => 'Pic Thumb',
            'pic_desc' => 'Pic Desc',
            'record_order' => 'Record Order',
            'hot' => 'Hot',
            'specials' => 'Specials',
            'field1' => 'Field1',
            'field2' => 'Field2',
            'field3' => 'Field3',
            'field4' => 'Field4',
            'enable' => 'Enable',
            'hoiit_module_item_cat_cat_id' => 'Danh mục',
        );
    }
}