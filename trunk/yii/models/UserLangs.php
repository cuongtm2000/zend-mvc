<?php

/**
 * This is the model class for table "dos_user_langs".
 *
 * The followings are the available columns in table 'dos_user_langs':
 * @property string $lang_name
 * @property string $lang
 * @property string $langen
 * @property string $dos_usernames_username
 *
 * The followings are the available model relations:
 * @property DosUsernames $dosUsernamesUsername
 */
class UserLangs extends CActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * @return UserLangs the static model class
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
		return 'dos_user_langs';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('lang_name, lang, dos_usernames_username', 'required'),
			array('lang_name', 'length', 'max'=>30),
			array('lang, langen', 'length', 'max'=>200),
			array('dos_usernames_username', 'length', 'max'=>45),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('lang_name, lang, langen, dos_usernames_username', 'safe', 'on'=>'search'),
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
			'dosUsernamesUsername' => array(self::BELONGS_TO, 'DosUsernames', 'dos_usernames_username'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'lang_name' => 'Lang Name',
			'lang' => 'Lang',
			'langen' => 'Langen',
			'dos_usernames_username' => 'Dos Usernames Username',
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

		$criteria->compare('lang_name',$this->lang_name,true);
		$criteria->compare('lang',$this->lang,true);
		$criteria->compare('langen',$this->langen,true);
		$criteria->compare('dos_usernames_username',$this->dos_usernames_username,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
    //Front end - get all language
    public function getLangs(){
        $user = Yii::app()->session['subdomain'];
        $sql = 'SELECT lang_name, lang'.LANG.' FROM '.$this->tableName().' WHERE dos_usernames_username=:user';
        $command = Yii::app()->db->createCommand($sql);
        $command->bindParam(":user", $user, PDO::PARAM_STR);
        return $command->queryAll();
    }
}