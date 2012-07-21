<?php

/**
 * This is the model class for table "hoiit_module_products_cat".
 *
 * The followings are the available columns in table 'hoiit_module_products_cat':
 * @property integer $cat_id
 * @property integer $cat_parent_id
 * @property string $cat_created
 * @property string $pic_thumb
 * @property string $pic_desc
 * @property integer $cat_hot
 * @property integer $cat_order
 * @property string $cat_extra1
 * @property string $cat_extra2
 * @property integer $cat_enable
 *
 * The followings are the available model relations:
 * @property HoiitLanguages[] $hoiitLanguages
 */
class ProductsCat extends CActiveRecord {
    private $_data;
    private $_rows;
    private $_rowsize;

    /**
     * Returns the static model of the specified AR class.
     * @param string $className active record class name.
     * @return ProductsCat the static model class
     */
    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

    /**
     * @return string the associated database table name
     */
    public function tableName() {
        return 'hoiit_module_products_cat';
    }

    /**
     * @return array validation rules for model attributes.
     */
    public function rules() {
        // NOTE: you should only define rules for those attributes that
        // will receive user inputs.
        return array(
            array('cat_created', 'required'),
            array('cat_parent_id, cat_hot, cat_order, cat_enable', 'numerical', 'integerOnly' => true),
            array('pic_thumb, cat_extra1, cat_extra2', 'length', 'max' => 100),
            array('pic_desc', 'length', 'max' => 200),
            // The following rule is used by search().
            // Please remove those attributes that should not be searched.
            array('cat_id, cat_parent_id, cat_created, pic_thumb, pic_desc, cat_hot, cat_order, cat_extra1, cat_extra2, cat_enable', 'safe', 'on' => 'search'),
        );
    }

    /**
     * @return array relational rules.
     */
    public function relations() {
        // NOTE: you may need to adjust the relation name and the related
        // class name for the relations automatically generated below.
        return array(
            'Language' => array(self::MANY_MANY, 'Language', 'hoiit_module_products_cat_languages(cat_id, language_id)'),
            'ProductsCatLanguage' => array(self::HAS_MANY, 'ProductsCatLanguage', 'cat_id', 'index' => 'language_id'),
        );
    }

    /**
     * @return array customized attribute labels (name=>label)
     */
    public function attributeLabels() {
        return array(
            'cat_id' => 'Cat',
            'cat_parent_id' => 'Cat Parent',
            'cat_created' => 'Cat Created',
            'pic_thumb' => 'Pic Thumb',
            'pic_desc' => 'Pic Desc',
            'cat_hot' => 'Cat Hot',
            'cat_order' => 'Cat Order',
            'cat_extra1' => 'Cat Extra1',
            'cat_extra2' => 'Cat Extra2',
            'cat_enable' => 'Cat Enable',
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

        $criteria->compare('cat_id', $this->cat_id);
        $criteria->compare('cat_parent_id', $this->cat_parent_id);
        $criteria->compare('cat_created', $this->cat_created, true);
        $criteria->compare('pic_thumb', $this->pic_thumb, true);
        $criteria->compare('pic_desc', $this->pic_desc, true);
        $criteria->compare('cat_hot', $this->cat_hot);
        $criteria->compare('cat_order', $this->cat_order);
        $criteria->compare('cat_extra1', $this->cat_extra1, true);
        $criteria->compare('cat_extra2', $this->cat_extra2, true);
        $criteria->compare('cat_enable', $this->cat_enable);

        return new CActiveDataProvider($this, array(
            'criteria' => $criteria,
        ));
    }

    //Front end - List record for index
    public function listCats($cid = 0, $prefix = NULL, $type = 0, $id = 0) {
        $criteria = new CDbCriteria();
        $criteria->with = array('Language', 'ProductsCatLanguage');
        $criteria->order = 'cat_order DESC, cat_created DESC';

        if ($cid == 1) {
            //for add, edit cat
            $this->_data[] = array('cat_id' => 0, 'cat_title_prefix' => 'Root', 'cat_title' => 'Root');
        }

        if ($type == 1) {
            //for admin
            if ($id != 0) {
                $criteria->condition = 'cat_id !=:id';
                $criteria->params = array(':id' => $id);
                //$command = Yii::app()->db->createCommand('SELECT cat_id, cat_parent_id, cat_title' . LANG . ', tag' . LANG . ', cat_enable FROM ' . $this->tableName() . ' WHERE cat_id != ' . $id . ' AND dos_usernames_username=:user ORDER BY cat_order DESC');
            } /*else {
                $criteria->condition = 'cat_id !=:id';
                $criteria->params = array(':id' => $id);
                $command = Yii::app()->db->createCommand('SELECT cat_id, cat_parent_id, cat_title' . LANG . ', tag' . LANG . ', cat_enable FROM ' . $this->tableName() . ' WHERE dos_usernames_username=:user ORDER BY cat_order DESC');
            }   */
        } else {
            $criteria->condition = 'cat_enable=1';
            //$command = Yii::app()->db->createCommand('SELECT cat_id, cat_parent_id, cat_title' . LANG . ', tag' . LANG . ', cat_enable FROM ' . $this->tableName() . ' WHERE cat_enable=1 AND dos_usernames_username=:user ORDER BY cat_order DESC');
        }

        $this->_rows = $this::model()->findAll($criteria);
        $this->_rowsize = count($this->_rows);

        foreach ($this->_rows as $key => $value) {
            if ($value['cat_parent_id'] == 0) {
                $this->_data[] = array('cat_id' => $value['cat_id'], 'cat_parent_id' => $value['cat_parent_id'], 'tag' => $value->ProductsCatLanguage[Yii::app()->language]['tag'], 'cat_title_prefix' => $prefix . $value->ProductsCatLanguage[Yii::app()->language]['cat_title'], 'cat_title' => $value->ProductsCatLanguage[Yii::app()->language]['cat_title'], 'cat_enable' => $value['cat_enable']);
                $this->loopItem($key, $prefix);
            }
        }
        return $this->_data;
    }

    private function loopItem($i, $prefix, $tab = '|-- ') {
        for ($j = 0; $j < $this->_rowsize; $j++) {
            if ($this->_rows[$j]['cat_parent_id'] == $this->_rows[$i]['cat_id']) {
                $this->_data[] = array('cat_id' => $this->_rows[$j]['cat_id'], 'cat_parent_id' => $this->_rows[$j]['cat_parent_id'], 'tag' => $this->_rows[$j]->ProductsCatLanguage[Yii::app()->language]['tag'], 'cat_title_prefix' => $prefix . $tab . $this->_rows[$j]->ProductsCatLanguage[Yii::app()->language]['cat_title'], 'cat_title' => $this->_rows[$j]->ProductsCatLanguage[Yii::app()->language]['cat_title'], 'cat_enable' => $this->_rows[$j]['cat_enable']);
                $this->loopItem($j, $prefix, $tab . '|-- ');
            }
        }
    }

    //Back end - Active Item
    public function activeItem($data) {
        $flag = $data->getPost('factive', 'disable');
        $ids = $data->getPost('ids', '');
        $syn = $data->getPost('syn', '');

        if ($syn) {
            $criteria = new CDbCriteria();
            $criteria->order = 'cat_order ASC';
            $models = $this::model()->findAll($criteria);

            $i = 1;
            foreach ($models as $model) {
                $this::model()->updateByPk($model['cat_id'], array('cat_order' => $i));
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
                            $this::model()->updateByPk($id, array('cat_enable' => $active));
                        }
                    }
                }
            }
        }
    }
}