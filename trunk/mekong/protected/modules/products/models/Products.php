<?php

/**
 * This is the model class for table "hoiit_module_products".
 *
 * The followings are the available columns in table 'hoiit_module_products':
 * @property integer $record_id
 * @property string $postdate
 * @property string $pic_thumb
 * @property string $pic_full
 * @property string $pic_desc
 * @property integer $record_order
 * @property string $unit
 * @property integer $hot
 * @property integer $specials
 * @property string $field1
 * @property string $field2
 * @property string $field3
 * @property string $field4
 * @property integer $enable
 * @property integer $hoiit_module_item_cat_cat_id
 *
 * The followings are the available model relations:
 * @property HoiitModuleProductsCat $hoiitModuleItemCatCat
 * @property HoiitLanguages[] $hoiitLanguages
 */
class Products extends CActiveRecord {
    private $_model;

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
        return 'hoiit_module_products';
    }

    /**
     * @return array validation rules for model attributes.
     */
    public function rules() {
        // NOTE: you should only define rules for those attributes that
        // will receive user inputs.
        return array(
            array('hoiit_module_item_cat_cat_id', 'required'),
            array('record_order, hot, specials, enable, hoiit_module_item_cat_cat_id', 'numerical', 'integerOnly' => true),
            array('pic_thumb, pic_full', 'length', 'max' => 100),
            array('pic_desc', 'length', 'max' => 500),
            array('unit, field1, field2, field3, field4', 'length', 'max' => 45),
            // The following rule is used by search().
            // Please remove those attributes that should not be searched.
            array('record_id, postdate, pic_thumb, pic_full, pic_desc, record_order, unit, hot, specials, field1, field2, field3, field4, enable, hoiit_module_item_cat_cat_id', 'safe', 'on' => 'search'),
        );
    }

    /**
     * @return array relational rules.
     */
    public function relations() {
        // NOTE: you may need to adjust the relation name and the related
        // class name for the relations automatically generated below.
        return array(
            'ProductsCat' => array(self::BELONGS_TO, 'ProductsCat', 'hoiit_module_item_cat_cat_id'),
            'Language' => array(self::MANY_MANY, 'Language', 'hoiit_module_products_languages(record_id, language_id)'),
            'ProductsLanguage' => array(self::HAS_MANY, 'ProductsLanguage', 'record_id', 'index' => 'language_id'),
        );
    }

    /**
     * @return array customized attribute labels (name=>label)
     */
    public function attributeLabels() {
        return array(
            'record_id' => 'Record',
            'postdate' => 'Postdate',
            'pic_thumb' => 'Pic Thumb',
            'pic_full' => 'Pic Full',
            'pic_desc' => 'Pic Desc',
            'record_order' => 'Record Order',
            'unit' => 'Unit',
            'hot' => 'Hot',
            'specials' => 'Specials',
            'field1' => 'Field1',
            'field2' => 'Field2',
            'field3' => 'Field3',
            'field4' => 'Field4',
            'enable' => 'Enable',
            'hoiit_module_item_cat_cat_id' => 'Hoiit Module Item Cat Cat',
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
        $criteria->compare('postdate', $this->postdate, true);
        $criteria->compare('pic_thumb', $this->pic_thumb, true);
        $criteria->compare('pic_full', $this->pic_full, true);
        $criteria->compare('pic_desc', $this->pic_desc, true);
        $criteria->compare('record_order', $this->record_order);
        $criteria->compare('unit', $this->unit, true);
        $criteria->compare('hot', $this->hot);
        $criteria->compare('specials', $this->specials);
        $criteria->compare('field1', $this->field1, true);
        $criteria->compare('field2', $this->field2, true);
        $criteria->compare('field3', $this->field3, true);
        $criteria->compare('field4', $this->field4, true);
        $criteria->compare('enable', $this->enable);
        $criteria->compare('hoiit_module_item_cat_cat_id', $this->hoiit_module_item_cat_cat_id);

        return new CActiveDataProvider($this, array(
            'criteria' => $criteria,
        ));
    }

    //Front end - get detail item
    public function detailItem($tag) {
        $id = ProductsLanguage::model()->getIDByTag($tag);
        $criteria = new CDbCriteria();
        $criteria->condition = 'enable=1';

        $this->_model = $this->findByPk($id, $criteria);

        if ($this->_model === null) {
            throw new CHttpException(404, 'The requested page does not exist.');
        }
        return $this->_model;
    }

    //Front end - list Item by Cat
    public function listOtherItems($id, $cid) {
        $criteria = new CDbCriteria();
        $criteria->order = 'record_order DESC, postdate DESC';
        $criteria->condition = 'record_id NOT IN (:id) AND hoiit_module_item_cat_cat_id=:cid AND enable = 1';
        $criteria->params = array(':id' => $id, ':cid' => $cid);
        $criteria->limit = 4;

        return $this->findAll($criteria);
    }

    //Front end - list Item by Cat
    public function listItemByCat($cid) {
        $criteria = new CDbCriteria();
        $criteria->order = 'record_order DESC, postdate DESC';
        $criteria->condition = 'enable=1 AND hoiit_module_item_cat_cat_id=:cid';
        $criteria->params = array(':cid' => $cid);

        $count = $this->count($criteria);

        // elements per page
        $pages = new CPagination($count);
        $pages->pageSize = 2;
        $pages->applyLimit($criteria);

        return array('models' => $this->findAll($criteria), 'pages' => $pages);
    }

    //Back end - List item admin
    public function listItemAdmin() {
        $criteria = new CDbCriteria();
        //$criteria->with = array('Language', 'ProductsLanguage');
        $criteria->order = 'record_order DESC, postdate DESC';

        $count = $this->count($criteria);

        // elements per page
        $pages = new CPagination($count);
        $pages->pageSize = 15;
        $pages->applyLimit($criteria);

        return array('models' => $this->findAll($criteria), 'pages' => $pages);
    }

    //Back end - Delete Record
    private function deleteRecord($id) {
        ProductsLanguage::model()->deleteRecord($id);

        $item = $this::model()->find('record_id=:id', array(':id' => $id));
        Common::removePic($item->pic_thumb, '/image/' . strtolower(__CLASS__)); // remove pic_thumb
        Common::removePic($item->pic_full, '/image/' . strtolower(__CLASS__)); // remove pic_full
        Common::removePic($item->pic_desc, '/image/' . strtolower(__CLASS__), 1); // remove pic_desc
        $this->findByPk($id)->delete(); //delete record_id
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
                        $this->updateByPk($id, array('record_order' => $order));
                    }
                }
            }
        } else if ($syn) {
            $criteria = new CDbCriteria();
            $criteria->order = 'record_order ASC, postdate ASC';

            $models = $this->findAll($criteria);

            $i = 1;
            foreach ($models as $model) {
                $this->updateByPk($model['record_id'], array('record_order' => $i));
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
                            $this->updateByPk($id, array('enable' => $active));
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

    //Back end - save
    public function saveRecord($model, $id = null) {
        if (Yii::app()->controller->action->id == 'add') {
            $this->unit = $model->unit;
            $this->hot = $model->hot;
            $this->enable = $model->enable;
            $this->hoiit_module_item_cat_cat_id = $model->hoiit_module_item_cat_cat_id;

            //upload picture thumb
            Yii::import('ext.SimpleImage.CSimpleImage');
            $file = new CSimpleImage();
            $this->pic_thumb = $file->processUpload($_FILES[__CLASS__ . 'Form']['name']['pic_thumb'], $_FILES[__CLASS__ . 'Form']['tmp_name']['pic_thumb'], Config::getValue('products_width_thumb'), Config::getValue('products_height_thumb'), '/image/' . lcfirst(__CLASS__), $model['title' . Yii::app()->controller->setting['default_language']] . '-thumb');
            $this->pic_full = $file->processUpload($_FILES[__CLASS__ . 'Form']['name']['pic_full'], $_FILES[__CLASS__ . 'Form']['tmp_name']['pic_full'], Config::getValue('products_width_full'), Config::getValue('products_height_full'), '/image/' . lcfirst(__CLASS__), $model['title' . Yii::app()->controller->setting['default_language']]);
            if (isset($_FILES[__CLASS__ . 'Form']['name']['pic_desc'])) {
                $this->pic_desc = implode("|", $file->uploadMulti($_FILES[__CLASS__ . 'Form']['name']['pic_desc'], $_FILES[__CLASS__ . 'Form']['tmp_name']['pic_desc'], Config::getValue('products_width_desc'), Config::getValue('products_height_desc'), '/image/' . lcfirst(__CLASS__), $model['title' . Yii::app()->controller->setting['default_language']]));
            }

            $this->save();
            $id = $this->record_id;
            $this->updateByPk($id, array('record_order' => $id));
        } else {
            $item = $this->findByPk($id);
            $item->unit = $model->unit;
            $item->hot = $model->hot;
            $item->enable = $model->enable;
            $item->hoiit_module_item_cat_cat_id = $model->hoiit_module_item_cat_cat_id;

            //remove pic_thumb
            if (isset($model->remove_pic_thumb) && $model->remove_pic_thumb == 1) {
                Common::removePic($item->pic_thumb, '/image/' . strtolower(__CLASS__)); // remove pic_thumb
                $item->pic_thumb = null;
            }
            //remove pic_full
            if (isset($model->remove_pic_full) && $model->remove_pic_full == 1) {
                Common::removePic($item->pic_full, '/image/' . strtolower(__CLASS__)); // remove pic_full
                $item->pic_full = null;
            }
            //remove pic_desc
            if (isset($model->remove_pic_desc)) {
                $str = explode('|', $item->pic_desc);
                foreach ($model->remove_pic_desc as $value) {
                    Common::removePic($value, '/image/' . strtolower(__CLASS__));
                    unset($str[array_search($value, $str)]);
                }
                $item->pic_desc = implode("|", $str); //parse value to $str $this->_oldImage_desc
            }

            //upload picture
            Yii::import('ext.SimpleImage.CSimpleImage');
            $file = new CSimpleImage();
            $item->pic_thumb = $file->processUpload($_FILES[__CLASS__ . 'Form']['name']['pic_thumb'], $_FILES[__CLASS__ . 'Form']['tmp_name']['pic_thumb'], Config::getValue('products_width_thumb'), Config::getValue('products_height_thumb'), '/image/' . lcfirst(__CLASS__), $model['title' . Yii::app()->controller->setting['default_language']] . '-thumb', $item->pic_thumb);
            $item->pic_full = $file->processUpload($_FILES[__CLASS__ . 'Form']['name']['pic_full'], $_FILES[__CLASS__ . 'Form']['tmp_name']['pic_full'], Config::getValue('products_width_full'), Config::getValue('products_height_full'), '/image/' . lcfirst(__CLASS__), $model['title' . Yii::app()->controller->setting['default_language']], $item->pic_full);
            //upload pic_desc
            if (isset($_FILES[__CLASS__ . 'Form']['name']['pic_desc'])) {
                $uploaded = $file->uploadMulti($_FILES[__CLASS__ . 'Form']['name']['pic_desc'], $_FILES[__CLASS__ . 'Form']['tmp_name']['pic_desc'], Config::getValue('products_width_desc'), Config::getValue('products_height_desc'), '/image/' . lcfirst(__CLASS__), $model['title' . Yii::app()->controller->setting['default_language']]);
                $pic_desc = ($item->pic_desc) ? explode('|', $item->pic_desc) : array();
                //push value
                foreach ($uploaded as $value) {
                    array_push($pic_desc, $value);
                }
                $item->pic_desc = implode("|", $pic_desc);
            }

            $item->save();
        }
        ProductsLanguage::model()->saveRecord($id, $model);
    }

    //Back end - Get record to Edit
    public function loadEdit($id) {
        $command = Yii::app()->db->createCommand('SELECT pic_thumb, pic_full, pic_desc, unit, hot, enable, hoiit_module_item_cat_cat_id FROM ' . $this->tableName() . ' WHERE record_id=:id');
        $command->bindParam(":id", $id, PDO::PARAM_INT);
        return $command->queryRow();
    }

    //Back end - Get ID by Cat
    private function getIdByCatId($id) {
        $command = Yii::app()->db->createCommand('SELECT record_id FROM ' . $this->tableName() . ' WHERE hoiit_module_item_cat_cat_id=:cid');
        $command->bindParam(":cid", $id, PDO::PARAM_INT);
        return $command->queryAll();
    }

    //Back end - delete item new cat
    public function deleteItembyCat($cat_id) {
        $result = $this->getIdByCatId($cat_id);
        foreach ($result as $value) {
            $this->deleteRecord($value['record_id']);
        }
    }

    //Back end - delete Item for Cat
    public function delItembyCat($data = NULL) {
        $id = $data->getQuery('id');
        $result = $this->getIdByCatId($id);

        if ($data->getPost('delitems') == 'del') {
            foreach ($result as $value) {
                $this->deleteRecord($value['record_id']); //delete record
            }
        } elseif ($data->getPost('delitems') == 'move') {
            $cat_move = $data->getPost('catmove');
            foreach ($result as $value) {
                $this->updateByPk($value['record_id'], array('hoiit_module_item_cat_cat_id' => $cat_move));
            }
        }
        //move all sub cat to new cat parent
        $cat = new ProductsCat();
        if ($data->getPost('delcat') == 'move') {
            $cat->findcatParent($id, $data->getPost('movetocat'));
        } elseif ($data->getPost('delcat') == 'del') {
            if ($data->getPost('movecat') == 'del') {
                $cat->loopDelItemtoCat($id);
            } elseif ($data->getPost('movecat') == 'move') {
                $cat->loopMoveItemtoCat($id, $data->getPost('moveprotocat'));
            }
            //delete all sub cat
            $cat->loopDelSubCat($id);
        }
        $cat->deleteRecord($id);
    }
}