<?php

/**
 * This is the model class for table "hoiit_templates".
 *
 * The followings are the available columns in table 'hoiit_templates':
 * @property string $template_id
 * @property string $template_name
 * @property string $template_date
 * @property string $template_desc
 * @property string $template_author
 * @property string $template_web
 * @property integer $template_activated
 *
 * The followings are the available model relations:
 * @property HoiitSettings[] $hoiitSettings
 */
class Template extends CActiveRecord {
    /**
     * Returns the static model of the specified AR class.
     * @param string $className active record class name.
     * @return Template the static model class
     */
    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

    /**
     * @return string the associated database table name
     */
    public function tableName() {
        return 'hoiit_templates';
    }

    /**
     * @return array validation rules for model attributes.
     */
    public function rules() {
        // NOTE: you should only define rules for those attributes that
        // will receive user inputs.
        return array(
            array('template_id, template_name, template_date', 'required'),
            array('template_activated', 'numerical', 'integerOnly' => true),
            array('template_id', 'length', 'max' => 30),
            array('template_name, template_author', 'length', 'max' => 45),
            array('template_desc, template_web', 'length', 'max' => 100),
            // The following rule is used by search().
            // Please remove those attributes that should not be searched.
            array('template_id, template_name, template_date, template_desc, template_author, template_web, template_activated', 'safe', 'on' => 'search'),
        );
    }

    /**
     * @return array relational rules.
     */
    public function relations() {
        // NOTE: you may need to adjust the relation name and the related
        // class name for the relations automatically generated below.
        return array(
            'hoiitSettings' => array(self::HAS_MANY, 'HoiitSettings', 'hoiit_templates_template_id'),
        );
    }

    /**
     * @return array customized attribute labels (name=>label)
     */
    public function attributeLabels() {
        return array(
            'template_id' => 'Template',
            'template_name' => 'Template Name',
            'template_date' => 'Template Date',
            'template_desc' => 'Template Desc',
            'template_author' => 'Template Author',
            'template_web' => 'Template Web',
            'template_activated' => 'Template Activated',
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

        $criteria->compare('template_id', $this->template_id, true);
        $criteria->compare('template_name', $this->template_name, true);
        $criteria->compare('template_date', $this->template_date, true);
        $criteria->compare('template_desc', $this->template_desc, true);
        $criteria->compare('template_author', $this->template_author, true);
        $criteria->compare('template_web', $this->template_web, true);
        $criteria->compare('template_activated', $this->template_activated);

        return new CActiveDataProvider($this, array(
            'criteria' => $criteria,
        ));
    }

    public function getTemplateDefault() {
        $command = Yii::app()->db->createCommand('SELECT template_id FROM ' . $this->tableName() . ' WHERE template_activated=1');
        return $command->queryScalar();
    }
}