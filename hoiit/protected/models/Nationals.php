<?php

/**
 * This is the model class for table "hoiit_nationals".
 *
 * The followings are the available columns in table 'hoiit_nationals':
 * @property string $national_id
 * @property string $national_name
 *
 * The followings are the available model relations:
 * @property HoiitProvinces[] $hoiitProvinces
 */
class Nationals extends CActiveRecord {

    /**
     * Returns the static model of the specified AR class.
     * @param string $className active record class name.
     * @return Nationals the static model class
     */
    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

    /**
     * @return string the associated database table name
     */
    public function tableName() {
        return 'hoiit_nationals';
    }

    /**
     * @return array validation rules for model attributes.
     */
    public function rules() {
        // NOTE: you should only define rules for those attributes that
        // will receive user inputs.
        return array(
            array('national_id, national_name', 'required'),
            array('national_id', 'length', 'max' => 3),
            array('national_name', 'length', 'max' => 45),
            // The following rule is used by search().
            // Please remove those attributes that should not be searched.
            array('national_id, national_name', 'safe', 'on' => 'search'),
        );
    }

    /**
     * @return array relational rules.
     */
    public function relations() {
        // NOTE: you may need to adjust the relation name and the related
        // class name for the relations automatically generated below.
        return array(
            'hoiitProvinces' => array(self::HAS_MANY, 'HoiitProvinces', 'hoiit_nationals_national_id'),
        );
    }

    /**
     * @return array customized attribute labels (name=>label)
     */
    public function attributeLabels() {
        return array(
            'national_id' => 'National',
            'national_name' => 'National Name',
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

        $criteria->compare('national_id', $this->national_id, true);
        $criteria->compare('national_name', $this->national_name, true);

        return new CActiveDataProvider($this, array(
                    'criteria' => $criteria,
                ));
    }

}