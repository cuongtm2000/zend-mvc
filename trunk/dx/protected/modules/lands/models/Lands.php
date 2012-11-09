<?php

/**
 * This is the model class for table "hoiit_module_lands".
 *
 * The followings are the available columns in table 'hoiit_module_lands':
 *
 * The followings are the available model relations:
 * @property HoiitModuleLandsCat $hoiitModuleItemCatCat
 * @property HoiitLanguages[] $hoiitLanguages
 */
class Lands extends CActiveRecord {

    private $_model;

    /**
     * Returns the static model of the specified AR class.
     * @param string $className active record class name.
     * @return Lands the static model class
     */
    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

    /**
     * @return string the associated database table name
     */
    public function tableName() {
        return 'hoiit_module_lands';
    }

    /**
     * @return array validation rules for model attributes.
     */
    public function rules() {
        // NOTE: you should only define rules for those attributes that
        // will receive user inputs.
        return array(
            array('hoiit_module_item_cat_cat_id, hoiit_module_item_type_type_id, hoiit_module_lands_provinces_province_id, username, contact_name, contact_tel', 'required'),
            array('record_order, hot, specials, enable, hoiit_module_item_cat_cat_id', 'numerical', 'integerOnly' => true),
            array('pic_thumb, pic_full', 'length', 'max' => 100),
            array('pic_desc', 'length', 'max' => 500),
            array('price', 'length', 'max' => 45),
            // The following rule is used by search().
            // Please remove those attributes that should not be searched.
            array('record_id, postdate, pic_thumb, pic_full, pic_desc, record_order, price, hot, specials, enable, hoiit_module_item_cat_cat_id', 'safe', 'on' => 'search'),
        );
    }

    /**
     * @return array relational rules.
     */
    public function relations() {
        // NOTE: you may need to adjust the relation name and the related
        // class name for the relations automatically generated below.
        return array(
            'LandsCat' => array(self::BELONGS_TO, 'LandsCat', 'hoiit_module_item_cat_cat_id'),
            //'Language' => array(self::MANY_MANY, 'Language', 'hoiit_module_lands_languages(record_id, language_id)'),
            'LandsLanguage' => array(self::HAS_MANY, 'LandsLanguage', 'record_id', 'index' => 'language_id'),
            'LandsType' => array(self::BELONGS_TO, 'LandsType', 'hoiit_module_item_type_type_id'),
            'LandsProvinces' => array(self::BELONGS_TO, 'Provinces', 'hoiit_module_lands_provinces_province_id'),
            'username0' => array(self::BELONGS_TO, 'ModuleLandsUsers', 'username'),
        );
    }

    /**
     * @return array customized attribute labels (name=>label)
     */
    public function attributeLabels() {
        return array(
            'pic_thumb' => 'Pic Thumb',
            'pic_full' => 'Pic Full',
            'pic_desc' => 'Pic Desc',
            'record_order' => 'Record Order',
            'price' => 'Giá:',
            'hot' => 'Hot',
            'specials' => 'Specials',
            'hoiit_module_item_cat_cat_id' => 'Loại bất động sản',
        );
    }

    /**
     * Retrieves a list of models based on the current search/filter conditions.
     * @return CActiveDataProvider the data provider that can return the models based on the search/filter conditions.
     */
    public function search($data) {

        $criteria = new CDbCriteria;
        //     var_dump( $data);
        if (isset($data['price']) && $data['price'] != '') {
            $p = explode('-', $data['price']);
            $criteria->compare('price', '>= ' . $p[0] . '000000');
            $criteria->compare('price', '< ' . $p[1] . '000000');
        }

        if (isset($data['cats']))
            $criteria->compare('hoiit_module_item_cat_cat_id', $data['cats']);
        if (isset($data['provinces']))
            $criteria->compare('hoiit_module_lands_provinces_province_id', $data['provinces']);
        if (isset($data['types']))
            $criteria->compare('hoiit_module_item_type_type_id', $data['types']);
        //var_dump($criteria);
        return $this->findAll($criteria);
    }

    public function searchLands() {
        
    }
	
	//Front end - list Item by Type
    public function listItemByType($type) {
        $criteria = new CDbCriteria();
        $criteria->order = 'record_order DESC, postdate DESC';
        $criteria->condition = 'enable=1 AND hoiit_module_item_type_type_id=:type';
        $criteria->params = array(':type' => $type);
		$criteria->limit = Config::getValue('lands_num_item_index');
		
		return $this->findAll($criteria);

        /*$count = $this->count($criteria);
        // elements per page
        $pages = new CPagination($count);
        $pages->pageSize = 2;
        $pages->applyLimit($criteria);

        return array('models' => $this->findAll($criteria), 'pages' => $pages);*/
    }
	
	//Front end - list item new
    public function listItemsNew() {
        $criteria = new CDbCriteria();
        $criteria->with = array(__CLASS__ . 'Cat');
        $criteria->order = 'record_order DESC, postdate DESC';
        $criteria->condition = 'enable = 1';
        $criteria->limit = Config::getValue('lands_num_item_new');

        return $this->findAll($criteria);
    }

    //Front end - get detail item
    public function detailItem($tag) {
        $id = LandsLanguage::model()->getIDByTag($tag);
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
        //$criteria->with = array('Language', 'LandsLanguage');
        $criteria->order = 'record_order DESC, postdate DESC';

        $count = $this->count($criteria);

        // elements per page
        $pages = new CPagination($count);
        $pages->pageSize = 15;
        $pages->applyLimit($criteria);

        return array('models' => $this->findAll($criteria), 'pages' => $pages);
    }

