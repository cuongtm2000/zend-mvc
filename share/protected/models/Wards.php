<?php

/**
 * This is the model class for table "dos_wards".
 *
 * The followings are the available columns in table 'dos_wards':
 * @property integer $ward_id
 * @property string $ward_name
 * @property integer $dos_districts_district
 *
 * The followings are the available model relations:
 * @property DosModuleProducts[] $dosModuleProducts
 * @property DosDistricts $dosDistrictsDistrict
 */
class Wards extends CActiveRecord {

    /**
     * Returns the static model of the specified AR class.
     * @param string $className active record class name.
     * @return Wards the static model class
     */
    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

    /**
     * @return string the associated database table name
     */
    public function tableName() {
        return 'dos_wards';
    }

    /**
     * @return array validation rules for model attributes.
     */
    public function rules() {
        // NOTE: you should only define rules for those attributes that
        // will receive user inputs.
        return array(
            array('ward_name, dos_districts_district', 'required'),
            array('dos_districts_district', 'numerical', 'integerOnly' => true),
            array('ward_name', 'length', 'max' => 45),
            // The following rule is used by search().
            // Please remove those attributes that should not be searched.
            array('ward_id, ward_name, dos_districts_district', 'safe', 'on' => 'search'),
        );
    }

    /**
     * @return array relational rules.
     */
    public function relations() {
        // NOTE: you may need to adjust the relation name and the related
        // class name for the relations automatically generated below.
        return array(
            'dosModuleProducts' => array(self::HAS_MANY, 'DosModuleProducts', 'dos_wards_ward_id'),
            'dosDistrictsDistrict' => array(self::BELONGS_TO, 'DosDistricts', 'dos_districts_district'),
        );
    }

    /**
     * @return array customized attribute labels (name=>label)
     */
    public function attributeLabels() {
        return array(
            'ward_id' => 'Ward',
            'ward_name' => 'Ward Name',
            'dos_districts_district' => 'Dos Districts District',
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

        $criteria->compare('ward_id', $this->ward_id);
        $criteria->compare('ward_name', $this->ward_name, true);
        $criteria->compare('dos_districts_district', $this->dos_districts_district);

        return new CActiveDataProvider($this, array(
                    'criteria' => $criteria,
                ));
    }

}