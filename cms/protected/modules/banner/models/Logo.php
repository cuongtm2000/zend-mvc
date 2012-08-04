<?php

class Logo extends CActiveRecord {

    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

    /**
     * @return string the associated database table name
     */
    public function tableName() {
        return 'hoiit_module_banners';
    }

    /**
     * @return array validation rules for model attributes.
     */
    public function rules() {
        // NOTE: you should only define rules for those attributes that
        // will receive user inputs.
        return array(
            array('banner_picture', 'file', 'types' => 'gif,png,jpg,jpeg,icon', 'allowEmpty' => true, 'maxSize' => 1024 * 1024 * 5),
            array('banner_picture', 'length', 'max' => 100)
        );
    }

    /**
     * @return array customized attribute labels (name=>label)
     */
    public function attributeLabels() {
        return array(
            'banner_picture' => 'Logo Picture',
        );
    }

    public function saveItem() {
        $data = $this->getLogo();
        if ($data) {
            //Edit
            $item = $this::model()->findByPk($data['banner_id']);
            if ($_FILES[__CLASS__]['name']['banner_picture']) {
                Yii::import('ext.SimpleImage.CSimpleImage');
                $file = new CSimpleImage();
                $item->banner_picture = $file->processUpload($_FILES[__CLASS__]['name']['banner_picture'], $_FILES[__CLASS__]['tmp_name']['banner_picture'], 123, 123, '/image/' . strtolower(__CLASS__), 'logo', $data['banner_picture']);
            }
            $item->save();
        } else {
            if ($_FILES[__CLASS__]['name']['banner_picture']) {
                Yii::import('ext.SimpleImage.CSimpleImage');
                $file = new CSimpleImage();
                $this->banner_picture = $file->processUpload($_FILES[__CLASS__]['name']['banner_picture'], $_FILES[__CLASS__]['tmp_name']['banner_picture'], 123, 123, '/image/' . strtolower(__CLASS__), 'logo');
            }
            $this->save();
        }

    }

    public function getLogo() {
        $command = Yii::app()->db->createCommand('SELECT banner_id, banner_picture FROM ' . $this->tableName() . ' WHERE banner_type=\'logo\'');
        return $command->queryRow();
    }

}