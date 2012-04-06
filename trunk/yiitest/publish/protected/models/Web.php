<?php

/**
 * This is the model class for table "dos_module_webs".
 *
 * The followings are the available columns in table 'dos_module_webs':
 * @property string $web_name
 * @property string $web_value
 * @property string $dos_usernames_username
 *
 * The followings are the available model relations:
 * @property DosUsernames $dosUsernamesUsername
 */
class Web extends CActiveRecord {
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return Webs the static model class
	 */
	public static function model($className = __CLASS__) {
		return parent::model($className);
	}

	/**
	 * @return string the associated database table name
	 */
	public function tableName() {
		return 'dos_module_webs';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules() {
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('web_name, dos_usernames_username', 'required'),
			array('web_name, dos_usernames_username', 'length', 'max' => 45),
			array('web_value', 'safe'),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('web_name, web_value, dos_usernames_username', 'safe', 'on' => 'search'),
		);
	}

	/**
	 * @return array relational rules.
	 */
	public function relations() {
		// NOTE: you may need to adjust the relation name and the related
		// class name for the relations automatically generated below.
		return array(
			'dosUsernamesUsername' => array(self::BELONGS_TO, 'DosUsernames', 'dos_usernames_username'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels() {
		return array(
			'web_name' => 'Web Name',
			'web_value' => 'Web Value',
			'dos_usernames_username' => 'Dos Usernames Username',
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

		$criteria->compare('web_name', $this->web_name, true);
		$criteria->compare('web_value', $this->web_value, true);
		$criteria->compare('dos_usernames_username', $this->dos_usernames_username, true);

		return new CActiveDataProvider($this, array(
			'criteria' => $criteria,
		));
	}

	//Front end - Set web value
	public function setWebValue($tag) {
		$sql = 'SELECT web_value FROM ' . $this->tableName() . ' WHERE web_name=:tag';
		$command = Yii::app()->db->createCommand($sql);
		$command->bindParam(":tag", $tag, PDO::PARAM_STR);
		return $command->queryScalar();
	}

	//Back end - list record
	public function listRecord() {
		$user = Yii::app()->user->id;
		$command = Yii::app()->db->createCommand('SELECT web_name, web_value FROM ' . $this->tableName() . ' WHERE dos_usernames_username=:user');
		$command->bindParam(":user", $user, PDO::PARAM_STR);
		return $command->queryAll();
	}

	//Back end - add Item
	public function addItem($data = NULL) {
		$this->deleteItem();

		$names = $data->getPost('web_name', '');
		$values = $data->getPost('web_value', '');
		$i = 0;
		foreach ($names as $name) {
			$this->insertItem($name, $values[$i]);
			$i++;
		}
	}

	//Back end - insert item
	private function insertItem($name, $value) {
		$user = Yii::app()->user->id;
		$command = Yii::app()->db->createCommand('INSERT INTO ' . $this->tableName() . ' (`web_name`, `web_value`, `dos_usernames_username`) VALUES (:name, :value, :user)');
		$command->bindParam(":name", $name, PDO::PARAM_STR);
		$command->bindParam(":value", $value, PDO::PARAM_STR);
		$command->bindParam(":user", $user, PDO::PARAM_STR);
		$command->execute();
	}

	//Back end - delete item
	private function deleteItem() {
		$user = Yii::app()->user->id;
		$command = Yii::app()->db->createCommand('DELETE FROM ' . $this->tableName() . ' WHERE dos_usernames_username=:user');
		$command->bindParam(":user", $user, PDO::PARAM_STR);
		$command->execute();
	}
}