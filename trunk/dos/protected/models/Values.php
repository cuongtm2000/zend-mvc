<?php

/**
 * This is the model class for table "dos_values".
 *
 * The followings are the available columns in table 'dos_values':
 * @property string $value_name
 * @property string $module_id
 * @property string $function_name
 *
 * The followings are the available model relations:
 * @property DosTemplatesHasDosModules[] $dosTemplatesHasDosModules
 * @property DosUsernamesHasDosModules[] $dosUsernamesHasDosModules
 */
class Values extends CActiveRecord {

    /**
     * Returns the static model of the specified AR class.
     * @param string $className active record class name.
     * @return Values the static model class
     */
    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

    /**
     * @return string the associated database table name
     */
    public function tableName() {
        return 'dos_values';
    }

    /**
     * @return array validation rules for model attributes.
     */
    public function rules() {
        // NOTE: you should only define rules for those attributes that
        // will receive user inputs.
        return array(
            array('value_name, module_id, function_name', 'required'),
            array('value_name, module_id, function_name', 'length', 'max' => 20),
            // The following rule is used by search().
            // Please remove those attributes that should not be searched.
            array('value_name, module_id, function_name', 'safe', 'on' => 'search'),
        );
    }

    /**
     * @return array relational rules.
     */
    public function relations() {
        // NOTE: you may need to adjust the relation name and the related
        // class name for the relations automatically generated below.
        return array(
            'dosTemplatesHasDosModules' => array(self::HAS_MANY, 'DosTemplatesHasDosModules', 'dos_values_value_name'),
            'dosUsernamesHasDosModules' => array(self::HAS_MANY, 'DosUsernamesHasDosModules', 'dos_values_value_name'),
        );
    }

    /**
     * @return array customized attribute labels (name=>label)
     */
    public function attributeLabels() {
        return array(
            'value_name' => 'Value Name',
            'module_id' => 'Module',
            'function_name' => 'Function Name',
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

        $criteria->compare('value_name', $this->value_name, true);
        $criteria->compare('module_id', $this->module_id, true);
        $criteria->compare('function_name', $this->function_name, true);

        return new CActiveDataProvider($this, array(
                    'criteria' => $criteria,
                ));
    }
    //Back end - list Value for Edit Template - Modules
    public function listValues(){
        $command = Yii::app()->db->createCommand('SELECT value_name FROM ' . $this->tableName() . ' ORDER BY value_name ASC');
        return $command->queryAll();
    }
}