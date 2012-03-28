<?php

/**
 * This is the model class for table "dos_module_video".
 *
 * The followings are the available columns in table 'dos_module_video':
 * @property integer $record_id
 * @property string $title
 * @property string $titleen
 * @property string $postdate
 * @property string $tag
 * @property string $tagen
 * @property string $description
 * @property string $descriptionen
 * @property string $pic_thumb
 * @property string $url
 * @property integer $record_order
 * @property integer $hits
 * @property string $extra_field1
 * @property string $extra_field2
 * @property integer $hot
 * @property integer $enable
 * @property integer $dos_module_item_cat_cat_id
 *
 * The followings are the available model relations:
 * @property DosModuleVideoCat $dosModuleItemCatCat
 */
class Video extends CActiveRecord {
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return Video the static model class
	 */
	public static function model($className = __CLASS__) {
		return parent::model($className);
	}

	/**
	 * @return string the associated database table name
	 */
	public function tableName() {
		return 'dos_module_video';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules() {
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('title, postdate, tag, url, record_order, dos_module_item_cat_cat_id', 'required'),
			array('record_order, hits, hot, enable, dos_module_item_cat_cat_id', 'numerical', 'integerOnly' => true),
			array('title, titleen, tag, tagen, pic_thumb, url', 'length', 'max' => 100),
			array('description, descriptionen', 'length', 'max' => 250),
			array('extra_field1, extra_field2', 'length', 'max' => 45),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('record_id, title, titleen, postdate, tag, tagen, description, descriptionen, pic_thumb, url, record_order, hits, extra_field1, extra_field2, hot, enable, dos_module_item_cat_cat_id', 'safe', 'on' => 'search'),
		);
	}

	/**
	 * @return array relational rules.
	 */
	public function relations() {
		// NOTE: you may need to adjust the relation name and the related
		// class name for the relations automatically generated below.
		return array(
			'VideoCat' => array(self::BELONGS_TO, 'VideoCat', 'dos_module_item_cat_cat_id'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels() {
		return array(
			'record_id' => 'Record',
			'title' => 'Title',
			'titleen' => 'Titleen',
			'postdate' => 'Postdate',
			'tag' => 'Tag',
			'tagen' => 'Tagen',
			'description' => 'Description',
			'descriptionen' => 'Descriptionen',
			'pic_thumb' => 'Pic Thumb',
			'url' => 'Url',
			'record_order' => 'Record Order',
			'hits' => 'Hits',
			'extra_field1' => 'Extra Field1',
			'extra_field2' => 'Extra Field2',
			'hot' => 'Hot',
			'enable' => 'Enable',
			'dos_module_item_cat_cat_id' => 'Dos Module Item Cat Cat',
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

		$criteria->compare('record_id', $this->record_id);
		$criteria->compare('title', $this->title, true);
		$criteria->compare('titleen', $this->titleen, true);
		$criteria->compare('postdate', $this->postdate, true);
		$criteria->compare('tag', $this->tag, true);
		$criteria->compare('tagen', $this->tagen, true);
		$criteria->compare('description', $this->description, true);
		$criteria->compare('descriptionen', $this->descriptionen, true);
		$criteria->compare('pic_thumb', $this->pic_thumb, true);
		$criteria->compare('url', $this->url, true);
		$criteria->compare('record_order', $this->record_order);
		$criteria->compare('hits', $this->hits);
		$criteria->compare('extra_field1', $this->extra_field1, true);
		$criteria->compare('extra_field2', $this->extra_field2, true);
		$criteria->compare('hot', $this->hot);
		$criteria->compare('enable', $this->enable);
		$criteria->compare('dos_module_item_cat_cat_id', $this->dos_module_item_cat_cat_id);

		return new CActiveDataProvider($this, array(
			'criteria' => $criteria,
		));
	}
	//Back end - Count item by user post
	public function countItemByUser() {
		$user = Yii::app()->user->id;
		$command = Yii::app()->db->createCommand('SELECT COUNT(record_id) AS num FROM ' . $this->tableName() . ', ' . $this->tableName() . '_cat WHERE ' . $this->tableName() . '.dos_module_item_cat_cat_id = ' . $this->tableName() . '_cat.cat_id AND dos_usernames_username=:user');
		$command->bindParam(":user", $user, PDO::PARAM_STR);
		return $command->queryScalar();
	}
}