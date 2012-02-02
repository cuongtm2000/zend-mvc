<?php

/**
 * This is the model class for table "dos_templates_has_dos_modules".
 *
 * The followings are the available columns in table 'dos_templates_has_dos_modules':
 * @property string $dos_templates_template
 * @property string $dos_modules_module_id
 * @property string $dos_values_value_name
 */
class TemplateModule extends CActiveRecord {

    /**
     * Returns the static model of the specified AR class.
     * @return TemplateModule the static model class
     */
    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

    /**
     * @return string the associated database table name
     */
    public function tableName() {
        return 'dos_templates_has_dos_modules';
    }

    /**
     * @return array validation rules for model attributes.
     */
    public function rules() {
        // NOTE: you should only define rules for those attributes that
        // will receive user inputs.
        return array(
            array('dos_templates_template, dos_modules_module_id, dos_values_value_name', 'required'),
            array('dos_templates_template', 'length', 'max' => 6),
            array('dos_modules_module_id, dos_values_value_name', 'length', 'max' => 20),
            // The following rule is used by search().
            // Please remove those attributes that should not be searched.
            array('dos_templates_template, dos_modules_module_id, dos_values_value_name', 'safe', 'on' => 'search'),
        );
    }

    /**
     * @return array relational rules.
     */
    public function relations() {
        // NOTE: you may need to adjust the relation name and the related
        // class name for the relations automatically generated below.
        return array(
        );
    }

    /**
     * @return array customized attribute labels (name=>label)
     */
    public function attributeLabels() {
        return array(
            'dos_templates_template' => 'Dos Templates Template',
            'dos_modules_module_id' => 'Dos Modules Module',
            'dos_values_value_name' => 'Dos Values Value Name',
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

        $criteria->compare('dos_templates_template', $this->dos_templates_template, true);
        $criteria->compare('dos_modules_module_id', $this->dos_modules_module_id, true);
        $criteria->compare('dos_values_value_name', $this->dos_values_value_name, true);

        return new CActiveDataProvider($this, array(
                    'criteria' => $criteria,
                ));
    }

    public function getFunction($template, $module) {
        $sql = 'SELECT value_name, module_id, function_name FROM ' . $this->tableName() . ', dos_values WHERE ' . $this->tableName() . '.dos_values_value_name = dos_values.value_name AND dos_templates_template=:template AND dos_modules_module_id=:module';
        $command = Yii::app()->db->createCommand($sql);
        $command->bindParam(":template", $template, PDO::PARAM_STR);
        $command->bindParam(":module", $module, PDO::PARAM_STR);

        return $command->queryAll();
    }

}