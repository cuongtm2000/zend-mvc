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
 * @property integer $dos_module_product_cats_cat_id
 *
 * The followings are the available model relations:
 * @property DosModuleProductCats $dosModuleProductCatsCat
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
            array('title, detail, tag, description, dos_module_product_cats_cat_id', 'required'),
            array('hits, record_order, unit, hot, specials, enable, dos_module_product_cats_cat_id, remove_pic_thumb', 'numerical', 'integerOnly' => true),
            array('title, titleen, pic_thumb, pic_full, pic_desc, tag, extra_field1, extra_field2, extra_field3, extra_field4', 'length', 'max' => 100),
            array('description', 'length', 'max' => 250),
            array('preview, previewen, detailen', 'safe'),
            array('remove_pic_desc', 'unsafe'),
            array('pic_thumb, pic_full, pic_desc', 'file', 'types' => 'gif,png,jpg,jpeg,icon', 'allowEmpty' => true, 'maxSize' => 1024 * 1024 * 5),
            // The following rule is used by search().
            // Please remove those attributes that should not be searched.,
            array('record_id, title, titleen, postdate, pic_thumb, pic_full, pic_desc, preview, previewen, detail, detailen, tag, description, hits, record_order, unit, hot, specials, extra_field1, extra_field2, extra_field3, extra_field4, enable, dos_module_product_cats_cat_id', 'safe', 'on' => 'search'),
        );
    }

    /**
     * @return array relational rules.
     */
    public function relations() {
        // NOTE: you may need to adjust the relation name and the related
        // class name for the relations automatically generated below.
        return array(
            'productCats' => array(self::BELONGS_TO, 'ProductCats', 'dos_module_product_cats_cat_id'),
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
            'dos_module_product_cats_cat_id' => 'Dos Module Product Cats Cat',
            'remove_pic_thumb' => ' Remove pic thumb',
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
        $criteria->compare('dos_module_product_cats_cat_id', $this->dos_module_product_cats_cat_id);

        return new CActiveDataProvider($this, array(
                    'criteria' => $criteria,
                ));
    }

    public function afterFind() {
        parent::afterFind();
        $this->_oldImage_thumb = $this->pic_thumb;
        $this->_oldImage_full = $this->pic_full;
        $this->_oldImage_desc = $this->pic_desc;
    }

    public function beforeSave() {
        $purifier = new CHtmlPurifier();
        $this->title = $purifier->purify($this->title);
        $this->detail = $purifier->purify($this->detail);
        $this->tag = $purifier->purify($this->tag);
        $this->description = $purifier->purify($this->description);

        //check file old and upload
        if (!$this->isNewRecord) {
            if ($_FILES[ucfirst(Yii::app()->controller->id)]['name']['pic_thumb']) {
                Yii::import('ext.simpleImage.CSimpleImage');
                $file = new CSimpleImage($_FILES[ucfirst(Yii::app()->controller->id)]['name']['pic_thumb'], $_FILES[ucfirst(Yii::app()->controller->id)]['tmp_name']['pic_thumb'], Configs::configTemplate('products_width_thumb', Yii::app()->session['template']), Configs::configTemplate('products_height_thumb', Yii::app()->session['template']), Yii::app()->controller->id, $this->_oldImage_thumb);
                $this->pic_thumb = $file->getFilename();
            } else {
                //remove picthumb
                if (isset($_POST[ucfirst(Yii::app()->controller->id)]['remove_pic_thumb']) && $_POST[ucfirst(Yii::app()->controller->id)]['remove_pic_thumb'] == 1) {
                    $path_upload = YiiBase::getPathOfAlias('webroot') . '/public/userfiles/images/' . Yii::app()->session['subdomain'] . '/images/' . Yii::app()->controller->id . '/';
                    if (file_exists($path_upload . $this->_oldImage_thumb)) {
                        unlink($path_upload . $this->_oldImage_thumb);
                    }
                    $this->pic_thumb = '';
                } else {
                    $this->pic_thumb = $this->_oldImage_thumb;
                }
            }
            if ($_FILES[ucfirst(Yii::app()->controller->id)]['name']['pic_full']) {
                Yii::import('ext.simpleImage.CSimpleImage');
                $file = new CSimpleImage($_FILES[ucfirst(Yii::app()->controller->id)]['name']['pic_full'], $_FILES[ucfirst(Yii::app()->controller->id)]['tmp_name']['pic_full'], Configs::configTemplate('products_width', Yii::app()->session['template']), Configs::configTemplate('products_height', Yii::app()->session['template']), Yii::app()->controller->id, $this->_oldImage_full);
                $this->pic_full = $file->getFilename();
            } else {
                $this->pic_full = $this->_oldImage_full;
            }
            //check remove pic_desc
            if (isset($_POST['Products']['remove_pic_desc'])) {
                $str = explode('|', $this->_oldImage_desc);
                foreach ($_POST['Products']['remove_pic_desc'] as $value) {
                    $this->removePic($value);
                    unset($str[array_search($value, $str)]);
                }
                $this->_oldImage_desc = $this->pic_desc = implode("|", $str); //parse value to $str $this->_oldImage_desc
            }
            //pic_desc
            if (isset($_FILES[ucfirst(Yii::app()->controller->id)]['name']['pic_desc'])) {
                Yii::import('ext.uploadImage.uploadImage');
                $file = new uploadImage();
                $uploaded = $file->uploadMulti($_FILES[ucfirst(Yii::app()->controller->id)]['name']['pic_desc'], $_FILES[ucfirst(Yii::app()->controller->id)]['tmp_name']['pic_desc'], Configs::configTemplate('products_width', Yii::app()->session['template']), Configs::configTemplate('products_height', Yii::app()->session['template']), Yii::app()->controller->id);

                $pic_desc = explode('|', $this->_oldImage_desc);
                //push value
                foreach ($uploaded as $value) {
                    array_push($pic_desc, $value);
                }
                $this->pic_desc = implode("|", $pic_desc);
            }
        } else {
            $this->record_order = $this->maxRecordOrder();
            if ($_FILES[ucfirst(Yii::app()->controller->id)]['name']['pic_thumb']) {
                Yii::import('ext.simpleImage.CSimpleImage');
                $file = new CSimpleImage($_FILES[ucfirst(Yii::app()->controller->id)]['name']['pic_thumb'], $_FILES[ucfirst(Yii::app()->controller->id)]['tmp_name']['pic_thumb'], Configs::configTemplate('products_width_thumb', Yii::app()->session['template']), Configs::configTemplate('products_height_thumb', Yii::app()->session['template']), Yii::app()->controller->id);
                $this->pic_thumb = $file->getFilename();
            }
            if ($_FILES[ucfirst(Yii::app()->controller->id)]['name']['pic_full']) {
                Yii::import('ext.simpleImage.CSimpleImage');
                $file = new CSimpleImage($_FILES[ucfirst(Yii::app()->controller->id)]['name']['pic_full'], $_FILES[ucfirst(Yii::app()->controller->id)]['tmp_name']['pic_full'], Configs::configTemplate('products_width', Yii::app()->session['template']), Configs::configTemplate('products_height', Yii::app()->session['template']), Yii::app()->controller->id);
                $this->pic_full = $file->getFilename();
            }
            //pic_desc
            if (isset($_FILES[ucfirst(Yii::app()->controller->id)]['name']['pic_desc'])) {
                Yii::import('ext.uploadImage.uploadImage');
                $file = new uploadImage();
                $this->pic_desc = implode("|", $file->uploadMulti($_FILES[ucfirst(Yii::app()->controller->id)]['name']['pic_desc'], $_FILES[ucfirst(Yii::app()->controller->id)]['tmp_name']['pic_desc'], Configs::configTemplate('products_width', Yii::app()->session['template']), Configs::configTemplate('products_height', Yii::app()->session['template']), Yii::app()->controller->id));
            }
        }

        return parent::beforeSave();
    }

    //Front end - list item new
    public function listItemNew() {
        $command = Yii::app()->db->createCommand('SELECT record_id, title' . LANG . ', pic_thumb, ' . $this->tableName() . '.tag, unit, hot FROM ' . $this->tableName() . ', dos_module_product_cats WHERE ' . $this->tableName() . '.dos_module_product_cats_cat_id = dos_module_product_cats.cat_id AND dos_usernames_username=:user ORDER BY record_order DESC, postdate DESC LIMIT 0, 8');
        $command->bindParam(":user", $this->_subdomain, PDO::PARAM_STR);
        return $command->queryAll();
    }

    //Front end - list Item by Cat
    public function listItemByCat($cid) {
        $criteria = new CDbCriteria();
        $criteria->select = 'title' . LANG . ', pic_thumb, tag, unit';
        $criteria->order = 'record_order DESC, postdate DESC';
        $criteria->condition = 'enable=1 AND dos_module_product_cats_cat_id=:cid';
        $criteria->params = array(':cid' => $cid);

        $count = $this::model()->count($criteria);

        // elements per page
        $pages = new CPagination($count);
        $pages->pageSize = 8;
        $pages->applyLimit($criteria);

        return array('models' => $this::model()->findAll($criteria), 'pages' => $pages);
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

    public function listItemAdmin() {
        $criteria = new CDbCriteria();
        $criteria->with = array('productCats');
        $criteria->select = 'record_id, title, hits, record_order, hot, enable';
        $criteria->order = 'record_order DESC, postdate DESC';
        $criteria->condition = 'dos_usernames_username=:user';
        $criteria->params = array(':user' => Yii::app()->user->id);

        $count = $this::model()->count($criteria);

        // elements per page
        $pages = new CPagination($count);
        $pages->pageSize = 15;
        $pages->applyLimit($criteria);

        return array('models' => $this::model()->findAll($criteria), 'pages' => $pages);
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
    }

    //Back end - Delete Record
    public function deleteRecord($id) {
        $item = $this::model()->find('record_id=:id', array(':id' => $id));
        //Del pic_thumb field
        $this->removePic($item->pic_thumb);
        //Del pic_full field
        $this->removePic($item->pic_full);
        //Del pic_desc field
        $this->removePic($item->pic_desc, 1);
        $this::model()->findByPk($id)->delete(); //delete record_id
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
            $criteria->join = 'JOIN dos_module_product_cats c ON p.dos_module_product_cats_cat_id = c.cat_id';
            $criteria->condition = 'dos_usernames_username=:user';
            $criteria->params = array(':user' => Yii::app()->user->id);

            $models = $this::model()->findAll($criteria);

            $i = 1;
            foreach ($models as $model) {
                $this::model()->updateByPk($model['record_id'], array('record_order' => $i));
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
        $user = Yii::app()->user->id;
        $command = Yii::app()->db->createCommand('SELECT max(record_order) AS max FROM ' . $this->tableName() . ', dos_module_product_cats WHERE dos_module_product_cats.cat_id = ' . $this->tableName() . '.dos_module_product_cats_cat_id AND dos_usernames_username=:user');
        $command->bindParam(":user", $user, PDO::PARAM_STR);
        return $command->queryScalar() + 1;
    }

    //Back end - get list item Product_cats
    public function listItemCat() {
        $item = new ProductCats();
        return $item->listItemAdminAction();
    }

    //Back end - Get record to Edit
    public function loadEdit($id) {
        $criteria = new CDbCriteria();
        $criteria->alias = 'p';
        $criteria->join = 'JOIN dos_module_product_cats c ON p.dos_module_product_cats_cat_id = c.cat_id';
        $criteria->condition = 'dos_usernames_username=:user';
        $criteria->params = array(':user' => Yii::app()->user->id);

        $this->_model = $this::model()->findByPk($id, $criteria);

        if ($this->_model === null) {
            throw new CHttpException(404, 'The requested page does not exist.');
        }
        return $this->_model;
    }

    //Back end - count item by cat
    public function countItemByCat($id) {
        $command = Yii::app()->db->createCommand('SELECT COUNT(record_id) FROM ' . $this->tableName() . ' WHERE dos_module_product_cats_cat_id=:id');
        $command->bindParam(":id", $id, PDO::PARAM_INT);
        return $command->queryScalar();
    }

    //Back end - delete Item for Cat
    public function delItembyCat($data = NULL) {
        $id = $data->getQuery('id');
        $command = Yii::app()->db->createCommand('SELECT record_id FROM ' . $this->tableName() . ' WHERE dos_module_product_cats_cat_id=:id');
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
                $command = Yii::app()->db->createCommand('UPDATE ' . $this->tableName() . ' SET dos_module_product_cats_cat_id=:cid WHERE record_id=:id');
                $command->bindParam(":cid", $cat_move, PDO::PARAM_INT);
                $command->bindParam(":id", $value['record_id'], PDO::PARAM_INT);
                $command->execute();
            }
        }
        //move all subcat to new cat parent
        $cat = new ProductCats();
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

    //delete item new cat
    public function deleteItembyCat($cat_id) {
        $command = Yii::app()->db->createCommand('SELECT record_id FROM ' . $this->tableName() . ' WHERE dos_module_product_cats_cat_id=:cid');
        $command->bindParam(":cid", $cat_id, PDO::PARAM_INT);
        $result = $command->queryAll();

        foreach ($result as $value) {
            $this->deleteRecord($value['record_id']);
        }
    }

    //update item to new cat
    public function updateItem($cat_id, $cat_id_new) {
        $command = Yii::app()->db->createCommand('UPDATE ' . $this->tableName() . ' SET dos_module_product_cats_cat_id=:new_cid WHERE dos_module_product_cats_cat_id=:cid');
        $command->bindParam(":new_cid", $cat_id_new, PDO::PARAM_INT);
        $command->bindParam(":cid", $cat_id, PDO::PARAM_INT);
        $command->execute();
    }

}