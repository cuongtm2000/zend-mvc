<?php

/**
 * This is the model class for table "dos_module_menus".
 *
 * The followings are the available columns in table 'dos_module_menus':
 * @property string $menu
 * @property string $menuen
 * @property string $url
 * @property string $target
 * @property integer $position
 * @property string $dos_usernames_username
 *
 * The followings are the available model relations:
 * @property DosUsernames $dosUsernamesUsername
 */
class ModuleMenu extends CActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * @return ModuleMenu the static model class
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
		return 'dos_module_menus';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('menu, dos_usernames_username', 'required'),
			array('position', 'numerical', 'integerOnly'=>true),
			array('menu, menuen', 'length', 'max'=>50),
			array('url', 'length', 'max'=>100),
			array('target', 'length', 'max'=>20),
			array('dos_usernames_username', 'length', 'max'=>45),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('menu, menuen, url, target, position, dos_usernames_username', 'safe', 'on'=>'search'),
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
			'menu' => 'Menu',
			'menuen' => 'Menuen',
			'url' => 'Url',
			'target' => 'Target',
			'position' => 'Position',
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

		$criteria->compare('menu',$this->menu,true);
		$criteria->compare('menuen',$this->menuen,true);
		$criteria->compare('url',$this->url,true);
		$criteria->compare('target',$this->target,true);
		$criteria->compare('position',$this->position);
		$criteria->compare('dos_usernames_username',$this->dos_usernames_username,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
	public function setMenu($user){
		$sql = 'SELECT menu'.LANG.', url, target FROM '.$this->tableName().' WHERE dos_usernames_username=:user ORDER BY position ASC';
        $command = Yii::app()->db->createCommand($sql);
        $command->bindParam(":user", $user, PDO::PARAM_STR);
        
		return $command->queryAll();
	}
}