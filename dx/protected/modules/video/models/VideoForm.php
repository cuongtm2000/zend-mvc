<?php

class VideoForm extends CFormModel {
    public $pic_thumb;
    public $pic_full;
    public $pic_desc;
    public $unit;
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
	
	public $extra_field1vi;
	public $extra_field1en;
    public $remove_pic_thumb;
    public $remove_pic_full;
    public $remove_pic_desc;

    public function rules() {
        return array(
            array('hoiit_module_item_cat_cat_id, titlevi, extra_field1vi', 'required'),
            array('hot, enable', 'numerical', 'integerOnly' => true),
            array('pic_thumb, pic_full, titlevi, titleen, tagvi, tagen , extra_field1vi , extra_field1en', 'length', 'max' => 100),
            array('descriptionvi, descriptionen', 'length', 'max' => 250),
			array('extra_field1vi, extra_field1en', 'url'),
            array('pic_desc', 'length', 'max' => 500),
            array('unit', 'length', 'max' => 45),
            array('pic_thumb, pic_full, pic_desc, unit, previewvi, previewen, contentvi, contenten, remove_pic_thumb, remove_pic_full, remove_pic_desc', 'safe')
        );
    }

    public function attributeLabels() {
        return array(
			'hoiit_module_item_cat_cat_id' => Yii::app()->controller->lang['cat_title'],
			'titlevi' => Yii::t('admin', 'title') . ' vi',
            'titleen' => Yii::t('admin', 'title') . ' en',
			'extra_field1vi' => Yii::t('admin', 'link') . ' vi',
            'extra_field1en' => Yii::t('admin', 'link') . ' en',
			'pic_thumb' => Yii::t('admin', 'pic_thumb'),
			'hot' => Yii::t('admin', 'hot'),
            'enable' => Yii::t('admin', 'show'),
        );
    }
}