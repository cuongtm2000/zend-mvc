<?php

/**
 * This is the model class for table "dos_agents".
 *
 * The followings are the available columns in table 'dos_agents':
 * @property string $agent_id
 * @property string $email
 * @property string $password
 * @property string $created_date
 * @property string $fullname
 * @property string $phone
 * @property string $company
 * @property string $website
 * @property string $picture
 * @property string $address
 * @property string $yahoo
 * @property string $skype
 * @property string $content
 * @property string $point
 * @property string $bonus
 * @property string $type
 * @property string $parent_id
 * @property integer $enable
 * @property integer $dos_provinces_province_id
 *
 * The followings are the available model relations:
 * @property DosProvinces $dosProvincesProvince
 */
class Agents extends CActiveRecord {
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return Agents the static model class
	 */
	public static function model($className = __CLASS__) {
		return parent::model($className);
	}

	/**
	 * @return string the associated database table name
	 */
	public function tableName() {
		return 'dos_agents';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules() {
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('agent_id, email, password, created_date, fullname, phone, address, parent_id, enable, dos_provinces_province_id', 'required'),
			array('enable, dos_provinces_province_id', 'numerical', 'integerOnly' => true),
			array('agent_id, parent_id', 'length', 'max' => 8),
			array('email, password, fullname, yahoo, skype, content, type', 'length', 'max' => 45),
			array('phone', 'length', 'max' => 30),
			array('company, address', 'length', 'max' => 100),
			array('website, picture', 'length', 'max' => 60),
			array('point, bonus', 'length', 'max' => 15),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('agent_id, email, password, created_date, fullname, phone, company, website, picture, address, yahoo, skype, content, point, bonus, type, parent_id, enable, dos_provinces_province_id', 'safe', 'on' => 'search'),
		);
	}

	/**
	 * @return array relational rules.
	 */
	public function relations() {
		// NOTE: you may need to adjust the relation name and the related
		// class name for the relations automatically generated below.
		return array(
			'dosProvincesProvince' => array(self::BELONGS_TO, 'DosProvinces', 'dos_provinces_province_id'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels() {
		return array(
			'agent_id' => 'Agent',
			'email' => 'Email',
			'password' => 'Password',
			'created_date' => 'Created Date',
			'fullname' => 'Fullname',
			'phone' => 'Phone',
			'company' => 'Company',
			'website' => 'Website',
			'picture' => 'Picture',
			'address' => 'Address',
			'yahoo' => 'Yahoo',
			'skype' => 'Skype',
			'content' => 'Content',
			'point' => 'Point',
			'bonus' => 'Bonus',
			'type' => 'Type',
			'parent_id' => 'Parent',
			'enable' => 'Enable',
			'dos_provinces_province_id' => 'Dos Provinces Province',
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

		$criteria->compare('agent_id', $this->agent_id, true);
		$criteria->compare('email', $this->email, true);
		$criteria->compare('password', $this->password, true);
		$criteria->compare('created_date', $this->created_date, true);
		$criteria->compare('fullname', $this->fullname, true);
		$criteria->compare('phone', $this->phone, true);
		$criteria->compare('company', $this->company, true);
		$criteria->compare('website', $this->website, true);
		$criteria->compare('picture', $this->picture, true);
		$criteria->compare('address', $this->address, true);
		$criteria->compare('yahoo', $this->yahoo, true);
		$criteria->compare('skype', $this->skype, true);
		$criteria->compare('content', $this->content, true);
		$criteria->compare('point', $this->point, true);
		$criteria->compare('bonus', $this->bonus, true);
		$criteria->compare('type', $this->type, true);
		$criteria->compare('parent_id', $this->parent_id, true);
		$criteria->compare('enable', $this->enable);
		$criteria->compare('dos_provinces_province_id', $this->dos_provinces_province_id);

		return new CActiveDataProvider($this, array(
			'criteria' => $criteria,
		));
	}

	public function listAgentsByProvince($province_id) {
		$command = Yii::app()->db->createCommand('SELECT agent_id, email, fullname, phone, company, address FROM ' . $this->tableName() . ' WHERE enable=1 AND dos_provinces_province_id=:province_id');
		$command->bindParam(":province_id", $province_id, PDO::PARAM_INT);
		return $command->queryAll();
	}
}