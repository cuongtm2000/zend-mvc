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

	private $_cat_data;
	private $_sub_cat_data;
	private $_sortcat_count = 0;

	private $_model;
	private $_oldImage_full;

	//private $_sub_cat_num = 0;
	//private $_sub_num_item = 0;

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

	public function afterFind() {
		parent::afterFind();
		$this->_oldImage_full = $this->pic_full;
	}

	public function beforeSave() {
		$purifier = new CHtmlPurifier();
		$this->cat_title = $purifier->purify($this->cat_title);
		$this->tag = $purifier->purify($this->tag);
		$this->description = $purifier->purify($this->description);

		if ($this->isNewRecord) {
			$this->cat_order = $this->maxRecordOrder();
			$this->dos_usernames_username = Yii::app()->user->id;
			if ($_FILES['ProductsCat']['name']['pic_full']) {
				Yii::import('ext.EUploadedImage.EUploadedImage');
				$this->pic_full = EUploadedImage::getInstance($this, 'pic_full')->processUpload(143, 141, USERFILES . '/productsCat', $this->cat_title);
			}
		} else {
			//check file old and upload
			if ($_FILES['ProductsCat']['name']['pic_full']) {
				Yii::import('ext.EUploadedImage.EUploadedImage');
				$this->pic_full = EUploadedImage::getInstance($this, 'pic_full')->processUpload(143, 141, USERFILES . '/productsCat', $this->cat_title, $this->_oldImage_full);
			} else {
				$this->pic_full = $this->_oldImage_full;
			}
		}

		return parent::beforeSave();
	}

	//Front end - List record for index
	public function listCats($cid = 0, $prefix = NULL) {
		if ($cid == 1) {
			$this->_data[] = array('cat_id' => 0, 'cat_title' => 'Root');
		}

		$command = Yii::app()->db->createCommand('SELECT cat_id, cat_parent_id, cat_title, tag FROM ' . $this->tableName() . ' WHERE cat_enable=1');
		$this->_rows = $command->queryAll();
		$this->_rowsize = count($this->_rows);
		for ($i = 0; $i < $this->_rowsize; $i++) {
			if ($this->_rows[$i]['cat_parent_id'] == 0) {
				$this->_data[] = array('cat_id' => $this->_rows[$i]['cat_id'], 'tag' => $this->_rows[$i]['tag'], 'cat_title' => $prefix . $this->_rows[$i]['cat_title']);
				$this->loopItem($i, $prefix);
			}
		}
		return $this->_data;
	}

	private function loopItem($i, $prefix, $tab = '|-- ') {
		for ($j = 0; $j < $this->_rowsize; $j++) {
			if ($this->_rows[$j]['cat_parent_id'] == $this->_rows[$i]['cat_id']) {
				$this->_data[] = array('cat_id' => $this->_rows[$j]['cat_id'], 'tag' => $this->_rows[$j]['tag'], 'cat_title' => $prefix . $tab . $this->_rows[$j]['cat_title']);
				$this->loopItem($j, $prefix, $tab . '|-- ');
			}
		}
	}

	public function listItemAdmin($cid = 0) {
		$criteria = new CDbCriteria();
		$criteria->order = 'cat_order DESC';
		$count = ProductsCat::model()->count($criteria);

		$this->_cat_data = ProductsCat::model()->findAll($criteria);
		$this->listSubItem($cid);

		return array('models' => $this->_sub_cat_data);
	}

	private function listSubItem($cid = 0, $getall = 1, $parent_id = 0, $level = 1, $str = '', $parent_enabled = 1) {
		$cat_level = 2;
		$prefix = ($cat_level > 1) ? '|-- ' : '';
		foreach ($this->_cat_data as $value) {
			if (($value->cat_parent_id == $parent_id) && ($cid != $value->cat_id)) {
				$this->_sub_cat_data[$this->_sortcat_count]['cat_id'] = $value->cat_id;
				$this->_sub_cat_data[$this->_sortcat_count]['cat_title'] = $value->cat_title;
				$this->_sub_cat_data[$this->_sortcat_count]['title_prefix'] = $str . $prefix;

				if (!$parent_enabled || !$value->cat_enable) {
					$cat_enabled = 0;
				} else {
					$cat_enabled = 1;
				}

				$this->_sub_cat_data[$this->_sortcat_count]['cat_enable'] = $cat_enabled;
				$this->_sortcat_count++;

				if ($getall || ($level < $cat_level - 1)) {
					$str2 = $str . "&nbsp; &nbsp; &nbsp;";
					$this->listSubItem($cid, $getall, $value->cat_id, $level + 1, $str2, $cat_enabled);
				}
			}
		}
	}

	//Back end - Update Record
	private function updateShowHidden($activated, $id) {
		$command = Yii::app()->db->createCommand('UPDATE ' . $this->tableName() . ' SET cat_enable=:activated WHERE cat_id=:id');
		$command->bindParam(":activated", $activated, PDO::PARAM_INT);
		$command->bindParam(":id", $id, PDO::PARAM_INT);
		return $command->execute();
	}

	//Back end - Active Item
	public function activeItem($data) {
		$flag = $data->getPost('factive', 'disable');
		$ids = $data->getPost('ids', '');
		$syn = $data->getPost('syn', '');

		if ($syn) {
			$criteria = new CDbCriteria();
			$criteria->order = 'cat_order ASC';

			$models = ProductsCat::model()->findAll($criteria);

			$i = 1;
			foreach ($models as $model) {
				ProductsCat::model()->updateByPk($model['cat_id'], array('cat_order' => $i));
				$i++;
			}
		} else {
			if (!empty($ids)) {
				if (!is_array($ids)) {
					$record_id[0] = $ids;
				} else {
					$record_id = $ids;
				}
				unset($ids);

				if ($flag) {
					//show or hidden
					$active = ($flag == "enable") ? 1 : 0;

					foreach ($record_id as $value) {
						$id = intval($value);
						if ($id) {
							$this->updateShowHidden($active, $id);
						}
					}
				}
			}
		}
	}

	//Back end - Get max record
	private function maxRecordOrder() {
		$command = Yii::app()->db->createCommand('SELECT max(cat_order) AS max FROM ' . $this->tableName());
		return $command->queryScalar() + 1;
	}

	//Back end - Get record to Edit
	public function loadEdit($id) {
		$criteria = new CDbCriteria();

		$this->_model = ProductsCat::model()->findByPk($id, $criteria);

		if ($this->_model === null) {
			throw new CHttpException(404, 'The requested page does not exist.');
		}
		return $this->_model;
	}
}