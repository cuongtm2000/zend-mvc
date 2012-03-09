<?php

/**
 * This is the model class for table "dos_module_products".
 *
 * The followings are the available columns in table 'dos_module_products':
 * @property integer $record_id
 * @property string $title
 * @property string $titleen
 * @property string $postdate
 * @property string $pic_thumb
 * @property string $pic_full
 * @property string $pic_desc
 * @property string $preview
 * @property string $previewen
 * @property string $detail
 * @property string $detailen
 * @property string $tag
 * @property string $description
 * @property integer $hits
 * @property integer $record_order
 * @property integer $unit
 * @property integer $hot
 * @property integer $specials
 * @property string $extra_field1
 * @property string $extra_field2
 * @property string $extra_field3
 * @property string $extra_field4
 * @property integer $enable
 * @property integer $dos_module_item_cat_cat_id
 *
 * The followings are the available model relations:
 * @property DosModuleProductsCat $dosModuleItemCatCat
 */
class Products extends CActiveRecord {

    public $remove_pic_thumb;
    private $_oldImage_thumb;
    private $_oldImage_full;
    private $_oldImage_desc;
    private $_subdomain;
    private $_model;

    public function init() {
        $this->_subdomain = Yii::app()->session['subdomain'];
    }

    /**
     * Returns the static model of the specified AR class.
     * @param string $className active record class name.
     * @return Products the static model class
     */
    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

    /**
     * @return string the associated database table name
     */
    public function tableName() {
        return 'dos_module_products';
    }

