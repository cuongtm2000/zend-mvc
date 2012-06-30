<?php

/**
 * This is the model class for table "dos_districts".
 *
 * The followings are the available columns in table 'dos_districts':
 * @property integer $district_id
 * @property string $district_name
 * @property integer $dos_provinces_province
 *
 * The followings are the available model relations:
 * @property Products[] $products
 */
class Districts extends CActiveRecord {

    /**
     * Returns the static model of the specified AR class.
     * @param string $className active record class name.
     * @return Districts the static model class
     */
    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

    /**
     * @return string the associated database table name
     */
    public function tableName() {
        return 'dos_districts';
    }

    /**
     * @return array validation rules for model attributes.
     */
    public function rules() {
        // NOTE: you should only define rules for those attributes that
        // will receive user inputs.
        return array(
            array('district_name, dos_provinces_province', 'required'),
            array('dos_provinces_province', 'numerical', 'integerOnly' => true),
            array('district_name', 'length', 'max' => 45),
            // The following rule is used by search().
            // Please remove those attributes that should not be searched.
            array('district_id, district_name, dos_provinces_province', 'safe', 'on' => 'search'),
        );
    }

    /**
     * @return array relational rules.
     */
    public function relations() {
        // NOTE: you may need to adjust the relation name and the related
        // class name for the relations automatically generated below.
        return array(
            'products' => array(self::HAS_MANY, 'Products', 'dos_districts_district_id'),
            'Provinces' => array(self::BELONGS_TO, 'Provinces', 'dos_provinces_province'),
        );
    }

    /**
     * @return array customized attribute labels (name=>label)
     */
    public function attributeLabels() {
        return array(
            'district_id' => 'District',
            'district_name' => 'District Name',
            'dos_provinces_province' => 'Dos Provinces Province',
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

        $criteria->compare('district_id', $this->district_id);
        $criteria->compare('district_name', $this->district_name, true);
        $criteria->compare('dos_provinces_province', $this->dos_provinces_province);

        return new CActiveDataProvider($this, array(
                    'criteria' => $criteria,
                ));
    }

    public static function getProvinceName($id) {
        $tmp = Districts::model()->findByPk($id);
        return $tmp->Provinces['province_name'];
    }

}