    //Back end - List item admin
    public function listItemUser() {
        $criteria = new CDbCriteria();
        //$criteria->with = array('Language', 'LandsLanguage');
        $criteria->order = 'record_order DESC, postdate DESC';
        $criteria->condition = 'username =:user';
        $criteria->params = array(":user" => Yii::app()->memberLands->id);

        $count = $this->count($criteria);

        // elements per page
        $pages = new CPagination($count);
        $pages->pageSize = 15;
        $pages->applyLimit($criteria);

        return array('models' => $this->findAll($criteria), 'pages' => $pages);
    }

    //Back end - Delete Record
    public function deleteRecord($id) {
        LandsLanguage::model()->deleteRecord($id);

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
            $this->price = $model->price;
            $this->hot = $model->hot;
            $this->hoiit_module_item_cat_cat_id = $model->hoiit_module_item_cat_cat_id;
            $this->hoiit_module_item_type_type_id = $model->hoiit_module_item_type_type_id;
            $this->contact_name = $model->contact_name;
            $this->contact_tel = $model->contact_tel;
            $this->hoiit_module_lands_provinces_province_id = $model->hoiit_module_lands_provinces_province_id;
            $this->keys = $model->keys;
            $this->username = Yii::app()->memberLands->id;
            //upload picture thumb
            Yii::import('ext.SimpleImage.CSimpleImage');
            $file = new CSimpleImage();
            $this->pic_thumb = $file->processUpload($_FILES[__CLASS__ . 'Form']['name']['pic_thumb'], $_FILES[__CLASS__ . 'Form']['tmp_name']['pic_thumb'], Config::getValue('lands_width_thumb'), Config::getValue('lands_height_thumb'), '/image/' . lcfirst(__CLASS__), $model['title' . Yii::app()->controller->setting['default_language']] . '-thumb');
            $this->pic_full = $file->processUpload($_FILES[__CLASS__ . 'Form']['name']['pic_full'], $_FILES[__CLASS__ . 'Form']['tmp_name']['pic_full'], Config::getValue('lands_width_full'), Config::getValue('lands_height_full'), '/image/' . lcfirst(__CLASS__), $model['title' . Yii::app()->controller->setting['default_language']]);
            if (isset($_FILES[__CLASS__ . 'Form']['name']['pic_desc'])) {
                $this->pic_desc = implode("|", $file->uploadMulti($_FILES[__CLASS__ . 'Form']['name']['pic_desc'], $_FILES[__CLASS__ . 'Form']['tmp_name']['pic_desc'], Config::getValue('lands_width_desc'), Config::getValue('lands_height_desc'), Yii::getPathOfAlias('filePathUpload') . '/image/' . lcfirst(__CLASS__) . '/', $model['title' . Yii::app()->controller->setting['default_language']]));
            }

            $this->save();
            $id = $this->record_id;
            //   var_dump($this);
            $this->updateByPk($id, array('record_order' => $id));
        } else {
            $item = $this->findByPk($id);
            $this->price = $model->price;
            $this->hot = $model->hot;
            $this->hoiit_module_item_cat_cat_id = $model->hoiit_module_item_cat_cat_id;
            $this->hoiit_module_item_type_type_id = $model->hoiit_module_item_type_type_id;
            $this->contact_name = $model->contact_name;
            $this->contact_tel = $model->contact_tel;
            $this->hoiit_module_lands_provinces_province_id = $model->hoiit_module_lands_provinces_province_id;
            $this->keys = $model->keys;

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
            $item->pic_thumb = $file->processUpload($_FILES[__CLASS__ . 'Form']['name']['pic_thumb'], $_FILES[__CLASS__ . 'Form']['tmp_name']['pic_thumb'], Config::getValue('lands_width_thumb'), Config::getValue('lands_height_thumb'), '/image/' . lcfirst(__CLASS__), $model['title' . Yii::app()->controller->setting['default_language']] . '-thumb', $item->pic_thumb);
            $item->pic_full = $file->processUpload($_FILES[__CLASS__ . 'Form']['name']['pic_full'], $_FILES[__CLASS__ . 'Form']['tmp_name']['pic_full'], Config::getValue('lands_width_full'), Config::getValue('lands_height_full'), '/image/' . lcfirst(__CLASS__), $model['title' . Yii::app()->controller->setting['default_language']], $item->pic_full);
            //upload pic_desc
            if (isset($_FILES[__CLASS__ . 'Form']['name']['pic_desc'])) {
                $uploaded = $file->uploadMulti($_FILES[__CLASS__ . 'Form']['name']['pic_desc'], $_FILES[__CLASS__ . 'Form']['tmp_name']['pic_desc'], Config::getValue('lands_width_desc'), Config::getValue('lands_height_desc'), Yii::getPathOfAlias('filePathUpload') . '/image/' . lcfirst(__CLASS__) . '/', $model['title' . Yii::app()->controller->setting['default_language']]);
                $pic_desc = ($item->pic_desc) ? explode('|', $item->pic_desc) : array();
                //push value
                foreach ($uploaded as $value) {
                    array_push($pic_desc, $value);
                }
                $item->pic_desc = implode("|", $pic_desc);
            }

            $item->save();
        }

        LandsLanguage::model()->saveRecord($id, $model);
    }

    //Back end - Get record to Edit
    public function loadEdit($id) {
        // $command = Yii::app()->db->createCommand('SELECT pic_thumb, pic_full, pic_desc, price, hot, enable, hoiit_module_item_cat_cat_id FROM ' . $this->tableName() . ' WHERE record_id=:id');
        //$command->bindParam(":id", $id, PDO::PARAM_INT);
        //return $command->queryRow();
        return $this->findByPk($id);
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
        $cat = new LandsCat();
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