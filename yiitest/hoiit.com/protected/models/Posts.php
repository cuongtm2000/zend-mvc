<?php

/**
 * This is the model class for table "hoiit_posts".
 *
 * The followings are the available columns in table 'hoiit_posts':
 * @property integer $post_id
 * @property string $post_title
 * @property string $post_img
 * @property string $post_detail
 * @property integer $post_sort
 * @property string $post_demo
 * @property string $post_hit
 * @property integer $post_type
 * @property integer $post_type
 * @property string $post_link
 * @property string $post_description
 * @property string $post_create
 * @property integer $hoiit_cats_cat_id
 * @property string $hoiit_usernames_username
 *
 * The followings are the available model relations:
 * @property HoiitComments[] $hoiitComments
 * @property HoiitDownload[] $hoiitDownloads
 * @property HoiitCats $hoiitCatsCat
 * @property HoiitUsernames $hoiitUsernamesUsername
 */
class Posts extends CActiveRecord {
	private $_oldImage;
	private $_model;

	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return Posts the static model class
	 */
	public static function model($className = __CLASS__) {
		return parent::model($className);
	}

	/**
	 * @return string the associated database table name
	 */
	public function tableName() {
		return 'hoiit_posts';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules() {
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('post_title, post_detail, post_link, hoiit_cats_cat_id', 'required'),
			array('post_sort, post_type, post_enable, hoiit_cats_cat_id', 'numerical', 'integerOnly' => true),
			array('post_title, post_link', 'length', 'max' => 100),
			array('post_link', 'unique'),
			array('post_description', 'length', 'min' => 60, 'max' => 250),
			array('post_img', 'length', 'max' => 60),
			array('post_demo, post_hit', 'length', 'max' => 45),
			array('hoiit_usernames_username', 'length', 'max' => 40),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('post_id, post_title, post_img, post_detail, post_sort, post_demo, post_hit, post_type, post_link, post_description, post_enable, post_create, hoiit_cats_cat_id, hoiit_usernames_username', 'safe', 'on' => 'search'),
		);
	}

	/*public function checkExistsLink($attribute){
			if (GetTag::tag($this->post_link, $this->post_id)) {
				$this->addError($attribute, '<strong>' . $this->post_link . '</strong> ' . $attribute . ' already exists please choose another link');
			}
		}*/

