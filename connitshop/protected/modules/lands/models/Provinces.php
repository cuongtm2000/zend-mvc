<?php

/**
 * This is the model class for table "dos_provinces".
 *
 * The followings are the available columns in table 'dos_provinces':
 * @property integer $province_id
 * @property string $province_name
 * @property string $dos_nationals_national
 *
 * The followings are the available model relations:
 * @property DosNationals $dosNationalsNational
 * @property DosUsernames[] $dosUsernames
 */
class Provinces extends CActiveRecord {

    /**
     * Returns the static model of the specified AR class.
     * @return Provinces the static model class
     */
    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

    /**
     * @return string the associated database table name
     */
    public function tableName() {
        return 'hoiit_module_lands_provinces';
    }

    /**
     * @return array validation rules for model attributes.
     */
    public function rules() {
        // NOTE: you should only define rules for those attributes that
        // will receive user inputs.
        return array(
            array('province_name, dos_nationals_national', 'required'),
            array('province_name', 'length', 'max' => 45),
            array('dos_nationals_national', 'length', 'max' => 3),
            // The following rule is used by search().
            // Please remove those attributes that should not be searched.
            array('province_id, province_name, dos_nationals_national', 'safe', 'on' => 'search'),
        );
    }

    /**
     * @return array relational rules.
     */
    public function relations() {
        // NOTE: you may need to adjust the relation name and the related
        // class name for the relations automatically generated below.
        return array(
          //  'dosNationalsNational' => array(self::BELONGS_TO, 'DosNationals', 'dos_nationals_national'),
           // 'dosUsernames' => array(self::HAS_MANY, 'DosUsernames', 'dos_provinces_province_id'),
        );
    }

    public function listProvince(){
        $command = Yii::app()->db->createCommand('SELECT province_id, province_name FROM '.$this->tableName());
        return $command->queryAll();
    }

    
}