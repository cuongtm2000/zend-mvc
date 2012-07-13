<?php

/**
 * This is the model class for table "hoiit_languages".
 *
 * The followings are the available columns in table 'hoiit_languages':
 * @property string $language_id
 * @property string $language_name
 * @property integer $language_sort
 *
 * The followings are the available model relations:
 * @property HoiitModuleAbout[] $hoiitModuleAbouts
 */
class Language extends CActiveRecord {
    /**
     * Returns the static model of the specified AR class.
     * @param string $className active record class name.
     * @return Language the static model class
     */
    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

    /**
     * @return string the associated database table name
     */
    public function tableName() {
        return 'hoiit_languages';
    }

    /**
     * @return array validation rules for model attributes.
     */
    public function rules() {
        // NOTE: you should only define rules for those attributes that
        // will receive user inputs.
        return array(
            array('language_id, language_name', 'required'),
            array('language_sort', 'numerical', 'integerOnly' => true),
            array('language_id', 'length', 'max' => 2),
            array('language_name', 'length', 'max' => 45),
            // The following rule is used by search().
            // Please remove those attributes that should not be searched.
            array('language_id, language_name, language_sort', 'safe', 'on' => 'search'),
        );
    }

    /**
     * @return array relational rules.
     */
    public function relations() {
        // NOTE: you may need to adjust the relation name and the related
        // class name for the relations automatically generated below.
        return array(
            'About' => array(self::MANY_MANY, 'About', 'hoiit_module_about_languages(language_id, record_id)'),
        );
    }

    /**
     * @return array customized attribute labels (name=>label)
     */
    public function attributeLabels() {
        return array(
            'language_id' => 'Language',
            'language_name' => 'Language Name',
            'language_sort' => 'Language Sort',
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

        $criteria->compare('language_id', $this->language_id, true);
        $criteria->compare('language_name', $this->language_name, true);
        $criteria->compare('language_sort', $this->language_sort);

        return new CActiveDataProvider($this, array(
            'criteria' => $criteria,
        ));
    }

    public function listItem() {
        $command = Yii::app()->db->createCommand('SELECT language_id, language_name FROM ' . $this->tableName() . ' ORDER BY language_sort ASC');
        return $command->queryAll();
    }

    public function listLanguage() {
        $data = array();
        $rows = $this->listItem();
        foreach ($rows as $value) {
            $data[$value['language_id']] = $value['language_name'];
        }
        return $data;
    }
}