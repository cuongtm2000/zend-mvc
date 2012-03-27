<?php

/**
 * This is the model class for table "dos_module_news".
 *
 * The followings are the available columns in table 'dos_module_news':
 * @property integer $record_id
 * @property string $title
 * @property string $titleen
 * @property string $postdate
 * @property string $pic_thumb
 * @property string $preview
 * @property string $previewen
 * @property string $content
 * @property string $contenten
 * @property string $tag
 * @property string $tagen
 * @property string $description
 * @property string $descriptionen
 * @property integer $hits
 * @property integer $record_order
 * @property integer $hot
 * @property string $extra_field1
 * @property string $extra_field2
 * @property integer $enable
 * @property integer $dos_module_item_cat_cat_id
 *
 * The followings are the available model relations:
 * @property DosModuleNewsCat $dosModuleItemCatCat
 */
class News extends CActiveRecord {
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
		return 'dos_module_news';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules() {
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('title, content, tag, dos_module_item_cat_cat_id', 'required'),
			array('hits, record_order, hot, enable, dos_module_item_cat_cat_id', 'numerical', 'integerOnly' => true),
			array('title, titleen, pic_thumb, tag, tagen, extra_field1, extra_field2', 'length', 'max' => 100),
			array('tag, tagen', 'unique'),
			array('description, descriptionen', 'length', 'max' => 250),
			array('preview, previewen, contenten', 'safe'),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('record_id, title, titleen, postdate, pic_thumb, preview, previewen, content, contenten, tag, tagen, description, descriptionen, hits, record_order, hot, extra_field1, extra_field2, enable, dos_module_item_cat_cat_id', 'safe', 'on' => 'search'),
		);
	}

	/**
	 * @return array relational rules.
	 */
	public function relations() {
		// NOTE: you may need to adjust the relation name and the related
		// class name for the relations automatically generated below.
		return array(
			'NewsCat' => array(self::BELONGS_TO, 'NewsCat', 'dos_module_item_cat_cat_id'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels() {
		return array(
			//'record_id' => 'Record',
			'title' => Yii::app()->controller->lang['title'],
			'titleen' => Yii::app()->controller->lang['titleen'],
			//'postdate' => 'Postdate',
			'pic_thumb' => Yii::app()->controller->lang['pic_thumb'],
			'preview' => Yii::app()->controller->lang['preview'],
			'previewen' => Yii::app()->controller->lang['previewen'],
			'content' => Yii::app()->controller->lang['content'],
			'contenten' => Yii::app()->controller->lang['contenten'],
			'tag' => Yii::app()->controller->lang['tag'],
			'tagen' => Yii::app()->controller->lang['tagen'],
			'description' => Yii::app()->controller->lang['description'],
			'descriptionen' => Yii::app()->controller->lang['descriptionen'],
			//'hits' => 'Hits',
			//'record_order' => 'Record Order',
			'hot' => Yii::app()->controller->lang['hot'],
			//'extra_field1' => 'Extra Field1',
			//'extra_field2' => 'Extra Field2',
			'enable' => Yii::app()->controller->lang['show'],
			'dos_module_item_cat_cat_id' => Yii::app()->controller->lang['cat_parent'],
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
		$criteria->compare('pic_thumb', $this->pic_thumb, true);
		$criteria->compare('preview', $this->preview, true);
		$criteria->compare('previewen', $this->previewen, true);
		$criteria->compare('content', $this->content, true);
		$criteria->compare('contenten', $this->contenten, true);
		$criteria->compare('tag', $this->tag, true);
		$criteria->compare('tagen', $this->tagen, true);
		$criteria->compare('description', $this->description, true);
		$criteria->compare('descriptionen', $this->descriptionen, true);
		$criteria->compare('hits', $this->hits);
		$criteria->compare('record_order', $this->record_order);
		$criteria->compare('hot', $this->hot);
		$criteria->compare('extra_field1', $this->extra_field1, true);
		$criteria->compare('extra_field2', $this->extra_field2, true);
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
		$this->titleen = $purifier->purify($this->titleen);
		$this->preview = $purifier->purify($this->preview);
		$this->previewen = $purifier->purify($this->previewen);
		$this->content = $purifier->purify($this->content);
		$this->contenten = $purifier->purify($this->contenten);
		$this->tag = $purifier->purify($this->tag);
		$this->tagen = $purifier->purify($this->tagen);
		$this->description = $purifier->purify($this->description);
		$this->descriptionen = $purifier->purify($this->descriptionen);

		if ($this->isNewRecord) {
			$this->record_order = $this->maxRecordOrder();
			if ($_FILES[ucfirst(Yii::app()->controller->id)]['name']['pic_thumb']) {
				$width = Configs::configTemplate('news_width_thumb', Yii::app()->session['template']);
				$height = Configs::configTemplate('news_height_thumb', Yii::app()->session['template']);

				//import class upload images
				Yii::import('ext.EUploadedImage.EUploadedImage');
				$this->pic_thumb = EUploadedImage::getInstance($this, 'pic_thumb')->processUpload($width, $height, '/public/userfiles/images/' . Yii::app()->user->id . '/images' . '/' . Yii::app()->controller->id, $this->title);
			}
		} else {
			//check file old and upload
			if ($_FILES[ucfirst(Yii::app()->controller->id)]['name']['pic_thumb']) {
				$width = Configs::configTemplate('news_width_thumb', Yii::app()->session['template']);
				$height = Configs::configTemplate('news_height_thumb', Yii::app()->session['template']);

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
		$user = Yii::app()->user->id;
		$command = Yii::app()->db->createCommand('SELECT max(record_order) AS max FROM ' . $this->tableName() . ', ' . $this->tableName() . '_cat WHERE ' . $this->tableName() . '_cat.cat_id = ' . $this->tableName() . '.dos_module_item_cat_cat_id AND dos_usernames_username=:user');
		$command->bindParam(":user", $user, PDO::PARAM_STR);
		return $command->queryScalar() + 1;
	}

	//Back end - List item admin
	public function listItemAdmin() {
		$criteria = new CDbCriteria();
		$criteria->with = array('NewsCat');
		$criteria->order = 'record_order DESC, postdate DESC';
		$criteria->condition = 'dos_usernames_username=:user';
		$criteria->params = array(':user' => Yii::app()->user->id);
		$count = News::model()->count($criteria);

		// elements per page
		$pages = new CPagination($count);
		$pages->pageSize = 15;
		$pages->applyLimit($criteria);

		return array('models' => News::model()->findAll($criteria), 'pages' => $pages);
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
		$item = News::model()->find('record_id=:id', array(':id' => $id));

		$common_class = new Common();
		$common_class->removePic($item->pic_thumb); //Del pic_thumb field

		News::model()->findByPk($id)->delete(); //delete record_id
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
			$criteria->with = array('NewsCat');
			$criteria->order = 'record_order ASC, postdate ASC';
			$criteria->condition = 'dos_usernames_username=:user';
			$criteria->params = array(':user' => Yii::app()->user->id);

			$models = News::model()->findAll($criteria);

			$i = 1;
			foreach ($models as $model) {
				News::model()->updateByPk($model['record_id'], array('record_order' => $i));
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

	//Back end - Count item by user post
	public function countItemByUser() {
		$user = Yii::app()->user->id;
		$command = Yii::app()->db->createCommand('SELECT COUNT(record_id) AS num FROM ' . $this->tableName() . ', ' . $this->tableName() . '_cat WHERE ' . $this->tableName() . '.dos_module_item_cat_cat_id = ' . $this->tableName() . '_cat.cat_id AND dos_usernames_username=:user');
		$command->bindParam(":user", $user, PDO::PARAM_STR);
		return $command->queryScalar();
	}

    //Back end - Get record to Edit
    public function loadEdit($id) {
        $criteria = new CDbCriteria();

        $criteria->with = array('NewsCat');
        $criteria->condition = 'dos_usernames_username=:user';
        $criteria->params = array(':user' => Yii::app()->user->id);

        $this->_model = News::model()->findByPk($id, $criteria);

        if ($this->_model === null) {
            throw new CHttpException(404, 'The requested page does not exist.');
        }
        return $this->_model;
    }
}