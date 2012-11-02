<?php

class LandsForm extends CFormModel {
    public $pic_thumb;
    public $pic_full;
    public $pic_desc;
//    public $unit;
    public $hot = 0;
    public $enable = 1;
 //   public $hoiit_module_item_cat_cat_id;

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

    public $price;
    public $contact_name;
    public $contact_tel;
    public $hoiit_module_item_cat_cat_id;
    public $hoiit_module_item_type_type_id;
    public $hoiit_module_lands_provinces_province_id;
    public $username;
    
    public function rules() {
        return array(
            array('hoiit_module_item_cat_cat_id, titlevi, contentvi, tagvi', 'required'),
            array('hot, enable', 'numerical', 'integerOnly' => true),
            array('pic_thumb, pic_full, titlevi, titleen, tagvi, tagen', 'length', 'max' => 100),
            array('descriptionvi, descriptionen', 'length', 'max' => 250),
            array('pic_desc', 'length', 'max' => 500),
            //array('unit', 'length', 'max' => 45),
            array('pic_thumb, pic_full, pic_desc, unit, previewvi, previewen, contentvi, contenten, remove_pic_thumb, remove_pic_full, remove_pic_desc', 'safe')
        );
    }

    public function attributeLabels() {
        return array(
            'titlevi' => 'Tiêu đề',
            'previewvi' => 'Các thông tin',
            'contentvi' => 'Mô tả chi tiết',
            'price' => 'Giá:',
            'hoiit_module_lands_provinces_province_id' => 'Khu vực',
            'contact_name' => 'Tên:',
            'contact_tel' => 'Số điện thoại',
            'hoiit_module_item_type_type_id' => 'Nhu cầu',
           
 
            'hoiit_module_item_cat_cat_id' => 'Loại bất động sản',
        );
    }
}