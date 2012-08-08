<?php

class Logo extends CActiveRecord {
    public $remove_picture;

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
            array('banner_picture', 'length', 'max' => 100),
            array('remove_picture', 'safe')
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

    public function saveItem($model) {
        $data = $this->getLogo();
        if ($data) {
            //Edit
            $item = $this::model()->findByPk($data['banner_id']);

            //remove pic_thumb
            if (isset($model->remove_picture) && $model->remove_picture == 1) {
                Common::removePic($item->banner_picture, '/image/' . strtolower(__CLASS__)); // remove pic_thumb
                $item->banner_picture = null;
            }

            if ($_FILES[__CLASS__]['name']['banner_picture']) {
                Yii::import('ext.SimpleImage.CSimpleImage');
                $file = new CSimpleImage();
                $item->banner_picture = $file->processUpload($_FILES[__CLASS__]['name']['banner_picture'], $_FILES[__CLASS__]['tmp_name']['banner_picture'], Config::getValue('logo_width'), Config::getValue('logo_height'), '/image/' . strtolower(__CLASS__), 'logo', $data['banner_picture']);
            }
            $item->save();
        } else {
            if ($_FILES[__CLASS__]['name']['banner_picture']) {
                Yii::import('ext.SimpleImage.CSimpleImage');
                $file = new CSimpleImage();
                $this->banner_picture = $file->processUpload($_FILES[__CLASS__]['name']['banner_picture'], $_FILES[__CLASS__]['tmp_name']['banner_picture'], Config::getValue('logo_width'), Config::getValue('logo_height'), '/image/' . strtolower(__CLASS__), 'logo');
            }
            $this->save();
        }

    }

    public function getLogo() {
        $command = Yii::app()->db->createCommand('SELECT banner_id, banner_picture FROM ' . $this->tableName() . ' WHERE banner_type=\'logo\'');
        return $command->queryRow();
    }

}