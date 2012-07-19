<?php

/**
 * This is the model class for table "hoiit_modules".
 *
 * The followings are the available columns in table 'hoiit_modules':
 * @property string $module_id
 * @property string $module_title
 * @property integer $module_sort
 * @property integer $module_type
 *
 * The followings are the available model relations:
 * @property HoiitFunctions[] $hoiitFunctions
 * @property HoiitUrls[] $hoiitUrls
 */
class Module extends CActiveRecord {
    /**
     * Returns the static model of the specified AR class.
     * @param string $className active record class name.
     * @return Module the static model class
     */
    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

    /**
     * @return string the associated database table name
     */
    public function tableName() {
        return 'hoiit_modules';
    }

    /**
     * @return array validation rules for model attributes.
     */
    public function rules() {
        // NOTE: you should only define rules for those attributes that
        // will receive user inputs.
        return array(
            array('module_id, module_title, module_sort', 'required'),
            array('module_sort, module_type', 'numerical', 'integerOnly' => true),
            array('module_id', 'length', 'max' => 30),
            array('module_title', 'length', 'max' => 45),
            // The following rule is used by search().
            // Please remove those attributes that should not be searched.
            array('module_id, module_title, module_sort, module_type', 'safe', 'on' => 'search'),
        );
    }

    /**
     * @return array relational rules.
     */
    public function relations() {
        // NOTE: you may need to adjust the relation name and the related
        // class name for the relations automatically generated below.
        return array(
            'hoiitFunctions' => array(self::HAS_MANY, 'HoiitFunctions', 'hoiit_modules_module_id'),
            'hoiitUrls' => array(self::HAS_MANY, 'HoiitUrls', 'hoiit_modules_module_id'),
        );
    }

    /**
     * @return array customized attribute labels (name=>label)
     */
    public function attributeLabels() {
        return array(
            'module_id' => 'Module',
            'module_title' => 'Module Title',
            'module_sort' => 'Module Sort',
            'module_type' => 'Module Type',
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

        $criteria->compare('module_id', $this->module_id, true);
        $criteria->compare('module_title', $this->module_title, true);
        $criteria->compare('module_sort', $this->module_sort);
        $criteria->compare('module_type', $this->module_type);

        return new CActiveDataProvider($this, array(
            'criteria' => $criteria,
        ));
    }

    public function listItem() {
        $command = Yii::app()->db->createCommand('SELECT module_id FROM ' . $this->tableName() . ' WHERE module_id!=\'default\' AND module_type=1 ORDER BY module_sort ASC');
        return $command->queryAll();
    }
}