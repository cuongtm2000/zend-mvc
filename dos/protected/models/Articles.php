<?php

/**
 * This is the model class for table "dos_sys_articles".
 *
 * The followings are the available columns in table 'dos_sys_articles':
 * @property integer $record_id
 * @property string $title
 * @property string $titleen
 * @property string $postdate
 * @property string $pic_thumb
 * @property string $preview
 * @property string $previewen
 * @property string $detail
 * @property string $detailen
 * @property string $tag
 * @property string $description
 * @property integer $hits
 * @property integer $record_order
 * @property integer $hot
 * @property string $extra_field1
 * @property string $extra_field2
 * @property integer $enable
 * @property integer $dos_module_item_cat_cat_id
 *
 * The followings are the available model relations:
 * @property DosSysArticlesCat $dosModuleItemCatCat
 */
class Articles extends CActiveRecord {
    public $remove_pic_thumb;
    private $_oldImage;
    private $_model;

    /**
     * Returns the static model of the specified AR class.
     * @param string $className active record class name.
     * @return Articles the static model class
     */
    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

    /**
     * @return string the associated database table name
     */
    public function tableName() {
        return 'dos_sys_articles';
    }

    /**
     * @return array validation rules for model attributes.
     */
    public function rules() {
        // NOTE: you should only define rules for those attributes that
        // will receive user inputs.
        return array(
            array('title, detail, tag, description, dos_module_item_cat_cat_id', 'required'),
            array('hits, record_order, hot, enable, dos_module_item_cat_cat_id', 'numerical', 'integerOnly' => true),
            array('title, titleen, pic_thumb, tag, extra_field1, extra_field2', 'length', 'max' => 100),
            array('tag', 'checkExistsTag'),
            array('description', 'length', 'max' => 250),
            array('pic_thumb', 'file', 'types' => 'gif,png,jpg,jpeg,icon', 'allowEmpty' => true, 'maxSize' => 1024 * 1024 * 5),
            array('preview, previewen, detailen', 'safe'),
            // The following rule is used by search().
            // Please remove those attributes that should not be searched.
            array('record_id, title, titleen, postdate, pic_thumb, preview, previewen, detail, detailen, tag, description, hits, record_order, hot, extra_field1, extra_field2, enable, dos_module_item_cat_cat_id', 'safe', 'on' => 'search'),
        );
    }
    public function checkExistsTag($attribute){
        if (GetTag::tag($this->tag, $this->record_id, $this->tableName())) {
            $this->addError($attribute, $attribute . ': <strong>' . $this->tag . '</strong> đã tồn tại, vui lòng chọn một liên kết khác');
        }
    }

    /**
     * @return array relational rules.
     */
    public function relations() {
        // NOTE: you may need to adjust the relation name and the related
        // class name for the relations automatically generated below.
        return array(
            'ArticlesCat' => array(self::BELONGS_TO, 'ArticlesCat', 'dos_module_item_cat_cat_id'),
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
            'detail' => 'Detail',
            'detailen' => 'Detailen',
            'tag' => 'Tag',
            'description' => 'Description',
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
        $criteria->compare('detail', $this->detail, true);
        $criteria->compare('detailen', $this->detailen, true);
        $criteria->compare('tag', $this->tag, true);
        $criteria->compare('description', $this->description, true);
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
        $this->preview = $purifier->purify($this->preview);
        $this->detail = $purifier->purify($this->detail);
        $this->tag = $purifier->purify($this->tag);
        $this->description = $purifier->purify($this->description);

        if ($this->isNewRecord) {
            $this->record_order = $this->maxRecordOrder();
            if ($_FILES[ucfirst(Yii::app()->controller->id)]['name']['pic_thumb']) {
                //import class upload images
                Yii::import('ext.EUploadedImage.EUploadedImage');
                $this->pic_thumb = EUploadedImage::getInstance($this, 'pic_thumb')->processUpload(145, 100, '/public/userfiles/images/' . Yii::app()->user->id . '/images' . '/' . Yii::app()->controller->id, $this->title);
            }
        } else {
            //check file old and upload
            if ($_FILES[ucfirst(Yii::app()->controller->id)]['name']['pic_thumb']) {
                //import class upload images
                Yii::import('ext.EUploadedImage.EUploadedImage');
                $this->pic_thumb = EUploadedImage::getInstance($this, 'pic_thumb')->processUpload(145, 100, '/public/userfiles/images/' . Yii::app()->user->id . '/images' . '/' . Yii::app()->controller->id, $this->title, $this->_oldImage);
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

	//Front end - list record for rss
	public function listRss() {
		$command = Yii::app()->db->createCommand('SELECT title, postdate, ' . $this->tableName() . '.preview, ' . $this->tableName() . '.tag, ' . $this->tableName() . '_cat.tag AS tag_cat FROM ' . $this->tableName() . ', ' . $this->tableName() . '_cat WHERE ' . $this->tableName() . '.dos_module_item_cat_cat_id = ' . $this->tableName() . '_cat.cat_id AND enable=1 ORDER BY record_order DESC, postdate DESC LIMIT 0, 7');
		return $command->queryAll();
	}

	//Front end - List item
	public function listItems() {
		$criteria = new CDbCriteria();
		$criteria->condition = 'enable=1';
		$criteria->order = 'record_order DESC, postdate DESC';
		$count = Articles::model()->count($criteria);

		// elements per page
		$pages = new CPagination($count);
		$pages->pageSize = 15;
		$pages->applyLimit($criteria);

		return array('models' => Articles::model()->findAll($criteria), 'pages' => $pages);
	}

	//Front end - List item by cat
	public function listItemByCat($tag) {
		$criteria = new CDbCriteria();
		$criteria->with = array('ArticlesCat');
		$criteria->condition = 'enable=1 AND ArticlesCat.tag=:tag';
		$criteria->params = array(':tag'=>$tag);
		$criteria->order = 'record_order DESC, postdate DESC';
		$count = Articles::model()->count($criteria);

		// elements per page
		$pages = new CPagination($count);
		$pages->pageSize = 15;
		$pages->applyLimit($criteria);

		return array('models' => Articles::model()->findAll($criteria), 'pages' => $pages);
	}

    //Back end - List item admin
    public function listItemAdmin() {
        $criteria = new CDbCriteria();
        $criteria->order = 'postdate DESC';
        $count = Articles::model()->count($criteria);

        // elements per page
        $pages = new CPagination($count);
        $pages->pageSize = 15;
        $pages->applyLimit($criteria);

        return array('models' => Articles::model()->findAll($criteria), 'pages' => $pages);
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
        $item = Articles::model()->find('record_id=:id', array(':id' => $id));
        $path = YiiBase::getPathOfAlias('webroot') . '/public/userfiles/images/' . Yii::app()->user->id . '/images' . '/' . Yii::app()->controller->id . '/';
        if ($item->pic_thumb && file_exists($path . $item->pic_thumb)) {
            unlink($path . $item->pic_thumb);
        }
        Articles::model()->findByPk($id)->delete(); //delete record_id
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

            $models = Articles::model()->findAll($criteria);

            $i = 1;
            foreach ($models as $model) {
                Articles::model()->updateByPk($model['record_id'], array('record_order' => $i));
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
        $this->_model = Articles::model()->findByPk($id, $criteria);

        if ($this->_model === null) {
            throw new CHttpException(404, 'The requested page does not exist.');
        }
        return $this->_model;
    }
}