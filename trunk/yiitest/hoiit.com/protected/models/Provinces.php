<?php

/**
 * This is the model class for table "hoiit_provinces".
 *
 * The followings are the available columns in table 'hoiit_provinces':
 * @property integer $province_id
 * @property string $province_name
 * @property string $hoiit_nationals_national_id
 *
 * The followings are the available model relations:
 * @property HoiitNationals $hoiitNationalsNational
 * @property HoiitUsernames[] $hoiitUsernames
 */
class Provinces extends CActiveRecord {

    /**
     * Returns the static model of the specified AR class.
     * @param string $className active record class name.
     * @return Provinces the static model class
     */
    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

    /**
     * @return string the associated database table name
     */
    public function tableName() {
        return 'hoiit_provinces';
    }

    /**
     * @return array validation rules for model attributes.
     */
    public function rules() {
        // NOTE: you should only define rules for those attributes that
        // will receive user inputs.
        return array(
            array('province_name, hoiit_nationals_national_id', 'required'),
            array('province_name', 'length', 'max' => 45),
            array('hoiit_nationals_national_id', 'length', 'max' => 3),
            // The following rule is used by search().
            // Please remove those attributes that should not be searched.
            array('province_id, province_name, hoiit_nationals_national_id', 'safe', 'on' => 'search'),
        );
    }

    /**
     * @return array relational rules.
     */
    public function relations() {
        // NOTE: you may need to adjust the relation name and the related
        // class name for the relations automatically generated below.
        return array(
            'hoiitNationalsNational' => array(self::BELONGS_TO, 'HoiitNationals', 'hoiit_nationals_national_id'),
            'hoiitUsernames' => array(self::HAS_MANY, 'HoiitUsernames', 'hoiit_provinces_province_id'),
        );
    }

    /**
     * @return array customized attribute labels (name=>label)
     */
    public function attributeLabels() {
        return array(
            'province_id' => 'Province',
            'province_name' => 'Province Name',
            'hoiit_nationals_national_id' => 'Hoiit Nationals National',
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
        $criteria->compare('hoiit_nationals_national_id', $this->hoiit_nationals_national_id, true);

        return new CActiveDataProvider($this, array(
                    'criteria' => $criteria,
                ));
    }
    public function listProvincesByNational($national){
        $command = Yii::app()->db->createCommand('SELECT province_id, province_name FROM '.$this->tableName().' WHERE hoiit_nationals_national_id=:national');
        $command->bindParam(":national", $national, PDO::PARAM_STR);
        return $command->queryAll();
    }
}