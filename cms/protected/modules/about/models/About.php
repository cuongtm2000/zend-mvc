<?php

/**
 * This is the model class for table "hoiit_module_about".
 *
 * The followings are the available columns in table 'hoiit_module_about':
 * @property integer $record_id
 * @property string $created
 * @property integer $record_order
 * @property integer $hot
 * @property string $field1
 * @property string $field2
 *
 * The followings are the available model relations:
 * @property HoiitLanguages[] $hoiitLanguages
 */
class About extends CActiveRecord {
    /**
     * Returns the static model of the specified AR class.
     * @param string $className active record class name.
     * @return About the static model class
     */
    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

    /**
     * @return string the associated database table name
     */
    public function tableName() {
        return 'hoiit_module_about';
    }

    /**
     * @return array validation rules for model attributes.
     */
    public function rules() {
        // NOTE: you should only define rules for those attributes that
        // will receive user inputs.
        return array(
            array('record_order, hot', 'numerical', 'integerOnly' => true),
            array('created', 'length', 'max' => 45),
            array('field1, field2', 'length', 'max' => 100),
            // The following rule is used by search().
            // Please remove those attributes that should not be searched.
            array('record_id, created, record_order, hot, field1, field2', 'safe', 'on' => 'search'),
        );
    }

    /**
     * @return array relational rules.
     */
    public function relations() {
        // NOTE: you may need to adjust the relation name and the related
        // class name for the relations automatically generated below.
        return array(
            //'Language' => array(self::MANY_MANY, 'Language', 'hoiit_module_about_hoiit_languages(record_id, language_id)'),
        );
    }

    /**
     * @return array customized attribute labels (name=>label)
     */
    public function attributeLabels() {
        return array(
            'record_id' => 'Record',
            'created' => 'Created',
            'record_order' => 'Record Order',
            'hot' => 'Hot',
            'field1' => 'Field1',
            'field2' => 'Field2',
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

        $criteria->compare('record_id', $this->record_id);
        $criteria->compare('created', $this->created, true);
        $criteria->compare('record_order', $this->record_order);
        $criteria->compare('hot', $this->hot);
        $criteria->compare('field1', $this->field1, true);
        $criteria->compare('field2', $this->field2, true);

        return new CActiveDataProvider($this, array(
            'criteria' => $criteria,
        ));
    }

    /**
     * get list Menu
     * @return mixed
     */
    public function listItem() {
        $command = Yii::app()->db->createCommand('SELECT title, tag FROM ' . $this->tableName() . ', hoiit_module_about_languages WHERE ' . $this->tableName() . '.record_id = hoiit_module_about_languages.record_id AND language_id =\'' . Yii::app()->language . '\' AND hot = 0 AND enable = 1 ORDER BY record_order DESC, created DESC');
        return $command->queryAll();
    }
}