    /**
     * @return array validation rules for model attributes.
     */
    public function rules() {
        // NOTE: you should only define rules for those attributes that
        // will receive user inputs.
        return array(
            array('title, detail, tag, description, dos_module_item_cat_cat_id', 'required'),
            array('hits, record_order, unit, hot, specials, enable, dos_module_item_cat_cat_id', 'numerical', 'integerOnly' => true),
            array('title, titleen, pic_thumb, pic_full, tag, extra_field1, extra_field2, extra_field3, extra_field4', 'length', 'max' => 100),
            array('tag', 'checkExistsTag'),
            array('pic_desc', 'length', 'max' => 200),
            array('description', 'length', 'max' => 250),
			array('dos_module_usernames_username', 'length', 'max' => 45),
            array('preview, previewen, detailen', 'safe'),
            array('pic_thumb, pic_full, pic_desc', 'file', 'types' => 'gif,png,jpg,jpeg,icon', 'allowEmpty' => true, 'maxSize' => 1024 * 1024 * 5),
            // The following rule is used by search().
            // Please remove those attributes that should not be searched.
            array('record_id, title, titleen, postdate, pic_thumb, pic_full, pic_desc, preview, previewen, detail, detailen, tag, description, hits, record_order, unit, hot, specials, extra_field1, extra_field2, extra_field3, extra_field4, enable, dos_module_item_cat_cat_id', 'safe', 'on' => 'search'),
        );
    }
    public function checkExistsTag($attribute){
        if (GetTag::tag($this->tag, $this->record_id, $this->tableName(), 'id', 2, 'dos_module_products_cat')) {
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
            'ProductsCat' => array(self::BELONGS_TO, 'ProductsCat', 'dos_module_item_cat_cat_id'),
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
            'pic_full' => 'Pic Full',
            'pic_desc' => 'Pic Desc',
            'preview' => 'Preview',
            'previewen' => 'Previewen',
            'detail' => 'Detail',
            'detailen' => 'Detailen',
            'tag' => 'Tag',
            'description' => 'Description',
            'hits' => 'Hits',
            'record_order' => 'Record Order',
            'unit' => 'Unit',
            'hot' => 'Hot',
            'specials' => 'Specials',
            'extra_field1' => 'Extra Field1',
            'extra_field2' => 'Extra Field2',
            'extra_field3' => 'Extra Field3',
            'extra_field4' => 'Extra Field4',
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
        $criteria->compare('pic_full', $this->pic_full, true);
        $criteria->compare('pic_desc', $this->pic_desc, true);
        $criteria->compare('preview', $this->preview, true);
        $criteria->compare('previewen', $this->previewen, true);
        $criteria->compare('detail', $this->detail, true);
        $criteria->compare('detailen', $this->detailen, true);
        $criteria->compare('tag', $this->tag, true);
        $criteria->compare('description', $this->description, true);
        $criteria->compare('hits', $this->hits);
        $criteria->compare('record_order', $this->record_order);
        $criteria->compare('unit', $this->unit);
        $criteria->compare('hot', $this->hot);
        $criteria->compare('specials', $this->specials);
        $criteria->compare('extra_field1', $this->extra_field1, true);
        $criteria->compare('extra_field2', $this->extra_field2, true);
        $criteria->compare('extra_field3', $this->extra_field3, true);
        $criteria->compare('extra_field4', $this->extra_field4, true);
        $criteria->compare('enable', $this->enable);
        $criteria->compare('dos_module_item_cat_cat_id', $this->dos_module_item_cat_cat_id);

        return new CActiveDataProvider($this, array(
                    'criteria' => $criteria,
                ));
    }

	public function beforeSave() {
		$purifier = new CHtmlPurifier();
		$this->title = $purifier->purify($this->title);
		$this->detail = $purifier->purify($this->detail);
		$this->tag = $purifier->purify($this->tag);
		$this->description = $purifier->purify($this->description);

		if ($this->isNewRecord) {
			$this->record_order = $this->maxRecordOrder();
			$this->dos_module_usernames_username = Yii::app()->user->id;
			if ($_FILES[ucfirst(Yii::app()->controller->id)]['name']['pic_thumb']) {
				Yii::import('ext.simpleImage.CSimpleImage');
				$file = new CSimpleImage();
				$this->pic_thumb = $file->processUpload($_FILES[ucfirst(Yii::app()->controller->id)]['name']['pic_thumb'], $_FILES[ucfirst(Yii::app()->controller->id)]['tmp_name']['pic_thumb'], 143, 141, USERFILES . '/' . Yii::app()->controller->id, $this->title . '-thumb');
			}
			if ($_FILES[ucfirst(Yii::app()->controller->id)]['name']['pic_full']) {
				Yii::import('ext.simpleImage.CSimpleImage');
				$file = new CSimpleImage();
				$this->pic_full = $file->processUpload($_FILES[ucfirst(Yii::app()->controller->id)]['name']['pic_full'], $_FILES[ucfirst(Yii::app()->controller->id)]['tmp_name']['pic_full'], 555, 555, USERFILES . '/' . Yii::app()->controller->id, $this->title);
			}
			//pic_desc
			/*if (isset($_FILES[ucfirst(Yii::app()->controller->id)]['name']['pic_desc'])) {
				Yii::import('ext.simpleImage.CSimpleImage');
				$file = new CSimpleImage();
				$this->pic_desc = implode("|", $file->uploadMulti($_FILES[ucfirst(Yii::app()->controller->id)]['name']['pic_desc'], $_FILES[ucfirst(Yii::app()->controller->id)]['tmp_name']['pic_desc'], 555, 555, USERFILES . '/' . Yii::app()->controller->id, $this->title));
			}*/
		} else {
			//check file old and upload
			if ($_FILES[ucfirst(Yii::app()->controller->id)]['name']['pic_thumb']) {
				Yii::import('ext.simpleImage.CSimpleImage');
				$file = new CSimpleImage();
				$this->pic_thumb = $file->processUpload($_FILES[ucfirst(Yii::app()->controller->id)]['name']['pic_thumb'], $_FILES[ucfirst(Yii::app()->controller->id)]['tmp_name']['pic_thumb'], 143, 141, USERFILES . '/' . Yii::app()->controller->id, $this->title . '-thumb', $this->_oldImage_thumb);
			} else {
				//remove picthumb
				if (isset($_POST[ucfirst(Yii::app()->controller->id)]['remove_pic_thumb']) && $_POST[ucfirst(Yii::app()->controller->id)]['remove_pic_thumb'] == 1) {
					$common_class = new Common();
					$common_class->removePic($this->_oldImage_thumb);
					//$this->removePic($this->_oldImage_thumb);
					$this->pic_thumb = '';
				} else {
					$this->pic_thumb = $this->_oldImage_thumb;
				}
			}
			if ($_FILES[ucfirst(Yii::app()->controller->id)]['name']['pic_full']) {
				Yii::import('ext.simpleImage.CSimpleImage');
				$file = new CSimpleImage();
				$this->pic_full = $file->processUpload($_FILES[ucfirst(Yii::app()->controller->id)]['name']['pic_full'], $_FILES[ucfirst(Yii::app()->controller->id)]['tmp_name']['pic_full'], 555, 555, USERFILES . '/' . Yii::app()->controller->id, $this->title, $this->_oldImage_full);
			} else {
				$this->pic_full = $this->_oldImage_full;
			}
			//check remove pic_desc
			/*if (isset($_POST['Products']['remove_pic_desc'])) {
				$str = explode('|', $this->_oldImage_desc);
				foreach ($_POST['Products']['remove_pic_desc'] as $value) {
					$common_class = new Common();
					$common_class->removePic($value);
					//$this->removePic($value);
					unset($str[array_search($value, $str)]);
				}
				$this->_oldImage_desc = $this->pic_desc = implode("|", $str); //parse value to $str $this->_oldImage_desc
			}*/
			//pic_desc
			/*if (isset($_FILES[ucfirst(Yii::app()->controller->id)]['name']['pic_desc'])) {
				Yii::import('ext.simpleImage.CSimpleImage');
				$file = new CSimpleImage();
				$uploaded = $file->uploadMulti($_FILES[ucfirst(Yii::app()->controller->id)]['name']['pic_desc'], $_FILES[ucfirst(Yii::app()->controller->id)]['tmp_name']['pic_desc'], 555, 555, USERFILES . '/' . Yii::app()->controller->id, $this->title);

				$pic_desc = explode('|', $this->_oldImage_desc);
				//push value
				foreach ($uploaded as $value) {
					array_push($pic_desc, $value);
				}
				$this->pic_desc = implode("|", $pic_desc);
			}*/
		}

		return parent::beforeSave();
	}

	//Front end - list item new
	public function listItemNew() {
		$command = Yii::app()->db->createCommand('SELECT record_id, title, pic_thumb, ' . $this->tableName() . '.tag, unit, hot, '.$this->tableName().'_cat.tag AS tagcat FROM ' . $this->tableName() . ', dos_module_products_cat WHERE ' . $this->tableName() . '.dos_module_item_cat_cat_id = dos_module_products_cat.cat_id AND enable = 1 ORDER BY record_order DESC, postdate DESC LIMIT 0, 8');
		return $command->queryAll();
	}

	//Front end - list item hot
	public function listItemHot() {
		$command = Yii::app()->db->createCommand('SELECT record_id, title, pic_thumb, ' . $this->tableName() . '.tag, unit FROM ' . $this->tableName() . ', dos_module_products_cat WHERE ' . $this->tableName() . '.dos_module_item_cat_cat_id = dos_module_products_cat.cat_id AND hot = 1 AND enable = 1 ORDER BY record_order DESC, postdate DESC LIMIT 0, 8');
		return $command->queryAll();
	}

	//Front end - list Item by Cat
	public function listItemByCat($cid) {
		$criteria = new CDbCriteria();
		$criteria->with = array('ProductsCat');
		$criteria->select = 'title, pic_thumb, tag, unit';
		$criteria->order = 'record_order DESC, postdate DESC';
		$criteria->condition = 'enable=1 AND dos_module_item_cat_cat_id=:cid';
		$criteria->params = array(':cid' => $cid);

		$count = Products::model()->count($criteria);

		// elements per page
		$pages = new CPagination($count);
		$pages->pageSize = 8;
		$pages->applyLimit($criteria);

		return array('models' => Products::model()->findAll($criteria), 'pages' => $pages);
	}

	public function listItemAdmin() {
		$criteria = new CDbCriteria();
		$criteria->with = array('ProductsCat');
		$criteria->select = 'record_id, title, hits, record_order, hot, enable';
		$criteria->order = 'record_order DESC, postdate DESC';

		$count = Products::model()->count($criteria);

		// elements per page
		$pages = new CPagination($count);
		$pages->pageSize = 15;
		$pages->applyLimit($criteria);

		return array('models' => Products::model()->findAll($criteria), 'pages' => $pages);
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
	public function deleteRecord($id) {
		$item = Products::model()->find('record_id=:id', array(':id' => $id));

		$common_class = new Common();
		//Del pic_thumb field
		$common_class->removePic($item->pic_thumb);
		//Del pic_full field
		$common_class->removePic($item->pic_full);
		//Del pic_desc field
		$common_class->removePic($item->pic_desc, 1);
		Products::model()->findByPk($id)->delete(); //delete record_id
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
			$criteria->alias = 'p';
			$criteria->join = 'JOIN dos_module_products_cat c ON p.dos_module_item_cat_cat_id = c.cat_id';

			$models = Products::model()->findAll($criteria);

			$i = 1;
			foreach ($models as $model) {
				Products::model()->updateByPk($model['record_id'], array('record_order' => $i));
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

	//Back end - get list item Product_cats
	public function listItemCat() {
		$item = new ProductsCat();
		return $item->listCats();
	}

	//Back end - Get max record
	public function maxRecordOrder() {
		$command = Yii::app()->db->createCommand('SELECT max(record_order) AS max FROM ' . $this->tableName() . ', dos_module_products_cat WHERE dos_module_products_cat.cat_id = ' . $this->tableName() . '.dos_module_item_cat_cat_id');
		return $command->queryScalar() + 1;
	}

	//Back end - Get record to Edit
	public function loadEdit($id) {
		$criteria = new CDbCriteria();
		$criteria->alias = 'p';
		$criteria->join = 'JOIN dos_module_products_cat c ON p.dos_module_item_cat_cat_id = c.cat_id';

		$this->_model = Products::model()->findByPk($id, $criteria);

		if ($this->_model === null) {
			throw new CHttpException(404, 'The requested page does not exist.');
		}
		return $this->_model;
	}
/*
	//Back end - remove pic
	private function removePic($item, $type = 0) {
		$path = YiiBase::getPathOfAlias('webroot') . USERFILES . '/' . Yii::app()->controller->id . '/';
		if ($type == 0) {
			if ($item && file_exists($path . $item)) {
				unlink($path . $item);
			}
		} else {
			if ($item) {
				$str = explode('|', $item);
				foreach ($str as $value) {
					if (file_exists($path . $value)) {
						unlink($path . $value);
					}
				}
			}
		}
	}*/

    /*public function afterFind() {
        parent::afterFind();
        $this->_oldImage_thumb = $this->pic_thumb;
        $this->_oldImage_full = $this->pic_full;
        $this->_oldImage_desc = $this->pic_desc;
    }









    //Front end - get detail item
    public function detailItem($tag) {
        $id = $this->getIDByTag($tag);
        $command = Yii::app()->db->createCommand('SELECT title' . LANG . ', pic_full, pic_desc, detail' . LANG . ', tag, description, unit FROM ' . $this->tableName() . ' WHERE record_id=:id');
        $command->bindParam(":id", $id, PDO::PARAM_INT);
        return $command->queryRow();
    }

    //Front end - find record_id by tag
    private function getIDByTag($tag) {
        $command = Yii::app()->db->createCommand('SELECT record_id FROM ' . $this->tableName() . ' WHERE tag=:tag');
        $command->bindParam(":tag", $tag, PDO::PARAM_STR);
        return $command->queryScalar();
    }


















    //delete item new cat
    public function deleteItembyCat($cat_id) {
        $command = Yii::app()->db->createCommand('SELECT record_id FROM ' . $this->tableName() . ' WHERE dos_module_item_cat_cat_id=:cid');
        $command->bindParam(":cid", $cat_id, PDO::PARAM_INT);
        $result = $command->queryAll();

        foreach ($result as $value) {
            $this->deleteRecord($value['record_id']);
        }
    }

    //update item to new cat
    public function updateItem($cat_id, $cat_id_new) {
        $command = Yii::app()->db->createCommand('UPDATE ' . $this->tableName() . ' SET dos_module_item_cat_cat_id=:new_cid WHERE dos_module_item_cat_cat_id=:cid');
        $command->bindParam(":new_cid", $cat_id_new, PDO::PARAM_INT);
        $command->bindParam(":cid", $cat_id, PDO::PARAM_INT);
        $command->execute();
    }
    //Back end - Count item by user post
    public function countItemByUser(){
        $user = Yii::app()->user->id;
        $command = Yii::app()->db->createCommand('SELECT COUNT(record_id) AS num FROM ' . $this->tableName() . ', ' . $this->tableName() . '_cat WHERE ' . $this->tableName() . '.dos_module_item_cat_cat_id = ' . $this->tableName() . '_cat.cat_id AND dos_usernames_username=:user');
        $command->bindParam(":user", $user, PDO::PARAM_STR);
        return $command->queryScalar();
    }*/
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
		$cat = new ProductsCat();
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
}