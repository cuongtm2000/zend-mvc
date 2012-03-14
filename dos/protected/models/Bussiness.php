<?php

/**
 * This is the model class for table "dos_bussiness".
 *
 * The followings are the available columns in table 'dos_bussiness':
 * @property string $bussiness_id
 * @property string $bussiness_name
 * @property string $cat_parent_id
 *
 * The followings are the available model relations:
 * @property DosTemplates[] $dosTemplates
 * @property DosUsernames[] $dosUsernames
 */
class Bussiness extends CActiveRecord {
	private $_data;
	private $_rows;
	private $_rowsize;

	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return Bussiness the static model class
	 */
	public static function model($className = __CLASS__) {
		return parent::model($className);
	}

	/**
	 * @return string the associated database table name
	 */
	public function tableName() {
		return 'dos_bussiness';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules() {
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('bussiness_id, bussiness_name, cat_parent_id', 'required'),
			array('bussiness_id, bussiness_name, cat_parent_id', 'length', 'max' => 100),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('bussiness_id, bussiness_name, cat_parent_id', 'safe', 'on' => 'search'),
		);
	}

	/**
	 * @return array relational rules.
	 */
	public function relations() {
		// NOTE: you may need to adjust the relation name and the related
		// class name for the relations automatically generated below.
		return array(
			//'dosTemplates' => array(self::MANY_MANY, 'DosTemplates', 'dos_templates_has_dos_bussiness(dos_bussiness_bussiness_id, dos_templates_template)'),
			//'dosUsernames' => array(self::HAS_MANY, 'DosUsernames', 'dos_bussiness_bussiness_id'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels() {
		return array(
			'bussiness_id' => 'Bussiness',
			'bussiness_name' => 'Bussiness Name',
			'cat_parent_id' => 'Cat Parent',
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

		$criteria->compare('bussiness_id', $this->bussiness_id, true);
		$criteria->compare('bussiness_name', $this->bussiness_name, true);
		$criteria->compare('cat_parent_id', $this->cat_parent_id, true);

		return new CActiveDataProvider($this, array(
			'criteria' => $criteria,
		));
	}

	//Front end - List record for index
	public function listCats() {
		$command = Yii::app()->db->createCommand('SELECT bussiness_id, bussiness_name, cat_parent_id FROM ' . $this->tableName());
		$this->_rows = $command->queryAll();
		$this->_rowsize = count($this->_rows);
		for ($i = 0; $i < $this->_rowsize; $i++) {
			if ($this->_rows[$i]['cat_parent_id'] == 'root') {
				$this->_data[] = array('bussiness_id' => $this->_rows[$i]['bussiness_id'], 'bussiness_name' => $this->_rows[$i]['bussiness_name']);
				$this->loopItem($i);
			}
		}
		return $this->_data;
	}

	private function loopItem($i, $tab = '|-- ') {
		for ($j = 0; $j < $this->_rowsize; $j++) {
			if ($this->_rows[$j]['cat_parent_id'] == $this->_rows[$i]['bussiness_id']) {
				$this->_data[] = array('bussiness_id' => $this->_rows[$j]['bussiness_id'], 'bussiness_name' => $tab . $this->_rows[$j]['bussiness_name']);
				$this->loopItem($j, $tab . '|-- ');
			}
		}
	}

}