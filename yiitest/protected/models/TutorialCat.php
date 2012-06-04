<?php

/**
 * This is the model class for table "dos_sys_tutorial_cat".
 *
 * The followings are the available columns in table 'dos_sys_tutorial_cat':
 * @property integer $cat_id
 * @property integer $cat_parent_id
 * @property string $cat_title
 * @property string $cat_titleen
 * @property string $preview
 * @property string $previewen
 * @property string $tag
 * @property string $description
 * @property string $pic_full
 * @property integer $cat_order
 * @property string $cat_extra1
 * @property string $cat_extra2
 * @property integer $cat_enable
 *
 * The followings are the available model relations:
 * @property DosSysTutorial[] $dosSysTutorial
 */
class TutorialCat extends CActiveRecord {
	private $_data;
	private $_rows;
	private $_rowsize;

	private $_cat_data; //coi lai 3 dong nay
	private $_sub_cat_data;
	private $_sortcat_count = 0;

	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return TutorialCat the static model class
	 */
	public static function model($className = __CLASS__) {
		return parent::model($className);
	}

	/**
	 * @return string the associated database table name
	 */
	public function tableName() {
		return 'dos_sys_tutorial_cat';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules() {
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('cat_title, tag, description, cat_order', 'required'),
			array('cat_parent_id, cat_order, cat_enable', 'numerical', 'integerOnly' => true),
			array('cat_title, cat_titleen, tag, pic_full', 'length', 'max' => 100),
			array('description', 'length', 'max' => 250),
			array('cat_extra1, cat_extra2', 'length', 'max' => 45),
			array('preview, previewen', 'safe'),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('cat_id, cat_parent_id, cat_title, cat_titleen, preview, previewen, tag, description, pic_full, cat_order, cat_extra1, cat_extra2, cat_enable', 'safe', 'on' => 'search'),
		);
	}

	/**
	 * @return array relational rules.
	 */
	public function relations() {
		// NOTE: you may need to adjust the relation name and the related
		// class name for the relations automatically generated below.
		return array(
			//'dosSysArticles' => array(self::HAS_MANY, 'DosSysArticles', 'dos_module_item_cat_cat_id'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels() {
		return array(
			'cat_id' => 'Cat',
			'cat_parent_id' => 'Cat Parent',
			'cat_title' => 'Cat Title',
			'cat_titleen' => 'Cat Titleen',
			'preview' => 'Preview',
			'previewen' => 'Previewen',
			'tag' => 'Tag',
			'description' => 'Description',
			'pic_full' => 'Pic Full',
			'cat_order' => 'Cat Order',
			'cat_extra1' => 'Cat Extra1',
			'cat_extra2' => 'Cat Extra2',
			'cat_enable' => 'Cat Enable',
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
		$criteria->compare('cat_title', $this->cat_title, true);
		$criteria->compare('cat_titleen', $this->cat_titleen, true);
		$criteria->compare('preview', $this->preview, true);
		$criteria->compare('previewen', $this->previewen, true);
		$criteria->compare('tag', $this->tag, true);
		$criteria->compare('description', $this->description, true);
		$criteria->compare('pic_full', $this->pic_full, true);
		$criteria->compare('cat_order', $this->cat_order);
		$criteria->compare('cat_extra1', $this->cat_extra1, true);
		$criteria->compare('cat_extra2', $this->cat_extra2, true);
		$criteria->compare('cat_enable', $this->cat_enable);

		return new CActiveDataProvider($this, array(
			'criteria' => $criteria,
		));
	}

	//Front end - Get info cat
	public function infoCat($tag) {
		$command = Yii::app()->db->createCommand('SELECT cat_title, description FROM ' . $this->tableName() . ' WHERE tag=:tag');
		$command->bindParam(":tag", $tag, PDO::PARAM_STR);
		return $command->queryRow();
	}

	//Front end - List record for index
	public function listCats() {
		$command = Yii::app()->db->createCommand('SELECT cat_id, cat_parent_id, cat_title' . Yii::app()->session['lang'] . ', tag FROM ' . $this->tableName());
		$this->_rows = $command->queryAll();
		$this->_rowsize = count($this->_rows);
		for ($i = 0; $i < $this->_rowsize; $i++) {
			if ($this->_rows[$i]['cat_parent_id'] == 0) {
				$this->_data[] = array('tag' => $this->_rows[$i]['tag'], 'cat_title'.Yii::app()->session['lang'] => $this->_rows[$i]['cat_title'.Yii::app()->session['lang']]);
				$this->loopItem($i);
			}
		}
		return $this->_data;
	}

	private function loopItem($i, $tab = '|-- ') {
		for ($j = 0; $j < $this->_rowsize; $j++) {
			if ($this->_rows[$j]['cat_parent_id'] == $this->_rows[$i]['cat_id']) {
				$this->_data[] = array('tag' => $this->_rows[$j]['tag'], 'cat_title'.Yii::app()->session['lang'] => $tab . $this->_rows[$j]['cat_title'.Yii::app()->session['lang']]);
				$this->loopItem($j, $tab . '|-- ');
			}
		}
	}

	//Back end - List item for Add Edit - coi lai cai nay, co the toi uu
	public function listItemAdminAction($cat = 0) {
		$criteria = new CDbCriteria();
		$criteria->order = 'cat_order DESC';

		$this->_cat_data = TutorialCat::model()->findAll($criteria);

		if ($cat == 1) {
			$this->_sub_cat_data[0]['cat_id'] = 0;
			$this->_sub_cat_data[0]['cat_title'] = 'Root';
			$this->_sortcat_count++;
		}

		$this->listSubItemAction();
		return $this->_sub_cat_data;
	}

	//Back end - List sub item for Add Edit
	private function listSubItemAction($cid = 0, $getall = 1, $parent_id = 0, $level = 1, $str = '') {
		$cat_level = 2;
		$prefix = ($cat_level > 1) ? '|-- ' : '';
		foreach ($this->_cat_data as $value) {
			if (($value->cat_parent_id == $parent_id) && ($cid != $value->cat_id)) {
				$this->_sub_cat_data[$this->_sortcat_count]['cat_id'] = $value->cat_id;
				$this->_sub_cat_data[$this->_sortcat_count]['cat_title'] = $str . $prefix . $value->cat_title;

				$this->_sortcat_count++;
				if ($getall || ($level < $cat_level - 1)) {
					$str2 = $str . "|-- ";
					$this->listSubItemAction($cid, $getall, $value->cat_id, $level + 1, $str2);
				}
			}
		}
	}
}