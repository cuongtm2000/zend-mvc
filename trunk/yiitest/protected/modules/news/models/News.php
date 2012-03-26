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
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return News the static model class
	 */
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
			array('title, postdate, content, tag, dos_module_item_cat_cat_id', 'required'),
			array('hits, record_order, hot, enable, dos_module_item_cat_cat_id', 'numerical', 'integerOnly' => true),
			array('title, titleen, pic_thumb, tag, tagen, extra_field1, extra_field2', 'length', 'max' => 100),
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
			'record_id' => 'Record',
			'title' => 'Title',
			'titleen' => 'Titleen',
			'postdate' => 'Postdate',
			'pic_thumb' => 'Pic Thumb',
			'preview' => 'Preview',
			'previewen' => 'Previewen',
			'content' => 'Content',
			'contenten' => 'Contenten',
			'tag' => 'Tag',
			'tagen' => 'Tagen',
			'description' => 'Description',
			'descriptionen' => 'Descriptionen',
			'hits' => 'Hits',
			'record_order' => 'Record Order',
			'hot' => 'Hot',
			'extra_field1' => 'Extra Field1',
			'extra_field2' => 'Extra Field2',
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
}