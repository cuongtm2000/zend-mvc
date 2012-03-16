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
 * @property string $description
 * @property integer $cat_order
 * @property integer $cat_enable
 *
 * The followings are the available model relations:
 * @property DosModuleVideo[] $dosModuleVideos
 */
class VideoCat extends CActiveRecord {
	private $_oldImage_thumb;
	public $remove_pic_thumb;

	private $_model;

	private $_data;
	private $_rows;
	private $_rowsize;

	private $_sub_cat_num = 0;
	private $_sub_num_item = 0;

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
			array('cat_title, tag', 'required'),
			array('cat_parent_id, cat_order, cat_enable', 'numerical', 'integerOnly' => true),
			array('pic_thumb, cat_title, cat_titleen, tag', 'length', 'max' => 100),
			array('tag', 'unique'),
			array('description', 'length', 'max' => 250),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('cat_id, cat_parent_id, pic_thumb, cat_title, cat_titleen, tag, description, cat_order, cat_enable', 'safe', 'on' => 'search'),
		);
	}

	/**
	 * @return array relational rules.
	 */
	public function relations() {
		// NOTE: you may need to adjust the relation name and the related
		// class name for the relations automatically generated below.
		return array(
			//'dosModuleVideos' => array(self::HAS_MANY, 'DosModuleVideo', 'dos_module_item_cat_cat_id'),
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
			'description' => 'Description',
			'cat_order' => 'Cat Order',
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
		$criteria->compare('pic_thumb', $this->pic_thumb, true);
		$criteria->compare('cat_title', $this->cat_title, true);
		$criteria->compare('cat_titleen', $this->cat_titleen, true);
		$criteria->compare('tag', $this->tag, true);
		$criteria->compare('description', $this->description, true);
		$criteria->compare('cat_order', $this->cat_order);
		$criteria->compare('cat_enable', $this->cat_enable);

		return new CActiveDataProvider($this, array(
			'criteria' => $criteria,
		));
	}

	public function afterFind() {
		parent::afterFind();
		$this->_oldImage_thumb = $this->pic_thumb;
	}

	public function beforeSave() {
		$purifier = new CHtmlPurifier();
		$this->cat_title = $purifier->purify($this->cat_title);
		$this->tag = $purifier->purify($this->tag);
		$this->description = $purifier->purify($this->description);

		if ($this->isNewRecord) {
			$this->cat_order = $this->maxRecordOrder();
			if ($_FILES[__CLASS__]['name']['pic_thumb']) {
				$width = Configs::configTemplate(Yii::app()->controller->id . '_cat_width_thumb', Yii::app()->params['template']);
				$height = Configs::configTemplate(Yii::app()->controller->id . '_cat_height_thumb', Yii::app()->params['template']);

				Yii::import('ext.EUploadedImage.EUploadedImage');
				$this->pic_thumb = EUploadedImage::getInstance($this, 'pic_thumb')->processUpload($width, $height, USERFILES . '/' . Yii::app()->controller->id . 'Cat', $this->cat_title);
			}
		} else {
			//check file old and upload
			if ($_FILES[__CLASS__]['name']['pic_thumb']) {
				$width = Configs::configTemplate(Yii::app()->controller->id . '_cat_width_thumb', Yii::app()->params['template']);
				$height = Configs::configTemplate(Yii::app()->controller->id . '_cat_height_thumb', Yii::app()->params['template']);

				Yii::import('ext.EUploadedImage.EUploadedImage');
				$this->pic_thumb = EUploadedImage::getInstance($this, 'pic_thumb')->processUpload($width, $height, USERFILES . '/' . Yii::app()->controller->id . 'Cat', $this->cat_title, $this->_oldImage_thumb);
			} else {
				//remove picthumb
				if (isset($_POST[__CLASS__]['remove_pic_thumb']) && $_POST[__CLASS__]['remove_pic_thumb'] == 1) {
					$common_class = new Common();
					$common_class->removePic($this->_oldImage_thumb, 0, 1);
					$this->pic_thumb = '';
				} else {
					$this->pic_thumb = $this->_oldImage_thumb;
				}
			}
		}

		return parent::beforeSave();
	}

	/**
	 * Function tìm tag bởi cat_id
	 * @param $tag
	 * @return mixed
	 */
	public function findCatByTag($tag) {
		$command = Yii::app()->db->createCommand('SELECT cat_id, cat_title, tag FROM ' . $this->tableName() . ' WHERE tag=:tag');
		$command->bindParam(':tag', $tag, PDO::PARAM_STR);
		return $command->queryRow();
	}

	/**
	 * Function dùng để lấy Danh sách Danh mục, nếu có $cid truyền vào lấy cat_parent_id=$cid, nguoc lại lấy hết
	 * @param null $cid
	 * @return mixed
	 */
	public function listItem($cid = NULL) {
		if (isset($cid)) {
			$command = Yii::app()->db->createCommand('SELECT cat_id, cat_parent_id, cat_title, tag, pic_thumb FROM ' . $this->tableName() . ' WHERE cat_parent_id=' . $cid . ' AND cat_enable=1 ORDER BY cat_order DESC');
		} else {
			$command = Yii::app()->db->createCommand('SELECT cat_id, cat_parent_id, cat_title, tag, pic_thumb FROM ' . $this->tableName() . ' WHERE cat_enable=1 ORDER BY cat_order DESC');
		}
		return $command->queryAll();
	}

	/**
	 * @param int $cid - thêm Root vào đầu tiên select option
	 * @param null $prefix - ký tự "|--"
	 * @param int $type - dùng cho admin (1: admin, 0: non-admin)
	 * @param int $id - dùng cho Edit, Delete không chứa id này
	 * @return mixed
	 */
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

	/**
	 * @param $i
	 * @param $prefix
	 * @param string $tab
	 */
	private function loopItem($i, $prefix, $tab = '|-- ') {
		for ($j = 0; $j < $this->_rowsize; $j++) {
			if ($this->_rows[$j]['cat_parent_id'] == $this->_rows[$i]['cat_id']) {
				$this->_data[] = array('cat_id' => $this->_rows[$j]['cat_id'], 'tag' => $this->_rows[$j]['tag'], 'cat_title' => $prefix . $tab . $this->_rows[$j]['cat_title'], 'cat_enable' => $this->_rows[$j]['cat_enable']);
				$this->loopItem($j, $prefix, $tab . '|-- ');
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

	/**
	 * Function dùng cho Sys, show, hidden
	 * @param $data - Dữ liệu submit từ user
	 */
	public function activeItem($data) {
		$flag = $data->getPost('factive', 'disable');
		$ids = $data->getPost('ids', '');
		$syn = $data->getPost('syn', '');

		if ($syn) {
			$criteria = new CDbCriteria();
			$criteria->order = 'cat_order ASC';

			$models = CActiveRecord::model(__CLASS__)->findAll($criteria);

			$i = 1;
			foreach ($models as $model) {
				CActiveRecord::model(__CLASS__)->updateByPk($model['cat_id'], array('cat_order' => $i));
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

	//Back end - Get cat_parent_id, cat_order
	public function getCatParent_CatOrder($cid) {
		$command = Yii::app()->db->createCommand('SELECT cat_parent_id, cat_order FROM ' . $this->tableName() . ' WHERE cat_id=:cid');
		$command->bindParam(":cid", $cid, PDO::PARAM_INT);
		return $command->queryRow();
	}

	// Back end - Get cat_id, cat_order Next
	public function getCatid_CatOrder_Next($cid, $order) {
		$command = Yii::app()->db->createCommand('SELECT cat_id, cat_order FROM ' . $this->tableName() . ' WHERE cat_parent_id=:cid AND cat_order>:order ORDER BY cat_order ASC');
		$command->bindParam(":cid", $cid, PDO::PARAM_INT);
		$command->bindParam(":order", $order, PDO::PARAM_INT);
		return $command->queryRow();
	}

	// Back end - Get cat_id, cat_order Previous
	public function getCatid_CatOrder_Previous($cid, $order) {
		$command = Yii::app()->db->createCommand('SELECT cat_id, cat_order FROM ' . $this->tableName() . ' WHERE cat_parent_id=:cid AND cat_order<:order ORDER BY cat_order DESC');
		$command->bindParam(":cid", $cid, PDO::PARAM_INT);
		$command->bindParam(":order", $order, PDO::PARAM_INT);
		return $command->queryRow();
	}

	// Back end - Update for up, down
	public function updateUpDown($cat_info, $next_info, $cid) {
		$command = Yii::app()->db->createCommand('UPDATE ' . $this->tableName() . ' SET cat_order=:order WHERE cat_id=:id');
		$command->bindParam(":order", $next_info['cat_order'], PDO::PARAM_INT);
		$command->bindParam(":id", $cid, PDO::PARAM_INT);
		$command->execute();

		$command = Yii::app()->db->createCommand('UPDATE ' . $this->tableName() . ' SET cat_order=:order WHERE cat_id=:id');
		$command->bindParam(":order", $cat_info['cat_order'], PDO::PARAM_INT);
		$command->bindParam(":id", $next_info['cat_id'], PDO::PARAM_INT);
		$command->execute();
	}

	/**
	 * Function dùng để tính số thứ tự lớn nhất, dùng cho Add Danh mục
	 * @return mixed
	 */
	private function maxRecordOrder() {
		$command = Yii::app()->db->createCommand('SELECT max(cat_order) AS max FROM ' . $this->tableName());
		return $command->queryScalar() + 1;
	}

	/**
	 * @param $id
	 * @return mixed
	 * @throws CHttpException
	 */
	public function loadEdit($id) {
		$criteria = new CDbCriteria();

		$this->_model = CActiveRecord::model(__CLASS__)->findByPk($id, $criteria);

		if ($this->_model === null) {
			throw new CHttpException(404, 'The requested page does not exist.');
		}
		return $this->_model;
	}

	/**
	 * Function dùng để đếm sản phẩm cho Danh mục dùng cho hành động Delete
	 * @param $id
	 * @return mixed
	 */
	private function countItembyCat($id) {
		$model = ucfirst(Yii::app()->controller->id);
		$items = new $model();
		return $items->countItemByCat($id);
	}

	/**
	 * Function dùng để lấy thông tin Danh mục cho hành động Delete Danh mục
	 * @param $id
	 * @return mixed
	 */
	public function getInfoCat($id) {
		$command = Yii::app()->db->createCommand('SELECT cat_title FROM ' . $this->tableName() . ' WHERE cat_id=:id');
		$command->bindParam(":id", $id, PDO::PARAM_INT);
		return $command->queryScalar();
	}

	/**
	 * Function dùng để điếm sản phẩm của Danh mục cho hành động Delete Danh mục
	 * @param $id
	 * @return mixed
	 */
	public function countItemCat($id) {
		$command = Yii::app()->db->createCommand('SELECT COUNT(record_id) AS numcat FROM ' . $this->tableName() . ', dos_module_news WHERE ' . $this->tableName() . '.cat_id=dos_module_news.dos_module_item_cat_cat_id AND cat_id=:id');
		$command->bindParam(":id", $id, PDO::PARAM_INT);
		return $command->queryScalar();
	}

	/**
	 * Function dùng để đếm số Danh mục con cho hành động Delete Danh mục
	 * @param $id
	 * @return array
	 */
	public function countSubcat($id) {
		$this->loopCat($id);
		return array('sub_cat_num' => $this->_sub_cat_num, 'sub_num_item' => $this->_sub_num_item);
	}

	/**
	 * Function vòng lặp dòng để đếm số danh mục cho hành động Delete Danh mục
	 * @param $id
	 */
	private function loopCat($id) {
		$command = Yii::app()->db->createCommand('SELECT cat_id FROM ' . $this->tableName() . ' WHERE cat_parent_id=:id');
		$command->bindParam(":id", $id, PDO::PARAM_INT);
		$result = $command->queryAll();

		foreach ($result as $value) {
			$this->_sub_cat_num++;
			$this->_sub_num_item += $this->countItembyCat($value['cat_id']);
			$this->loopCat($value['cat_id']);
		}
	}

	/**
	 * Function dùng để Xóa tất cả item của phân loại con cho hành động Delete Danh mục
	 * @param $cat_id
	 */
	public function loopDelItemtoCat($cat_id) {
		$command = Yii::app()->db->createCommand('SELECT cat_id FROM ' . $this->tableName() . ' WHERE cat_parent_id=:id');
		$command->bindParam(":id", $cat_id, PDO::PARAM_INT);
		$result = $command->queryAll();

		$model = ucfirst(Yii::app()->controller->id);
		$items = new $model();
		foreach ($result as $value) {
			//update dos_module_item_cat_cat_id
			$items->deleteItembyCat($value['cat_id']);
			$this->loopDelItemtoCat($value['cat_id']);
		}
	}

	//xóa phân loại con
	public function loopDelSubCat($cat_id) {
		$command = Yii::app()->db->createCommand('SELECT cat_id FROM ' . $this->tableName() . ' WHERE cat_parent_id=:cid');
		$command->bindParam(":cid", $cat_id, PDO::PARAM_INT);
		$result = $command->queryAll();

		foreach ($result as $value) {
			$this->deleteRecord($value['cat_id']);
			$this->loopDelSubCat($value['cat_id']);
		}
	}

	//Back end - Delete Record
	public function deleteRecord($id) {
		$item = CActiveRecord::model(__CLASS__)->find('cat_id=:id', array(':id' => $id));
		$path = YiiBase::getPathOfAlias('webroot') . USERFILES . '/' . Yii::app()->controller->id . 'Cat/';
		//Del pic_full field
		if (($item->pic_thumb)) {
			if (file_exists($path . $item->pic_thumb)) {
				unlink($path . $item->pic_thumb);
			}
		}
		CActiveRecord::model(__CLASS__)->findByPk($id)->delete(); //delete record
	}

	//Back end - find Cat parent
	public function findcatParent($cat_id, $cat_parent_id) {
		$command = Yii::app()->db->createCommand('SELECT cat_id FROM ' . $this->tableName() . ' WHERE cat_parent_id=:id');
		$command->bindParam(":id", $cat_id, PDO::PARAM_INT);
		$result = $command->queryAll();

		foreach ($result as $value) {
			$command = Yii::app()->db->createCommand('UPDATE ' . $this->tableName() . ' SET cat_parent_id=:cat_parent_id WHERE cat_id=:cid');
			$command->bindParam(":cat_parent_id", $cat_parent_id, PDO::PARAM_INT);
			$command->bindParam(":cid", $value['cat_id'], PDO::PARAM_INT);
			$command->execute();
		}
	}

	//Di chuyển tất cả item của phân loại con đến phân loại:
	public function loopMoveItemtoCat($cat_id, $cat_id_new) {
		$command = Yii::app()->db->createCommand('SELECT cat_id FROM ' . $this->tableName() . ' WHERE cat_parent_id=:id');
		$command->bindParam(":id", $cat_id, PDO::PARAM_INT);
		$result = $command->queryAll();

		$model = ucfirst(Yii::app()->controller->id);
		$items = new $model();
		foreach ($result as $value) {
			//update dos_module_product_cat_cat_id
			$items->updateItem($value['cat_id'], $cat_id_new);
			$this->loopMoveItemtoCat($value['cat_id'], $cat_id_new);
		}
	}
}