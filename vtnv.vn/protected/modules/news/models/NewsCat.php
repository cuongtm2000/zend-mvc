<?php

/**
 * This is the model class for table "dos_module_news_cat".
 *
 * The followings are the available columns in table 'dos_module_news_cat':
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
 * @property DosModuleNews[] $dosModuleNews
 */
class NewsCat extends CActiveRecord {
	private $_data;
	private $_rows;
	private $_rowsize;

	private $_model;
	private $_oldImage_full;

	private $_sub_cat_num = 0;
	private $_sub_num_item = 0;

	public static function model($className = __CLASS__) {
		return parent::model($className);
	}

	public function tableName() {
		return 'dos_module_news_cat';
	}

	public function rules() {
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('cat_title, tag, description', 'required'),
			array('cat_parent_id, cat_order, cat_enable', 'numerical', 'integerOnly' => true),
			array('cat_title, cat_titleen, tag, pic_full', 'length', 'max' => 100),
			array('tag', 'unique'),
			array('description', 'length', 'max' => 250),
			array('cat_extra1, cat_extra2', 'length', 'max' => 45),
			array('preview, previewen', 'safe'),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('cat_id, cat_parent_id, cat_title, cat_titleen, preview, previewen, tag, description, pic_full, cat_order, cat_extra1, cat_extra2, cat_enable', 'safe', 'on' => 'search'),
		);
	}

	public function relations() {
		// NOTE: you may need to adjust the relation name and the related
		// class name for the relations automatically generated below.
		return array(
			//'NewsCount'=>array(self::STAT, 'News', 'dos_module_item_cat_cat_id'),
			//'News' => array(self::HAS_MANY, 'News', 'dos_module_item_cat_cat_id'),
		);
	}

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
			if ($_FILES['NewsCat']['name']['pic_full']) {
				$width = Configs::configTemplate('news_cat_width', Yii::app()->params['template']);
				$height = Configs::configTemplate('news_cat_height', Yii::app()->params['template']);

				Yii::import('ext.EUploadedImage.EUploadedImage');
				$this->pic_full = EUploadedImage::getInstance($this, 'pic_full')->processUpload($width, $height, USERFILES . '/newsCat', $this->cat_title);
			}
		} else {
			//check file old and upload
			if ($_FILES['NewsCat']['name']['pic_full']) {
				$width = Configs::configTemplate('news_cat_width', Yii::app()->params['template']);
				$height = Configs::configTemplate('news_cat_height', Yii::app()->params['template']);

				Yii::import('ext.EUploadedImage.EUploadedImage');
				$this->pic_full = EUploadedImage::getInstance($this, 'pic_full')->processUpload($width, $height, USERFILES . '/newsCat', $this->cat_title, $this->_oldImage_full);
			} else {
				$this->pic_full = $this->_oldImage_full;
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

	//Front end - List record for index
	public function listCats($cid = 0, $prefix = NULL, $type = 0, $id = 0) {
		if ($cid == 1) {
			$this->_data[] = array('cat_id' => 0, 'cat_title' => 'Root');
		}

		if ($type == 1) {
			//for admin
			if($id != 0){
				$command = Yii::app()->db->createCommand('SELECT cat_id, cat_parent_id, cat_title, tag, cat_enable FROM ' . $this->tableName(). ' WHERE cat_id != ' . $id . ' ORDER BY cat_order DESC');
			}else{
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

			$models = NewsCat::model()->findAll($criteria);

			$i = 1;
			foreach ($models as $model) {
				NewsCat::model()->updateByPk($model['cat_id'], array('cat_order' => $i));
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

	//Back end - Get max record
	private function maxRecordOrder() {
		$command = Yii::app()->db->createCommand('SELECT max(cat_order) AS max FROM ' . $this->tableName());
		return $command->queryScalar() + 1;
	}

	//Back end - Get record to Edit
	public function loadEdit($id) {
		$criteria = new CDbCriteria();

		$this->_model = NewsCat::model()->findByPk($id, $criteria);

		if ($this->_model === null) {
			throw new CHttpException(404, 'The requested page does not exist.');
		}
		return $this->_model;
	}
	//Back end - Get info cat
	public function getInfoCat($id) {
		$command = Yii::app()->db->createCommand('SELECT cat_title FROM ' . $this->tableName() . ' WHERE cat_id=:id');
		$command->bindParam(":id", $id, PDO::PARAM_INT);
		return $command->queryScalar();
	}
	//Back end - Get info cat
	public function countItemCat($id) {
		$command = Yii::app()->db->createCommand('SELECT COUNT(record_id) AS numcat FROM ' . $this->tableName() . ', dos_module_news WHERE ' . $this->tableName() . '.cat_id=dos_module_news.dos_module_item_cat_cat_id AND cat_id=:id');
		$command->bindParam(":id", $id, PDO::PARAM_INT);
		return $command->queryScalar();
	}
	public function countSubcat($id) {
		$this->loopCat($id);
		return array('sub_cat_num' => $this->_sub_cat_num, 'sub_num_item' => $this->_sub_num_item);
	}
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
	private function countItembyCat($id) {
		$model = new News();
		return $model->countItemByCat($id);
	}
	//Xóa tất cả item của phân loại con
	public function loopDelItemtoCat($cat_id) {
		$command = Yii::app()->db->createCommand('SELECT cat_id FROM ' . $this->tableName() . ' WHERE cat_parent_id=:id');
		$command->bindParam(":id", $cat_id, PDO::PARAM_INT);
		$result = $command->queryAll();

		$product = new News();
		foreach ($result as $value) {
			//update dos_module_item_cat_cat_id
			$product->deleteItembyCat($value['cat_id']);
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
		$item = NewsCat::model()->find('cat_id=:id', array(':id' => $id));
		$path = YiiBase::getPathOfAlias('webroot') . USERFILES . '/newsCat/';
		//Del pic_full field
		if (($item->pic_full)) {
			if (file_exists($path . $item->pic_full)) {
				unlink($path . $item->pic_full);
			}
		}
		NewsCat::model()->findByPk($id)->delete(); //delete record
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

		$item = new News();
		foreach ($result as $value) {
			//update dos_module_product_cat_cat_id
			$item->updateItem($value['cat_id'], $cat_id_new);
			$this->loopMoveItemtoCat($value['cat_id'], $cat_id_new);
		}
	}
}