	/**
	 * @return array relational rules.
	 */
	public function relations() {
		// NOTE: you may need to adjust the relation name and the related
		// class name for the relations automatically generated below.
		return array(
			//'hoiitComments' => array(self::HAS_MANY, 'HoiitComments', 'hoiit_posts_post_id'),
			//'hoiitDownloads' => array(self::HAS_MANY, 'HoiitDownload', 'hoiit_posts_post_id'),
			'hoiitCatsCat' => array(self::BELONGS_TO, 'Cats', 'hoiit_cats_cat_id'),
			//'hoiitUsernamesUsername' => array(self::BELONGS_TO, 'HoiitUsernames', 'hoiit_usernames_username'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels() {
		return array(
			'post_id' => 'Post',
			'post_title' => 'Post Title',
			'post_img' => 'Post Img',
			'post_detail' => 'Post Detail',
			'post_sort' => 'Post Sort',
			'post_demo' => 'Post Demo',
			'post_hit' => 'Post Hit',
			'post_type' => 'Post Type',
			'post_link' => 'Post Link',
			'post_description' => 'Post Description',
			'post_enable' => 'Post Enable',
			'post_create' => 'Post Create',
			'hoiit_cats_cat_id' => 'Hoiit Cats Cat',
			'hoiit_usernames_username' => 'Hoiit Usernames Username',
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

		$criteria->compare('post_id', $this->post_id);
		$criteria->compare('post_title', $this->post_title, true);
		$criteria->compare('post_img', $this->post_img, true);
		$criteria->compare('post_detail', $this->post_detail, true);
		$criteria->compare('post_sort', $this->post_sort);
		$criteria->compare('post_demo', $this->post_demo, true);
		$criteria->compare('post_hit', $this->post_hit, true);
		$criteria->compare('post_type', $this->post_type);
		$criteria->compare('post_enable', $this->post_enable);
		$criteria->compare('post_create', $this->post_create, true);
		$criteria->compare('hoiit_cats_cat_id', $this->hoiit_cats_cat_id);
		$criteria->compare('hoiit_usernames_username', $this->hoiit_usernames_username, true);

		return new CActiveDataProvider($this, array(
			'criteria' => $criteria,
		));
	}

	public function afterFind() {
		parent::afterFind();
		$this->_oldImage = $this->post_img;
	}

	public function beforeSave() {
		$purifier = new CHtmlPurifier();
		$this->post_title = $purifier->purify(trim($this->post_title));
		$this->post_detail = $purifier->purify(trim($this->post_detail));
		$this->post_demo = $purifier->purify(trim($this->post_demo));
		$this->post_link = $purifier->purify(trim($this->post_link));
		$this->post_description = $purifier->purify(trim($this->post_description));
		$this->post_enable = $this->post_enable;
		$this->hoiit_cats_cat_id = $this->hoiit_cats_cat_id;

		if ($this->isNewRecord) {
			//Add new record
			$this->post_sort = $this->maxRecordSort(Yii::app()->user->id);
			$this->hoiit_usernames_username = Yii::app()->user->id;

			if ($_FILES[ucfirst(Yii::app()->controller->id)]['name']['post_img']) {
				//import class upload images
				Yii::import('ext.EUploadedImage.EUploadedImage');
				$this->post_img = EUploadedImage::getInstance($this, 'post_img')->processUpload(145, 100, '/public/userfiles/image/posts', $this->post_title);
			}
		} else {
			if ($_FILES[ucfirst(Yii::app()->controller->id)]['name']['post_img']) {
				//import class upload images
				Yii::import('ext.EUploadedImage.EUploadedImage');
				$this->post_img = EUploadedImage::getInstance($this, 'post_img')->processUpload(145, 100, '/public/userfiles/image/posts', $this->post_title, $this->_oldImage);
			} else {
				$this->post_img = $this->_oldImage;
			}
		}

		return parent::beforeSave();
	}

	//Back end - list item Index
	public function listRecordIndex() {
		$criteria = new CDbCriteria();
		$criteria->order = 'post_sort DESC, post_create DESC';
		$criteria->condition = 'post_enable=1';
		$count = Posts::model()->count($criteria);

		// elements per page
		$pages = new CPagination($count);
		$pages->pageSize = 15;
		$pages->applyLimit($criteria);

		return array('models' => Posts::model()->findAll($criteria), 'pages' => $pages);
	}

	//Back end - List item by cat
	public function listRecordByCat($link) {
		$cat_class = new Cats;
		$cat = $cat_class->getCatID($link);

		$criteria = new CDbCriteria();
		$criteria->order = 'post_sort DESC, post_create DESC';
		$criteria->condition = 'post_enable=1 AND hoiit_cats_cat_id=:cid';
		$criteria->params = array(':cid' => $cat['cat_id']);
		$count = Posts::model()->count($criteria);

		// elements per page
		$pages = new CPagination($count);
		$pages->pageSize = 15;
		$pages->applyLimit($criteria);

		return array('models' => Posts::model()->findAll($criteria), 'pages' => $pages, 'cat_name' => $cat['cat_name']);
	}

	//Front end - get detail
	public function detail($link) {
		$command = Yii::app()->db->createCommand('SELECT post_id, post_title, post_detail, post_hit, post_description, cat_name FROM ' . $this->tableName() . ', hoiit_cats WHERE ' . $this->tableName() . '.hoiit_cats_cat_id = hoiit_cats.cat_id AND post_link=:link AND post_enable=1');
		$command->bindParam(':link', $link, PDO::PARAM_STR);
		$row = $command->queryRow();
		Posts::model()->updateByPk($row['post_id'], array('post_hit' => $row['post_hit'] + 1)); //update hit view
		return $row;
	}

	//Front end - list hit view
	public function listHitView() {
		$command = Yii::app()->db->createCommand('SELECT post_title, post_link, cat_name FROM ' . $this->tableName() . ', hoiit_cats WHERE ' . $this->tableName() . '.hoiit_cats_cat_id = hoiit_cats.cat_id AND post_enable=1 ORDER BY post_hit DESC LIMIT 0, 7');
		return $command->queryAll();
	}

	//Front end - list record new
	public function listRecordTypeNew($type=0) {
		$command = Yii::app()->db->createCommand('SELECT post_title, post_link, hoiit_usernames_username, cat_name FROM ' . $this->tableName() . ', hoiit_cats WHERE ' . $this->tableName() . '.hoiit_cats_cat_id = hoiit_cats.cat_id AND post_type =:type AND post_enable=1 ORDER BY post_create DESC LIMIT 0, 7');
		$command->bindParam(':type', $type, PDO::PARAM_INT);
		return $command->queryAll();
	}

	//Front end - list record new
	public function listRecordNew() {
		$command = Yii::app()->db->createCommand('SELECT post_title, post_link, hoiit_usernames_username, cat_name FROM ' . $this->tableName() . ', hoiit_cats WHERE ' . $this->tableName() . '.hoiit_cats_cat_id = hoiit_cats.cat_id AND post_enable=1 ORDER BY post_create DESC LIMIT 0, 20');
		return $command->queryAll();
	}

	//Front end - get ID by link
	public function getIdByLink($link) {
		$command = Yii::app()->db->createCommand('SELECT post_id FROM ' . $this->tableName() . ' WHERE post_link=:link');
		$command->bindParam(':link', $link, PDO::PARAM_STR);
		return $command->queryScalar();
	}

	//Back end - Get max record
	public function maxRecordSort($user) {
		$command = Yii::app()->db->createCommand('SELECT max(post_sort) FROM ' . $this->tableName() . ' WHERE hoiit_usernames_username=:user');
		$command->bindParam(':user', $user, PDO::PARAM_STR);
		return $command->queryScalar() + 1;
	}

	//Back end - List item admin
	public function listItemAdmin() {
		$criteria = new CDbCriteria();
		$criteria->order = 'post_sort DESC, post_create DESC';
		$criteria->condition = 'hoiit_usernames_username=:user';
		$criteria->params = array(':user' => Yii::app()->user->id);
		$count = Posts::model()->count($criteria);

		// elements per page
		$pages = new CPagination($count);
		$pages->pageSize = 15;
		$pages->applyLimit($criteria);

		return array('models' => Posts::model()->findAll($criteria), 'pages' => $pages);
	}

	//Back end - Update Record
	private function updateSort($sort, $id) {
		$command = Yii::app()->db->createCommand('UPDATE ' . $this->tableName() . ' SET post_sort=:sort WHERE post_id=:id');
		$command->bindParam(':sort', $sort, PDO::PARAM_INT);
		$command->bindParam(':id', $id, PDO::PARAM_INT);
		return $command->execute();
	}

	//Back end - Update Record
	private function updateShowHidden($activated, $id) {
		$command = Yii::app()->db->createCommand('UPDATE ' . $this->tableName() . ' SET post_enable=:activated WHERE post_id=:id');
		$command->bindParam(':activated', $activated, PDO::PARAM_INT);
		$command->bindParam(':id', $id, PDO::PARAM_INT);
		return $command->execute();
	}

	//Back end - Delete Record
	private function deleteRecord($id) {
		$item = Posts::model()->find('post_id=:id', array(':id' => $id));
		$path = YiiBase::getPathOfAlias('webroot') . '/' . 'public/userfiles/image/' . Yii::app()->controller->id . '/';

		if ($item->post_img && file_exists($path . $item->post_img)) {
			unlink($path . $item->post_img);
		}
		Comments::model()->deleteRecordByPostID($id); //delete comment
		Posts::model()->findByPk($id)->delete(); //delete record_id
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
			$criteria->order = 'post_sort ASC, post_create ASC';
			$criteria->condition = 'hoiit_usernames_username=:user';
			$criteria->params = array(':user' => Yii::app()->user->id);

			$models = Posts::model()->findAll($criteria);

			$i = 1;
			foreach ($models as $model) {
				Posts::model()->updateByPk($model['post_id'], array('post_sort' => $i));
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

	//Back end - Get record to Edit
	public function loadEdit($id) {
		$criteria = new CDbCriteria();
		$criteria->condition = 'hoiit_usernames_username=:user';
		$criteria->params = array(':user' => Yii::app()->user->id);

		$this->_model = Posts::model()->findByPk($id, $criteria);

		if ($this->_model === null) {
			throw new CHttpException(404, 'The requested page does not exist.');
		}
		return $this->_model;
	}
}