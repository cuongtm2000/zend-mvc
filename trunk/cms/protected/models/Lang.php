<?php

/**
 * This is the model class for table "hoiit_langs".
 *
 * The followings are the available columns in table 'hoiit_langs':
 * @property string $lang_id
 * @property string $lang_name
 * @property integer $lang_admin
 * @property string $hoiit_languages_language_id
 *
 * The followings are the available model relations:
 * @property HoiitLanguages $hoiitLanguagesLanguage
 */
class Lang extends CActiveRecord {
    /**
     * Returns the static model of the specified AR class.
     * @param string $className active record class name.
     * @return Lang the static model class
     */
    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

    /**
     * @return string the associated database table name
     */
    public function tableName() {
        return 'hoiit_langs';
    }

    /**
     * @return array validation rules for model attributes.
     */
    public function rules() {
        // NOTE: you should only define rules for those attributes that
        // will receive user inputs.
        return array(
            array('lang_id, lang_name, hoiit_languages_language_id', 'required'),
            array('lang_admin', 'numerical', 'integerOnly' => true),
            array('lang_id', 'length', 'max' => 45),
            array('lang_name', 'length', 'max' => 200),
            array('hoiit_languages_language_id', 'length', 'max' => 2),
            // The following rule is used by search().
            // Please remove those attributes that should not be searched.
            array('lang_id, lang_name, lang_admin, hoiit_languages_language_id', 'safe', 'on' => 'search'),
        );
    }

    /**
     * @return array relational rules.
     */
    public function relations() {
        // NOTE: you may need to adjust the relation name and the related
        // class name for the relations automatically generated below.
        return array(
            //'hoiitLanguagesLanguage' => array(self::BELONGS_TO, 'HoiitLanguages', 'hoiit_languages_language_id'),
        );
    }

    /**
     * @return array customized attribute labels (name=>label)
     */
    public function attributeLabels() {
        return array(
            'lang_id' => 'Lang',
            'lang_name' => 'Lang Name',
            'lang_admin' => 'Lang Admin',
            'hoiit_languages_language_id' => 'Hoiit Languages Language',
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

        $criteria->compare('lang_id', $this->lang_id, true);
        $criteria->compare('lang_name', $this->lang_name, true);
        $criteria->compare('lang_admin', $this->lang_admin);
        $criteria->compare('hoiit_languages_language_id', $this->hoiit_languages_language_id, true);

        return new CActiveDataProvider($this, array(
            'criteria' => $criteria,
        ));
    }
}