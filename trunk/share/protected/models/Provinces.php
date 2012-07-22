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
        return 'dos_provinces';
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
            'dosNationalsNational' => array(self::BELONGS_TO, 'DosNationals', 'dos_nationals_national'),
            'dosUsernames' => array(self::HAS_MANY, 'DosUsernames', 'dos_provinces_province_id'),
        );
    }

    /**
     * @return array customized attribute labels (name=>label)
     */
    public function attributeLabels() {
        return array(
            'province_id' => 'Province',
            'province_name' => 'Province Name',
            'dos_nationals_national' => 'Dos Nationals National',
        );
    }

    /**
     * Retrieves a list of models based on the current search/filter conditions.
     * @return CActiveDataProvider the data provider that can return the models based on the search/filter conditions.
     */
    public function search() {
        // Warning: Please modify the following code to remove attributes that
        // should not be searched.

        $criteria = new CDbCriteria;

        $criteria->compare('province_id', $this->province_id);
        $criteria->compare('province_name', $this->province_name, true);
        $criteria->compare('dos_nationals_national', $this->dos_nationals_national, true);

        return new CActiveDataProvider($this, array(
                    'criteria' => $criteria,
                ));
    }
    public function listProvinceByCountry($national){
        $command = Yii::app()->db->createCommand('SELECT province_id, province_name FROM '.$this->tableName().' WHERE dos_nationals_national=:national');
        $command->bindParam(":national", $national, PDO::PARAM_STR);
        return $command->queryAll();
    }
    public function listDistrictProvince($province){
        $command = Yii::app()->db->createCommand('SELECT district_id, district_name FROM dos_districts WHERE dos_provinces_province=:p');
        $command->bindParam(":p", $province, PDO::PARAM_STR);
        return $command->queryAll();
    }
    public function listWardDistrict($district){
        $command = Yii::app()->db->createCommand('SELECT ward_id, ward_name FROM dos_wards WHERE dos_districts_district=:p');
        $command->bindParam(":p", $district, PDO::PARAM_STR);
        return $command->queryAll();
    }
    
}