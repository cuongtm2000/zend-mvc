<?php

/**
 * This is the model class for table "hoiit_module_news".
 *
 * The followings are the available columns in table 'hoiit_module_news':
 * @property integer $record_id
 * @property string $postdate
 * @property string $pic_thumb
 * @property string $pic_desc
 * @property integer $record_order
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
 * @property HoiitModuleNewsCat $hoiitModuleItemCatCat
 * @property HoiitLanguages[] $hoiitLanguages
 */
class News extends CActiveRecord {
    private $_model;

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
        return 'hoiit_module_news';
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
            array('pic_thumb', 'length', 'max' => 100),
            array('pic_desc', 'length', 'max' => 500),
            array('field1, field2, field3, field4', 'length', 'max' => 45),
            // The following rule is used by search().
            // Please remove those attributes that should not be searched.
            array('record_id, postdate, pic_thumb, pic_desc, record_order, hot, specials, field1, field2, field3, field4, enable, hoiit_module_item_cat_cat_id', 'safe', 'on' => 'search'),
        );
    }

    /**
     * @return array relational rules.
     */
    public function relations() {
        // NOTE: you may need to adjust the relation name and the related
        // class name for the relations automatically generated below.
        return array(
            'NewsCat' => array(self::BELONGS_TO, 'NewsCat', 'hoiit_module_item_cat_cat_id'),
            'Language' => array(self::MANY_MANY, 'Language', 'hoiit_module_news_languages(record_id, language_id)'),
            'NewsLanguage' => array(self::HAS_MANY, 'NewsLanguage', 'record_id', 'index' => 'language_id'),
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
            'pic_desc' => 'Pic Desc',
            'record_order' => 'Record Order',
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
        $criteria->compare('pic_desc', $this->pic_desc, true);
        $criteria->compare('record_order', $this->record_order);
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
        $id = NewsLanguage::model()->getIDByTag($tag);
        $criteria = new CDbCriteria();
        $criteria->condition = 'enable=1';

        $this->_model = $this->model()->findByPk($id, $criteria);

        if ($this->_model === null) {
            throw new CHttpException(404, 'The requested page does not exist.');
        }
        return $this->_model;
    }

    public function ListFirst() {
        $criteria = new CDbCriteria();
        $criteria->order = 'record_order DESC, postdate DESC';
        $criteria->condition = 'enable = 1';
        return array('item_first' => $this->model()->find($criteria), 'list_next' => $this->listNext());
    }

    private function listNext() {
        $criteria = new CDbCriteria();
        $criteria->order = 'record_order DESC, postdate DESC';
        $criteria->condition = 'enable = 1';
        $criteria->limit = 7;
        $criteria->offset = 1;
        return $this->model()->findAll($criteria);
    }

    public function listItemsNew() {
        $criteria = new CDbCriteria();
        //$criteria->with = array(__CLASS__ . 'Language');
        $criteria->order = 'record_order DESC, postdate DESC';
        $criteria->condition = 'enable = 1';
        $criteria->limit = Config::getValue('news_num_item_new');

        return $this->model()->findAll($criteria);
    }

    public function listItemsHot() {
        $criteria = new CDbCriteria();
        //$criteria->with = array(__CLASS__ . 'Language');
        $criteria->order = 'record_order DESC, postdate DESC';
        $criteria->condition = 'hot = 1 AND enable = 1';
        $criteria->limit = Config::getValue('news_num_item_hot');

        return $this->model()->findAll($criteria);
    }

    public function listItemsIndex() {
        $criteria = new CDbCriteria();
        $criteria->order = 'record_order DESC, postdate DESC';
        $criteria->condition = 'enable = 1';
        $count = $this->model()->count($criteria);

        // elements per page
        $pages = new CPagination($count);
        $pages->pageSize = Config::getValue('news_num_item_index');
        $pages->applyLimit($criteria);

        return array('models' => $this->model()->findAll($criteria), 'pages' => $pages);
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
        $pages->pageSize = Config::getValue('news_num_item_cat');
        $pages->applyLimit($criteria);

        return array('models' => $this::model()->findAll($criteria), 'pages' => $pages);
    }

    //Back end - List item admin
    public function listItemAdmin() {
        $criteria = new CDbCriteria();
        $criteria->with = array('Language', 'NewsLanguage');
        $criteria->order = 'record_order DESC, postdate DESC';

        $count = $this::model()->count($criteria);

        // elements per page
        $pages = new CPagination($count);
        $pages->pageSize = 15;
        $pages->applyLimit($criteria);

        return array('models' => $this::model()->findAll($criteria), 'pages' => $pages);
    }

    //Back end - Delete Record
    private function deleteRecord($id) {
        NewsLanguage::model()->deleteRecord($id);

        $item = $this::model()->find('record_id=:id', array(':id' => $id));
        Common::removePic($item->pic_thumb, '/image/' . strtolower(__CLASS__)); // remove pic_thumb
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
                        $this::model()->updateByPk($id, array('record_order' => $order));
                    }
                }
            }
        } else if ($syn) {
            $criteria = new CDbCriteria();
            $criteria->order = 'record_order ASC, postdate ASC';

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
                            $this::model()->updateByPk($id, array('enable' => $active));
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
            $this->hot = $model->hot;
            $this->enable = $model->enable;
            $this->hoiit_module_item_cat_cat_id = $model->hoiit_module_item_cat_cat_id;

            //upload picture thumb
            Yii::import('ext.SimpleImage.CSimpleImage');
            $file = new CSimpleImage();
            $this->pic_thumb = $file->processUpload($_FILES[__CLASS__ . 'Form']['name']['pic_thumb'], $_FILES[__CLASS__ . 'Form']['tmp_name']['pic_thumb'], Config::getValue('news_width_thumb'), Config::getValue('news_height_thumb'), '/image/' . lcfirst(__CLASS__), $model['title' . Yii::app()->controller->setting['default_language']]);

            $this->save();
            $id = $this->record_id;
            $this::model()->updateByPk($id, array('record_order' => $id));
        } else {
            $item = $this::model()->findByPk($id);
            $item->hot = $model->hot;
            $item->enable = $model->enable;
            $item->hoiit_module_item_cat_cat_id = $model->hoiit_module_item_cat_cat_id;

            //remove pic_thumb
            if (isset($model->remove_pic_thumb) && $model->remove_pic_thumb == 1) {
                Common::removePic($item->pic_thumb, '/image/' . strtolower(__CLASS__)); // remove pic_thumb
                $item->pic_thumb = null;
            }

            //upload picture
            Yii::import('ext.SimpleImage.CSimpleImage');
            $file = new CSimpleImage();
            $item->pic_thumb = $file->processUpload($_FILES[__CLASS__ . 'Form']['name']['pic_thumb'], $_FILES[__CLASS__ . 'Form']['tmp_name']['pic_thumb'], Config::getValue('news_width_thumb'), Config::getValue('news_height_thumb'), '/image/' . lcfirst(__CLASS__), $model['title' . Yii::app()->controller->setting['default_language']], $item->pic_thumb);

            $item->save();
        }
        NewsLanguage::model()->saveRecord($id, $model);
    }

    //Back end - Get record to Edit
    public function loadEdit($id) {
        $command = Yii::app()->db->createCommand('SELECT pic_thumb, hot, enable, hoiit_module_item_cat_cat_id FROM ' . $this->tableName() . ' WHERE record_id=:id');
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
                $this::model()->updateByPk($value['record_id'], array('hoiit_module_item_cat_cat_id' => $cat_move));
            }
        }
        //move all sub cat to new cat parent
        $cat = new NewsCat();
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