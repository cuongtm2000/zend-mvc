<?php

/**
 * This is the model class for table "dos_usernames".
 *
 * The followings are the available columns in table 'dos_usernames':
 * @property string $username
 * @property string $email
 * @property string $password
 * @property string $created
 * @property string $fullname
 * @property string $phone
 * @property string $company
 * @property integer $activated
 * @property string $dos_templates_template
 * @property integer $dos_provinces_province_id
 *
 * The followings are the available model relations:
 * @property DosModuleAbouts[] $dosModuleAbouts
 * @property DosTemplates $dosTemplatesTemplate
 * @property DosProvinces $dosProvincesProvince
 */
class Username extends CActiveRecord{
    public $template = '';
	/**
	 * Returns the static model of the specified AR class.
	 * @return Username the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}

	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'dos_usernames';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('username, email, password, created, activated, dos_templates_template, dos_provinces_province_id', 'required'),
			array('activated, dos_provinces_province_id', 'numerical', 'integerOnly'=>true),
			array('username, email, password, fullname', 'length', 'max'=>45),
			array('phone', 'length', 'max'=>15),
			array('company', 'length', 'max'=>100),
			array('dos_templates_template', 'length', 'max'=>6),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('username, email, password, created, fullname, phone, company, activated, dos_templates_template, dos_provinces_province_id', 'safe', 'on'=>'search'),
		);
	}

	/**
	 * @return array relational rules.
	 */
	public function relations()
	{
		// NOTE: you may need to adjust the relation name and the related
		// class name for the relations automatically generated below.
		return array(
			'dosModuleAbouts' => array(self::HAS_MANY, 'DosModuleAbouts', 'dos_usernames_username'),
			'dosTemplatesTemplate' => array(self::BELONGS_TO, 'DosTemplates', 'dos_templates_template'),
			'dosProvincesProvince' => array(self::BELONGS_TO, 'DosProvinces', 'dos_provinces_province_id'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'username' => 'Username',
			'email' => 'Email',
			'password' => 'Password',
			'created' => 'Created',
			'fullname' => 'Fullname',
			'phone' => 'Phone',
			'company' => 'Company',
			'activated' => 'Activated',
			'dos_templates_template' => 'Dos Templates Template',
			'dos_provinces_province_id' => 'Dos Provinces Province',
		);
	}

	/**
	 * Retrieves a list of models based on the current search/filter conditions.
	 * @return CActiveDataProvider the data provider that can return the models based on the search/filter conditions.
	 */
	public function search()
	{
		// Warning: Please modify the following code to remove attributes that
		// should not be searched.

		$criteria=new CDbCriteria;

		$criteria->compare('username',$this->username,true);
		$criteria->compare('email',$this->email,true);
		$criteria->compare('password',$this->password,true);
		$criteria->compare('created',$this->created,true);
		$criteria->compare('fullname',$this->fullname,true);
		$criteria->compare('phone',$this->phone,true);
		$criteria->compare('company',$this->company,true);
		$criteria->compare('activated',$this->activated);
		$criteria->compare('dos_templates_template',$this->dos_templates_template,true);
		$criteria->compare('dos_provinces_province_id',$this->dos_provinces_province_id);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
    /**
     * Check exits user
     */
    public function checkExistUser($username){
        $sql = "SELECT dos_templates_template FROM ".$this->tableName()." WHERE username='".$username."'";
		$row = Yii::app()->db->createCommand($sql)->queryRow();
        if($row){
            $this->template = $row['dos_templates_template'];
            return true;
        }else{
            return false;
        }
    }
	public function infoUser($username){
		$sql = "SELECT email, fullname, phone, company, dos_templates_template FROM ".$this->tableName()." WHERE username='".$username."'";
		return Yii::app()->db->createCommand($sql)->queryRow();
	}
    /**
     * Check login
     */
    public function login(){
        $time = 3600*24;
        $identity = new UserIdentity($this->username, $this->password);
        if($identity->authenticate() == UserIdentity::ERROR_NONE){
            Yii::app()->user->login($identity,$time);
            return true;
        }
        else{
            return false;
        }
    } 
}