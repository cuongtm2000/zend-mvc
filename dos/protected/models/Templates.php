<?php

/**
 * This is the model class for table "dos_templates".
 *
 * The followings are the available columns in table 'dos_templates':
 * @property string $template
 * @property string $template_name
 * @property string $created
 * @property string $description
 *
 * The followings are the available model relations:
 * @property DosConfigs[] $dosConfigs
 * @property DosTemplatesHasDosModules[] $dosTemplatesHasDosModules
 * @property DosUsernames[] $dosUsernames
 */
class Templates extends CActiveRecord {

    /**
     * Returns the static model of the specified AR class.
     * @return Templates the static model class
     */
    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

    /**
     * @return string the associated database table name
     */
    public function tableName() {
        return 'dos_templates';
    }

    /**
     * @return array validation rules for model attributes.
     */
    public function rules() {
        // NOTE: you should only define rules for those attributes that
        // will receive user inputs.
        return array(
            array('template, template_name, created', 'required'),
            array('template', 'length', 'max' => 6),
            array('template_name', 'length', 'max' => 45),
            array('description', 'length', 'max' => 1000),
            // The following rule is used by search().
            // Please remove those attributes that should not be searched.
            array('template, template_name, created, description', 'safe', 'on' => 'search'),
        );
    }

    /**
     * @return array relational rules.
     */
    public function relations() {
        // NOTE: you may need to adjust the relation name and the related
        // class name for the relations automatically generated below.
        return array(
            'dosConfigs' => array(self::HAS_MANY, 'DosConfigs', 'dos_templates_template'),
            'dosTemplatesHasDosModules' => array(self::HAS_MANY, 'DosTemplatesHasDosModules', 'dos_templates_template'),
            'dosUsernames' => array(self::HAS_MANY, 'DosUsernames', 'dos_templates_template'),
        );
    }

    /**
     * @return array customized attribute labels (name=>label)
     */
    public function attributeLabels() {
        return array(
            'template' => 'Template',
            'template_name' => 'Template Name',
            'created' => 'Created',
            'description' => 'Description',
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

        $criteria->compare('template', $this->template, true);
        $criteria->compare('template_name', $this->template_name, true);
        $criteria->compare('created', $this->created, true);
        $criteria->compare('description', $this->description, true);

        return new CActiveDataProvider($this, array(
                    'criteria' => $criteria,
                ));
    }
    public function listTemplates(){
        $command = Yii::app()->db->createCommand('SELECT template, template_name, description FROM ' . $this->tableName() . ' ORDER BY created DESC');
        return $command->queryAll();
    }
}