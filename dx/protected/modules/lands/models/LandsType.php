<?php

class LandsType extends CActiveRecord {
    public static function model($className = __CLASS__) {
        return parent::model($className);
    }
    
    public function tableName() {
        return 'hoiit_module_lands_type';
    }

    /**
     * @return array validation rules for model attributes.
     */
    public function rules() {
        // NOTE: you should only define rules for those attributes that
        // will receive user inputs.
        return array(
            //array('cat_created', 'required'),
            array('cat_parent_id, cat_hot, cat_order, cat_enable', 'numerical', 'integerOnly' => true),
            array('pic_thumb, cat_extra1, cat_extra2', 'length', 'max' => 100),
            array('pic_desc', 'length', 'max' => 200),
            // The following rule is used by search().
            // Please remove those attributes that should not be searched.
            array('cat_id, cat_parent_id, cat_created, pic_thumb, pic_desc, cat_hot, cat_order, cat_extra1, cat_extra2, cat_enable', 'safe', 'on' => 'search'),
        );
    }

    /**
     * @return array relational rules.
     */
    public function relations() {
        // NOTE: you may need to adjust the relation name and the related
        // class name for the relations automatically generated below.
        return array(
            'moduleLands' => array(self::HAS_MANY, 'Lands', 'hoiit_module_item_type_type_id'),
        );
    }


    public function attributeLabels() {
        return array(
         
        );
    }

    public function listTypes() {
        $command = Yii::app()->db->createCommand('SELECT type_id, type_name FROM '.$this->tableName().'  where type_enable = 1 order by type_order asc');
        return $command->queryAll();
    }
}