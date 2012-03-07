<?php

/**
 * This is the model class for table "dos_module_products_cat".
 *
 * The followings are the available columns in table 'dos_module_products_cat':
 * @property integer $cat_id
 * @property integer $cat_parent_id
 * @property string $cat_title
 * @property string $cat_titleen
 * @property string $preview
 * @property string $previewen
 * @property string $tag
 * @property string $description
 * @property string $pic_full
 * @property string $pic_desc
 * @property integer $cat_order
 * @property string $cat_extra1
 * @property string $cat_extra2
 * @property integer $cat_enable
 *
 * The followings are the available model relations:
 * @property Products[] $products
 */
class ProductsCat extends CActiveRecord {
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
		return 'dos_module_products_cat';
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
			array('pic_desc', 'length', 'max' => 200),
			array('cat_extra1, cat_extra2', 'length', 'max' => 45),
			array('preview, previewen', 'safe'),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('cat_id, cat_parent_id, cat_title, cat_titleen, preview, previewen, tag, description, pic_full, pic_desc, cat_order, cat_extra1, cat_extra2, cat_enable', 'safe', 'on' => 'search'),
		);
	}

	/**
	 * @return array relational rules.
	 */
	public function relations() {
		// NOTE: you may need to adjust the relation name and the related
		// class name for the relations automatically generated below.
		return array(
			'products' => array(self::HAS_MANY, 'Products', 'dos_module_item_cat_cat_id'),
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
			'pic_desc' => 'Pic Desc',
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
		$criteria->compare('pic_desc', $this->pic_desc, true);
		$criteria->compare('cat_order', $this->cat_order);
		$criteria->compare('cat_extra1', $this->cat_extra1, true);
		$criteria->compare('cat_extra2', $this->cat_extra2, true);
		$criteria->compare('cat_enable', $this->cat_enable);

		return new CActiveDataProvider($this, array(
			'criteria' => $criteria,
		));
	}

	//Front end - List record for index
	public function listCats() {
		$command = Yii::app()->db->createCommand('SELECT cat_id, cat_parent_id, cat_title, tag FROM ' . $this->tableName() . ' WHERE cat_enable=1');
		$this->_rows = $command->queryAll();
		$this->_rowsize = count($this->_rows);
		for ($i = 0; $i < $this->_rowsize; $i++) {
			if ($this->_rows[$i]['cat_parent_id'] == 0) {
				$this->_data[] = array('tag' => $this->_rows[$i]['tag'], 'cat_title' => $this->_rows[$i]['cat_title']);
				$this->loopItem($i);
			}
		}
		return $this->_data;
	}

	private function loopItem($i, $tab = '|-- ') {
		for ($j = 0; $j < $this->_rowsize; $j++) {
			if ($this->_rows[$j]['cat_parent_id'] == $this->_rows[$i]['cat_id']) {
				$this->_data[] = array('tag' => $this->_rows[$j]['tag'], 'cat_title' => $tab . $this->_rows[$j]['cat_title']);
				$this->loopItem($j, $tab . '|-- ');
			}
		}
	}
}