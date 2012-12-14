<?php

/**
 * This is the model class for table "hoiit_functions".
 *
 * The followings are the available columns in table 'hoiit_functions':
 * @property string $function_value
 * @property string $function_name
 * @property string $function_class
 * @property string $function_call
 * @property string $hoiit_modules_module_id
 *
 * The followings are the available model relations:
 * @property HoiitModules $hoiitModulesModule
 * @property HoiitPositions[] $hoiitPositions
 */
class Functions extends CActiveRecord {
    /**
     * Returns the static model of the specified AR class.
     * @param string $className active record class name.
     * @return Functions the static model class
     */
    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

    /**
     * @return string the associated database table name
     */
    public function tableName() {
        return 'hoiit_functions';
    }

    /**
     * @return array validation rules for model attributes.
     */
    public function rules() {
        // NOTE: you should only define rules for those attributes that
        // will receive user inputs.
        return array(
            array('function_value, function_name, function_class, hoiit_modules_module_id', 'required'),
            array('function_value, function_class, function_call, hoiit_modules_module_id', 'length', 'max' => 30),
            array('function_name', 'length', 'max' => 45),
            // The following rule is used by search().
            // Please remove those attributes that should not be searched.
            array('function_value, function_name, function_class, function_call, hoiit_modules_module_id', 'safe', 'on' => 'search'),
        );
    }

    /**
     * @return array relational rules.
     */
    public function relations() {
        // NOTE: you may need to adjust the relation name and the related
        // class name for the relations automatically generated below.
        return array(
            //'hoiitModulesModule' => array(self::BELONGS_TO, 'HoiitModules', 'hoiit_modules_module_id'),
            //'hoiitPositions' => array(self::HAS_MANY, 'HoiitPositions', 'hoiit_functions_function_value'),
        );
    }

    /**
     * @return array customized attribute labels (name=>label)
     */
    public function attributeLabels() {
        return array(
            'function_value' => 'Function Value',
            'function_name' => 'Function Name',
            'function_class' => 'Function Class',
            'function_call' => 'Function Call',
            'hoiit_modules_module_id' => 'Hoiit Modules Module',
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

        $criteria->compare('function_value', $this->function_value, true);
        $criteria->compare('function_name', $this->function_name, true);
        $criteria->compare('function_class', $this->function_class, true);
        $criteria->compare('function_call', $this->function_call, true);
        $criteria->compare('hoiit_modules_module_id', $this->hoiit_modules_module_id, true);

        return new CActiveDataProvider($this, array(
            'criteria' => $criteria,
        ));
    }

    //Back end - List functions
    public function listFunction() {
        $command = Yii::app()->db->createCommand('SELECT function_value FROM ' . $this->tableName());
        return $command->queryAll();
    }
}