<?php

/**
 * This is the model class for table "hoiit_web_templates_cat".
 *
 * The followings are the available columns in table 'hoiit_web_templates_cat':
 * @property integer $cat_id
 * @property string $cat_name
 * @property integer $parent_id
 *
 * The followings are the available model relations:
 * @property HoiitWebTemplates[] $hoiitWebTemplates
 */
class WebTemplatesCat extends CActiveRecord {
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return WebTemplatesCat the static model class
	 */
	public static function model($className = __CLASS__) {
		return parent::model($className);
	}

	/**
	 * @return string the associated database table name
	 */
	public function tableName() {
		return 'hoiit_web_templates_cat';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules() {
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('cat_name', 'required'),
			array('parent_id', 'numerical', 'integerOnly' => true),
			array('cat_name', 'length', 'max' => 45),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('cat_id, cat_name, parent_id', 'safe', 'on' => 'search'),
		);
	}

	/**
	 * @return array relational rules.
	 */
	public function relations() {
		// NOTE: you may need to adjust the relation name and the related
		// class name for the relations automatically generated below.
		return array(
			'hoiitWebTemplates' => array(self::HAS_MANY, 'HoiitWebTemplates', 'hoiit_web_templates_cat_cat_id'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels() {
		return array(
			'cat_id' => 'Cat',
			'cat_name' => 'Cat Name',
			'parent_id' => 'Parent',
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

		$criteria->compare('cat_id', $this->cat_id);
		$criteria->compare('cat_name', $this->cat_name, true);
		$criteria->compare('parent_id', $this->parent_id);

		return new CActiveDataProvider($this, array(
			'criteria' => $criteria,
		));
	}
}