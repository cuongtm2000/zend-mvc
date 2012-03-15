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
 * @property string $description
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
	public $remove_pic_thumb;
	private $_oldImage;
	private $_model;

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
			array('title, tag, url, dos_module_item_cat_cat_id', 'required'),
			array('record_order, hits, hot, enable, dos_module_item_cat_cat_id', 'numerical', 'integerOnly' => true),
			array('title, titleen, tag, pic_thumb, url', 'length', 'max' => 100),
			array('tag', 'unique'),
			array('url', 'url'),
			array('description', 'length', 'max' => 250),
			array('extra_field1, extra_field2', 'length', 'max' => 45),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('record_id, title, titleen, postdate, tag, description, pic_thumb, url, record_order, hits, extra_field1, extra_field2, hot, enable, dos_module_item_cat_cat_id', 'safe', 'on' => 'search'),
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
			'description' => 'Description',
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
		$criteria->compare('description', $this->description, true);
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

	public function afterFind() {
		parent::afterFind();
		$this->_oldImage = $this->pic_thumb;
	}

	public function beforeSave() {
		$purifier = new CHtmlPurifier();
		$this->title = $purifier->purify($this->title);
		$this->url = $purifier->purify($this->url);
		$this->tag = $purifier->purify($this->tag);
		$this->description = $purifier->purify($this->description);

		if ($this->isNewRecord) {
			$this->record_order = $this->maxRecordOrder();
			if ($_FILES[ucfirst(Yii::app()->controller->id)]['name']['pic_thumb']) {
				$width = Configs::configTemplate('video_width_thumb', Yii::app()->params['template']);
				$height = Configs::configTemplate('video_height_thumb', Yii::app()->params['template']);

				//import class upload images
				Yii::import('ext.EUploadedImage.EUploadedImage');
				$this->pic_thumb = EUploadedImage::getInstance($this, 'pic_thumb')->processUpload($width, $height, '/public/userfiles/images/' . Yii::app()->user->id . '/images' . '/' . Yii::app()->controller->id, $this->title);
			}
		} else {
			//check file old and upload
			if ($_FILES[ucfirst(Yii::app()->controller->id)]['name']['pic_thumb']) {
				$width = Configs::configTemplate('video_width_thumb', Yii::app()->params['template']);
				$height = Configs::configTemplate('video_height_thumb', Yii::app()->params['template']);

				//import class upload images
				Yii::import('ext.EUploadedImage.EUploadedImage');
				$this->pic_thumb = EUploadedImage::getInstance($this, 'pic_thumb')->processUpload($width, $height, '/public/userfiles/images/' . Yii::app()->user->id . '/images' . '/' . Yii::app()->controller->id, $this->title, $this->_oldImage);
			} else {
				//remove picthumb
				if (isset($_POST[ucfirst(Yii::app()->controller->id)]['remove_pic_thumb']) && $_POST[ucfirst(Yii::app()->controller->id)]['remove_pic_thumb'] == 1) {
					$common_class = new Common();
					$common_class->removePic($this->_oldImage, 0, 1);
					$this->pic_thumb = '';
				} else {
					$this->pic_thumb = $this->_oldImage;
				}
			}
		}

		return parent::beforeSave();
	}

	//Back end - Get max record
	public function maxRecordOrder() {
		$command = Yii::app()->db->createCommand('SELECT max(record_order) AS max FROM ' . $this->tableName());
		return $command->queryScalar() + 1;
	}
	//Back end - Get record to Edit
	public function loadEdit($id) {
		$criteria = new CDbCriteria();
		$this->_model = Video::model()->findByPk($id, $criteria);

		if ($this->_model === null) {
			throw new CHttpException(404, 'The requested page does not exist.');
		}
		return $this->_model;
	}

	//Back end - List item admin
	public function listItemAdmin() {
		$criteria = new CDbCriteria();
		$criteria->order = 'record_order DESC, postdate DESC';
		$count = Video::model()->count($criteria);

		// elements per page
		$pages = new CPagination($count);
		$pages->pageSize = 15;
		$pages->applyLimit($criteria);

		return array('models' => Video::model()->findAll($criteria), 'pages' => $pages);
	}

	//Back end - Update Record
	private function updateSort($order, $id) {
		$command = Yii::app()->db->createCommand('UPDATE ' . $this->tableName() . ' SET record_order=:order WHERE record_id=:id');
		$command->bindParam(":order", $order, PDO::PARAM_INT);
		$command->bindParam(":id", $id, PDO::PARAM_INT);
		return $command->execute();
	}

	//Back end - Update Record
	private function updateShowHidden($activated, $id) {
		$command = Yii::app()->db->createCommand('UPDATE ' . $this->tableName() . ' SET enable=:activated WHERE record_id=:id');
		$command->bindParam(":activated", $activated, PDO::PARAM_INT);
		$command->bindParam(":id", $id, PDO::PARAM_INT);
		return $command->execute();
	}

	//Back end - Delete Record
	private function deleteRecord($id) {
		$item = Video::model()->find('record_id=:id', array(':id' => $id));
		$path = YiiBase::getPathOfAlias('webroot') . '/public/userfiles/images/' . Yii::app()->user->id . '/images' . '/' . Yii::app()->controller->id . '/';
		if ($item->pic_thumb && file_exists($path . $item->pic_thumb)) {
			unlink($path . $item->pic_thumb);
		}
		Video::model()->findByPk($id)->delete(); //delete record_id
	}

	//Back end - Active Item
	public function activeItem($data) {
		$flag = $data->getPost('factive', 'disable');
		$ids = $data->getPost('ids', '');
		$orders = $data->getPost('orders', '');
		$sort = $data->getPost('sort', '');
		$syn = $data->getPost('syn', '');

		if ($sort) {
			if (is_array($orders)) {
				while (list($id, $order) = each($orders)) {
					$id = intval($id);
					$order = intval($order);
					if ($id && $order) {
						$this->updateSort($order, $id);
					}
				}
			}
		} else if ($syn) {
			$criteria = new CDbCriteria();
			$criteria->order = 'record_order ASC, postdate ASC';

			$models = Video::model()->findAll($criteria);

			$i = 1;
			foreach ($models as $model) {
				Video::model()->updateByPk($model['record_id'], array('record_order' => $i));
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
				} else {
					//delete
					foreach ($record_id as $value) {
						$id = intval($value);
						if ($id) {
							$this->deleteRecord($id);
						}
					}
				}
			}
		}
	}
	//Back end - count item by cat
	public function countItemByCat($id) {
		$command = Yii::app()->db->createCommand('SELECT COUNT(record_id) FROM ' . $this->tableName() . ' WHERE dos_module_item_cat_cat_id=:id');
		$command->bindParam(":id", $id, PDO::PARAM_INT);
		return $command->queryScalar();
	}
	//Back end - delete Item for Cat
	public function delItembyCat($data = NULL) {
		$id = $data->getQuery('id');
		$command = Yii::app()->db->createCommand('SELECT record_id FROM ' . $this->tableName() . ' WHERE dos_module_item_cat_cat_id=:id');
		$command->bindParam(":id", $id, PDO::PARAM_INT);
		$result = $command->queryAll();

		if ($data->getPost('delitems') == 'del') {
			foreach ($result as $value) {
				//delete item
				$this->deleteRecord($value['record_id']); //delete record
			}
		} elseif ($data->getPost('delitems') == 'move') {
			$cat_move = $data->getPost('catmove');
			foreach ($result as $value) {
				//move item
				$command = Yii::app()->db->createCommand('UPDATE ' . $this->tableName() . ' SET dos_module_item_cat_cat_id=:cid WHERE record_id=:id');
				$command->bindParam(":cid", $cat_move, PDO::PARAM_INT);
				$command->bindParam(":id", $value['record_id'], PDO::PARAM_INT);
				$command->execute();
			}
		}
		//move all subcat to new cat parent
		$cat = new VideoCat();
		if ($data->getPost('delcat') == 'move') {
			$cat->findcatParent($id, $data->getPost('movetocat'));
		} elseif ($data->getPost('delcat') == 'del') {
			if ($data->getPost('movecat') == 'del') {
				$cat->loopDelItemtoCat($id);
			} elseif ($data->getPost('movecat') == 'move') {
				$cat->loopMoveItemtoCat($id, $data->getPost('moveprotocat'));
			}
			//delete all subcat
			$cat->loopDelSubCat($id);
		}
		//delete cat
		$cat->deleteRecord($id);
	}
	//update item to new cat
	public function updateItem($cat_id, $cat_id_new) {
		$command = Yii::app()->db->createCommand('UPDATE ' . $this->tableName() . ' SET dos_module_item_cat_cat_id=:new_cid WHERE dos_module_item_cat_cat_id=:cid');
		$command->bindParam(":new_cid", $cat_id_new, PDO::PARAM_INT);
		$command->bindParam(":cid", $cat_id, PDO::PARAM_INT);
		$command->execute();
	}
}