<?php

/**
 * This is the model class for table "dos_templates_has_dos_bussiness".
 *
 * The followings are the available columns in table 'dos_templates_has_dos_bussiness':
 * @property string $dos_templates_template
 * @property string $dos_bussiness_bussiness_id
 */
class TemplatesBussiness extends CActiveRecord {
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return TemplatesBussiness the static model class
	 */
	public static function model($className = __CLASS__) {
		return parent::model($className);
	}

	/**
	 * @return string the associated database table name
	 */
	public function tableName() {
		return 'dos_templates_has_dos_bussiness';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules() {
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('dos_templates_template, dos_bussiness_bussiness_id', 'required'),
			array('dos_templates_template', 'length', 'max' => 6),
			array('dos_bussiness_bussiness_id', 'length', 'max' => 100),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('dos_templates_template, dos_bussiness_bussiness_id', 'safe', 'on' => 'search'),
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
			'dos_bussiness_bussiness_id' => 'Dos Bussiness Bussiness',
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
		$criteria->compare('dos_bussiness_bussiness_id', $this->dos_bussiness_bussiness_id, true);

		return new CActiveDataProvider($this, array(
			'criteria' => $criteria,
		));
	}

	//Back end - Add item
	public function addItem($data = NULL, $template) {
		$this->deleteItem($template); //delete

		foreach ($data as $value) {
			if (!empty($value)) {
				$this->insertItem(trim($template), $value);
			}
		}
	}

	//Back end - insert item
	private function insertItem($template, $business) {
		$command = Yii::app()->db->createCommand('INSERT INTO ' . $this->tableName() . ' (`dos_templates_template`, `dos_bussiness_bussiness_id`) VALUES (:template, :business)');
		$command->bindParam(":template", $template, PDO::PARAM_STR);
		$command->bindParam(":business", $business, PDO::PARAM_STR);
		$command->execute();
	}

	//Back end - delete item
	private function deleteItem($template) {
		$command = Yii::app()->db->createCommand('DELETE FROM ' . $this->tableName() . ' WHERE dos_templates_template=:template');
		$command->bindParam(":template", $template, PDO::PARAM_STR);
		$command->execute();
	}
}