<?php

/**
 * This is the model class for table "dos_module_contacts".
 *
 * The followings are the available columns in table 'dos_module_contacts':
 * @property integer $record_id
 * @property string $title
 * @property string $titleen
 * @property string $content
 * @property string $contenten
 * @property string $create_date
 * @property integer $record_order
 * @property integer $hit
 * @property integer $hot
 * @property string $tag
 * @property string $description
 * @property string $enable
 */
class Contact extends CActiveRecord {
	private $_model;

	public static function model($className = __CLASS__) {
		return parent::model($className);
	}

	/**
	 * @return string the associated database table name
	 */
	public function tableName() {
		return 'dos_module_contacts';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules() {
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('title, content, tag, description', 'required'),
			array('record_order, hit, hot', 'numerical', 'integerOnly' => true),
			array('title, titleen, tag', 'length', 'max' => 100),
			array('description', 'length', 'max' => 250),
			array('enable', 'length', 'max' => 45),
			array('contenten', 'safe'),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('record_id, title, titleen, content, contenten, create_date, record_order, hit, hot, tag, description, enable', 'safe', 'on' => 'search'),
		);
	}

	/**
	 * @return array relational rules.
	 */
	public function relations() {
		// NOTE: you may need to adjust the relation name and the related
		// class name for the relations automatically generated below.
		return array(
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
			'content' => 'Content',
			'contenten' => 'Contenten',
			'create_date' => 'Create Date',
			'record_order' => 'Record Order',
			'hit' => 'Hit',
			'hot' => 'Hot',
			'tag' => 'Tag',
			'description' => 'Description',
			'enable' => 'Enable',
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
		$criteria->compare('content', $this->content, true);
		$criteria->compare('contenten', $this->contenten, true);
		$criteria->compare('create_date', $this->create_date, true);
		$criteria->compare('record_order', $this->record_order);
		$criteria->compare('hit', $this->hit);
		$criteria->compare('hot', $this->hot);
		$criteria->compare('tag', $this->tag, true);
		$criteria->compare('description', $this->description, true);
		$criteria->compare('enable', $this->enable, true);

		return new CActiveDataProvider($this, array(
			'criteria' => $criteria,
		));
	}

	public function beforeSave() {
		$purifier = new CHtmlPurifier();
		$this->title = $purifier->purify($this->title);
		$this->titleen = $purifier->purify($this->titleen);
		$this->content = $purifier->purify($this->content);
		$this->contenten = $purifier->purify($this->contenten);
		$this->tag = $purifier->purify($this->tag);
		$this->description = $purifier->purify($this->description);

		if ($this->isNewRecord) {
			//Add new record
			$this->record_order = $this->maxRecordOrder();
		}

		return parent::beforeSave();
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
		$command = Yii::app()->db->createCommand('DELETE FROM ' . $this->tableName() . ' WHERE record_id=:id');
		$command->bindParam(":id", $id);
		return $command->execute();
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
			$criteria->order = 'record_order ASC, create_date ASC';

			$models = Contact::model()->findAll($criteria);

			$i = 1;
			foreach ($models as $model) {
				Contact::model()->updateByPk($model['record_id'], array('record_order' => $i));
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

	//Back end - Get max record
	public function maxRecordOrder() {
		$command = Yii::app()->db->createCommand('SELECT max(record_order) AS max FROM ' . $this->tableName());
		return $command->queryScalar() + 1;
	}

	//Back end - Get record to Edit
	public function loadEdit($id) {
		$criteria = new CDbCriteria();

		$this->_model = Contact::model()->findByPk($id, $criteria);

		if ($this->_model === null) {
			throw new CHttpException(404, 'The requested page does not exist.');
		}
		return $this->_model;
	}

	//Back end - List item admin
	public function listItemAdmin() {
		$criteria = new CDbCriteria();
		$criteria->order = 'record_order DESC, create_date DESC';
		$count = Contact::model()->count($criteria);

		// elements per page
		$pages = new CPagination($count);
		$pages->pageSize = 15;
		$pages->applyLimit($criteria);

		return array('models' => Contact::model()->findAll($criteria), 'pages' => $pages);
	}
}