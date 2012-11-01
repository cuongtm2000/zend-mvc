<?php

class AboutForm extends CFormModel {
    public $titlevi;
    public $titleen;
    public $contentvi;
    public $contenten;
    public $tagvi;
    public $tagen;
    public $descriptionvi;
    public $descriptionen;
    public $extra_field1;
    public $extra_field2;
    public $hot = 0;
    public $enable = 1;

    public function rules() {
        return array(
            array('titlevi, contentvi, tagvi', 'required'),
            array('hot, enable', 'numerical', 'integerOnly' => true),
            array('titlevi, titleen, tagvi, tagen, extra_field1, extra_field2', 'length', 'max' => 100),
            array('descriptionvi, descriptionen', 'length', 'max' => 250),
            //array('tagvi, tagen', 'unique', 'className' => 'AboutLanguage', 'attributeName' => 'tag'),
            array('contentvi, contenten', 'safe')
        );
    }

    public function attributeLabels() {
        return array(
            'titlevi' => Yii::t('admin', 'title') . ' vi',
            'titleen' => Yii::t('admin', 'title') . ' en',
            'contentvi' => Yii::t('admin', 'content') . ' vi',
            'contenten' => Yii::t('admin', 'content') . ' en',
            'tagvi' => Yii::t('admin', 'tag') . ' vi',
            'tagen' => Yii::t('admin', 'tag') . ' en',
            'descriptionvi' => Yii::t('admin', 'description') . ' vi',
            'descriptionen' => Yii::t('admin', 'description') . ' en',
            'hot' => Yii::t('admin', 'hot'),
            'enable' => Yii::t('admin', 'show')
        );
    }
}