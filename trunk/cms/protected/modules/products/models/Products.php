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
            array('postdate, hoiit_module_item_cat_cat_id', 'required'),
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

    public function listItemAdmin() {
        $criteria = new CDbCriteria();
        $criteria->with = array('Language', 'ProductsLanguage');
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
        ProductsLanguage::model()->deleteRecord($id);
        $item = $this::model()->find('record_id=:id', array(':id' => $id));
        Common::removePic($item->pic_thumb, '/image/' . strtolower(__CLASS__)); // remove pic_thumb
        Common::removePic($item->pic_full, '/image/' . strtolower(__CLASS__)); // remove pic_full
        Common::removePic($item->pic_desc, '/image/' . strtolower(__CLASS__), 1); // remove pic_desc
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
}