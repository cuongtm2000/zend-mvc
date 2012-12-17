<?php

/**
 * This is the model class for table "{{module_products_users}}".
 *
 * The followings are the available columns in table '{{module_products_users}}':
 * @property string $user_email
 * @property string $user_pass
 * @property string $user_fullname
 * @property string $user_address
 * @property string $user_cmnd
 * @property string $user_birthday
 * @property string $user_phone
 * @property string $user_hotline
 * @property integer $user_sex
 * @property integer $user_province
 * @property string $user_lastvisit
 * @property integer $user_enable
 *
 * The followings are the available model relations:
 * @property ModuleProducts[] $hoiitModuleProducts
 */
class ProductsUsers extends CActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return ProductsUsers the static model class
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
		return '{{module_products_users}}';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('user_email, user_pass, user_fullname, user_address, user_phone', 'required'),
			array('user_email', 'email'),
			array('user_sex, user_province, user_enable', 'numerical', 'integerOnly'=>true),
			array('user_email', 'length', 'max'=>100),
			array('user_pass, user_fullname, user_cmnd, user_phone, user_hotline', 'length', 'max'=>45),
			array('user_address', 'length', 'max'=>200),
			array('user_birthday, user_lastvisit', 'safe'),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('user_email, user_pass, user_fullname, user_address, user_cmnd, user_birthday, user_phone, user_hotline, user_sex, user_province, user_lastvisit, user_enable', 'safe', 'on'=>'search'),
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
			'hoiitModuleProducts' => array(self::MANY_MANY, 'ModuleProducts', '{{module_products_has_users}}(user_email, record_id)'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'user_email' => 'User Email',
			'user_pass' => 'User Pass',
			'user_fullname' => 'User Fullname',
			'user_address' => 'User Address',
			'user_cmnd' => 'User Cmnd',
			'user_birthday' => 'User Birthday',
			'user_phone' => 'User Phone',
			'user_hotline' => 'User Hotline',
			'user_sex' => 'User Sex',
			'user_province' => 'User Province',
			'user_lastvisit' => 'User Lastvisit',
			'user_enable' => 'User Enable',
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

		$criteria->compare('user_email',$this->user_email,true);
		$criteria->compare('user_pass',$this->user_pass,true);
		$criteria->compare('user_fullname',$this->user_fullname,true);
		$criteria->compare('user_address',$this->user_address,true);
		$criteria->compare('user_cmnd',$this->user_cmnd,true);
		$criteria->compare('user_birthday',$this->user_birthday,true);
		$criteria->compare('user_phone',$this->user_phone,true);
		$criteria->compare('user_hotline',$this->user_hotline,true);
		$criteria->compare('user_sex',$this->user_sex);
		$criteria->compare('user_province',$this->user_province);
		$criteria->compare('user_lastvisit',$this->user_lastvisit,true);
		$criteria->compare('user_enable',$this->user_enable);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
	public function beforeSave() {
        if ($this->isNewRecord) {
            $this->user_pass = md5(md5($this->user_pass));
        }

        return parent::beforeSave();
    }
}