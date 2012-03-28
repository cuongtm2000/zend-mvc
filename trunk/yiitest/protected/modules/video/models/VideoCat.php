<?php

/**
 * This is the model class for table "dos_module_video_cat".
 *
 * The followings are the available columns in table 'dos_module_video_cat':
 * @property integer $cat_id
 * @property integer $cat_parent_id
 * @property string $pic_thumb
 * @property string $cat_title
 * @property string $cat_titleen
 * @property string $tag
 * @property string $tagen
 * @property string $description
 * @property string $descriptionen
 * @property integer $cat_order
 * @property integer $cat_enable
 * @property string $dos_usernames_username
 *
 * The followings are the available model relations:
 * @property DosModuleVideo[] $dosModuleVideos
 * @property DosUsernames $dosUsernamesUsername
 */
class VideoCat extends CActiveRecord {
	private $_data;
	private $_rows;
	private $_rowsize;

	public static function model($className = __CLASS__) {
		return parent::model($className);
	}

	/**
	 * @return string the associated database table name
	 */
	public function tableName() {
		return 'dos_module_video_cat';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules() {
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('cat_title, tag, cat_order, dos_usernames_username', 'required'),
			array('cat_parent_id, cat_order, cat_enable', 'numerical', 'integerOnly' => true),
			array('pic_thumb, cat_title, cat_titleen, tag, tagen', 'length', 'max' => 100),
			array('description, descriptionen', 'length', 'max' => 250),
			array('dos_usernames_username', 'length', 'max' => 45),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('cat_id, cat_parent_id, pic_thumb, cat_title, cat_titleen, tag, tagen, description, descriptionen, cat_order, cat_enable, dos_usernames_username', 'safe', 'on' => 'search'),
		);
	}

	/**
	 * @return array relational rules.
	 */
	public function relations() {
		// NOTE: you may need to adjust the relation name and the related
		// class name for the relations automatically generated below.
		return array(
			'Videos' => array(self::HAS_MANY, 'Video', 'dos_module_item_cat_cat_id'),
			//'dosUsernamesUsername' => array(self::BELONGS_TO, 'DosUsernames', 'dos_usernames_username'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels() {
		return array(
			'cat_id' => 'Cat',
			'cat_parent_id' => 'Cat Parent',
			'pic_thumb' => 'Pic Thumb',
			'cat_title' => 'Cat Title',
			'cat_titleen' => 'Cat Titleen',
			'tag' => 'Tag',
			'tagen' => 'Tagen',
			'description' => 'Description',
			'descriptionen' => 'Descriptionen',
			'cat_order' => 'Cat Order',
			'cat_enable' => 'Cat Enable',
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

		$criteria->compare('cat_id', $this->cat_id);
		$criteria->compare('cat_parent_id', $this->cat_parent_id);
		$criteria->compare('pic_thumb', $this->pic_thumb, true);
		$criteria->compare('cat_title', $this->cat_title, true);
		$criteria->compare('cat_titleen', $this->cat_titleen, true);
		$criteria->compare('tag', $this->tag, true);
		$criteria->compare('tagen', $this->tagen, true);
		$criteria->compare('description', $this->description, true);
		$criteria->compare('descriptionen', $this->descriptionen, true);
		$criteria->compare('cat_order', $this->cat_order);
		$criteria->compare('cat_enable', $this->cat_enable);
		$criteria->compare('dos_usernames_username', $this->dos_usernames_username, true);

		return new CActiveDataProvider($this, array(
			'criteria' => $criteria,
		));
	}

	//Front end - List record for index
	public function listCats($cid = 0, $prefix = NULL, $type = 0, $id = 0) {
		if ($cid == 1) {
			$this->_data[] = array('cat_id' => 0, 'cat_title' => 'Root');
		}

		if ($type == 1) {
			//for admin
			if ($id != 0) {
				$command = Yii::app()->db->createCommand('SELECT cat_id, cat_parent_id, cat_title, tag, cat_enable FROM ' . $this->tableName() . ' WHERE cat_id != ' . $id . ' ORDER BY cat_order DESC');
			} else {
				$command = Yii::app()->db->createCommand('SELECT cat_id, cat_parent_id, cat_title, tag, cat_enable FROM ' . $this->tableName() . ' ORDER BY cat_order DESC');
			}
		} else {
			$command = Yii::app()->db->createCommand('SELECT cat_id, cat_parent_id, cat_title, tag, cat_enable FROM ' . $this->tableName() . ' WHERE cat_enable=1 ORDER BY cat_order DESC');
		}

		$this->_rows = $command->queryAll();
		$this->_rowsize = count($this->_rows);
		for ($i = 0; $i < $this->_rowsize; $i++) {
			if ($this->_rows[$i]['cat_parent_id'] == 0) {
				$this->_data[] = array('cat_id' => $this->_rows[$i]['cat_id'], 'tag' => $this->_rows[$i]['tag'], 'cat_title' => $prefix . $this->_rows[$i]['cat_title'], 'cat_enable' => $this->_rows[$i]['cat_enable']);
				$this->loopItem($i, $prefix);
			}
		}
		return $this->_data;
	}

	private function loopItem($i, $prefix, $tab = '|-- ') {
		for ($j = 0; $j < $this->_rowsize; $j++) {
			if ($this->_rows[$j]['cat_parent_id'] == $this->_rows[$i]['cat_id']) {
				$this->_data[] = array('cat_id' => $this->_rows[$j]['cat_id'], 'tag' => $this->_rows[$j]['tag'], 'cat_title' => $prefix . $tab . $this->_rows[$j]['cat_title'], 'cat_enable' => $this->_rows[$j]['cat_enable']);
				$this->loopItem($j, $prefix, $tab . '|-- ');
			}
		}
	}

	//Back end - Count item by user post
	public function countItemByUser() {
		$user = Yii::app()->user->id;
		$command = Yii::app()->db->createCommand('SELECT COUNT(cat_id) AS num FROM ' . $this->tableName() . ' WHERE dos_usernames_username=:user');
		$command->bindParam(":user", $user, PDO::PARAM_STR);
		return $command->queryScalar();
	}
}