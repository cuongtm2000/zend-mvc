<?php

/**
 * This is the model class for table "dos_configs".
 *
 * The followings are the available columns in table 'dos_configs':
 * @property string $config_name
 * @property integer $config_value
 * @property string $config_desc
 * @property string $dos_templates_template
 *
 * The followings are the available model relations:
 * @property DosTemplates $dosTemplatesTemplate
 */
class Configs extends CActiveRecord {
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return Configs the static model class
	 */
	public static function model($className = __CLASS__) {
		return parent::model($className);
	}

	/**
	 * @return string the associated database table name
	 */
	public function tableName() {
		return 'dos_configs';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules() {
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('config_name, config_value, dos_templates_template', 'required'),
			array('config_value', 'numerical', 'integerOnly' => true),
			array('config_name', 'length', 'max' => 30),
			array('config_desc', 'length', 'max' => 50),
			array('dos_templates_template', 'length', 'max' => 6),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('config_name, config_value, config_desc, dos_templates_template', 'safe', 'on' => 'search'),
		);
	}

	/**
	 * @return array relational rules.
	 */
	public function relations() {
		// NOTE: you may need to adjust the relation name and the related
		// class name for the relations automatically generated below.
		return array(
			//'dosTemplatesTemplate' => array(self::BELONGS_TO, 'DosTemplates', 'dos_templates_template'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels() {
		return array(
			'config_name' => 'Config Name',
			'config_value' => 'Config Value',
			'config_desc' => 'Config Desc',
			'dos_templates_template' => 'Dos Templates Template',
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

		$criteria->compare('config_name', $this->config_name, true);
		$criteria->compare('config_value', $this->config_value);
		$criteria->compare('config_desc', $this->config_desc, true);
		$criteria->compare('dos_templates_template', $this->dos_templates_template, true);

		return new CActiveDataProvider($this, array(
			'criteria' => $criteria,
		));
	}
}