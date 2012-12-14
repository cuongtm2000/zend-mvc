<?php

class ProjectsForm extends CFormModel {
    public $pic_thumb;
    public $pic_desc;
    public $pic_slide;

    public $video_youtube;
    public $hot = 0;
    public $enable = 1;
    public $hoiit_module_item_cat_cat_id;

    public $titlevi;
    public $titleen;
    public $previewvi;
    public $previewen;
    public $contentvi;
    public $contenten;
    public $detailvi;
    public $detailen;
    public $tagvi;
    public $tagen;
    public $descriptionvi;
    public $descriptionen;

    public $remove_pic_thumb;
    public $remove_pic_desc;
    public $remove_pic_slide;

    public function rules() {
        return array(
            array('hoiit_module_item_cat_cat_id, titlevi, contentvi, tagvi', 'required'),
            array('hot, enable', 'numerical', 'integerOnly' => true),
            array('pic_thumb, pic_desc, pic_slide', 'file', 'types' => 'gif,png,jpg,jpeg,icon', 'allowEmpty' => true, 'maxSize' => 1024 * 1024 * 5),
            array('pic_thumb, titlevi, titleen, tagvi, tagen', 'length', 'max' => 100),
            array('descriptionvi, descriptionen', 'length', 'max' => 250),
            array('pic_desc, pic_slide, video_youtube', 'length', 'max' => 500),
            array('video_youtube', 'url'),
            array('pic_thumb, pic_desc, pic_slide, video_youtube, previewvi, previewen, contentvi, contenten, detailvi, detailen, remove_pic_thumb, remove_pic_desc, remove_pic_slide', 'safe')
        );
    }

    public function attributeLabels() {
        return array(
        );
    }
}