<?php

/**
 * This is the model class for table "hoiit_module_menus".
 *
 * The followings are the available columns in table 'hoiit_module_menus':
 * @property integer $menu_id
 * @property integer $parent_id
 * @property string $menu_target
 * @property integer $menu_sort
 * @property integer $menu_homepage
 * @property integer $menu_activated
 *
 * The followings are the available model relations:
 * @property HoiitLanguages[] $hoiitLanguages
 */
class Menus extends CActiveRecord {
    private $_data;
    private $_rows;
    private $_rowsize;

    /**
     * Returns the static model of the specified AR class.
     * @param string $className active record class name.
     * @return Menus the static model class
     */
    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

    /**
     * @return string the associated database table name
     */
    public function tableName() {
        return 'hoiit_module_menus';
    }

    /**
     * @return array validation rules for model attributes.
     */
    public function rules() {
        // NOTE: you should only define rules for those attributes that
        // will receive user inputs.
        return array(
            array('parent_id, menu_type, menu_sort, menu_homepage, menu_activated', 'numerical', 'integerOnly' => true),
            array('menu_target', 'length', 'max' => 6),
            // The following rule is used by search().
            // Please remove those attributes that should not be searched.
            array('menu_id, parent_id, menu_type, menu_target, menu_sort, menu_homepage, menu_activated', 'safe', 'on' => 'search'),
        );
    }

    /**
     * @return array relational rules.
     */
    public function relations() {
        // NOTE: you may need to adjust the relation name and the related
        // class name for the relations automatically generated below.
        return array(
            'Language' => array(self::MANY_MANY, 'Language', 'hoiit_module_menus_languages(menu_id, language_id)'),
            'MenusLanguage' => array(self::HAS_MANY, 'MenusLanguage', 'menu_id', 'index' => 'language_id'),
        );
    }

    /**
     * @return array customized attribute labels (name=>label)
     */
    public function attributeLabels() {
        return array(
            'menu_id' => 'Menu',
            'parent_id' => 'Parent',
            'menu_type' => 'Menu Type',
            'menu_target' => 'Menu Target',
            'menu_sort' => 'Menu Sort',
            'menu_homepage' => 'Menu Homepage',
            'menu_activated' => 'Menu Activated',
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

        $criteria->compare('menu_id', $this->menu_id);
        $criteria->compare('parent_id', $this->parent_id);
        $criteria->compare('menu_type', $this->menu_type);
        $criteria->compare('menu_target', $this->menu_target, true);
        $criteria->compare('menu_sort', $this->menu_sort);
        $criteria->compare('menu_homepage', $this->menu_homepage);
        $criteria->compare('menu_activated', $this->menu_activated);

        return new CActiveDataProvider($this, array(
            'criteria' => $criteria,
        ));
    }

    //Front end - List record for index
    public function listCats($cid = 0, $prefix = NULL, $type = 0, $id = 0) {
        $criteria = new CDbCriteria();
        $criteria->with = array('Language', 'MenusLanguage');
        $criteria->order = 'menu_sort';

        if ($cid == 1) {
            //for add, edit cat
            $this->_data[] = array('menu_id' => 0, 'menu_name_prefix' => 'Root', 'menu_name' => 'Root');
        }

        if ($type == 1) {
            //for admin
            if ($id != 0) {
                $criteria->condition = 't.menu_id !=:id';
                $criteria->params = array(':id' => $id);
            }
        } else {
            $criteria->condition = 'menu_activated=1';
        }

        $this->_rows = $this::model()->findAll($criteria);
        $this->_rowsize = count($this->_rows);

        foreach ($this->_rows as $key => $value) {
            if ($value['parent_id'] == 0) {
                $this->_data[] = array('menu_id' => $value['menu_id'], 'parent_id' => $value['parent_id'], /*'tag' => $value->ProductsCatLanguage[Yii::app()->language]['tag'],*/
                    'menu_name_prefix' => $prefix . $value->MenusLanguage[Yii::app()->language]['menu_name'], 'menu_name' => $value->MenusLanguage[Yii::app()->language]['menu_name'], 'menu_homepage' => $value['menu_homepage'], 'menu_activated' => $value['menu_activated']);
                $this->loopItem($key, $prefix);
            }
        }
        return $this->_data;
    }

    private function loopItem($i, $prefix, $tab = '|-- ') {
        for ($j = 0; $j < $this->_rowsize; $j++) {
            if ($this->_rows[$j]['parent_id'] == $this->_rows[$i]['menu_id']) {
                $this->_data[] = array('menu_id' => $this->_rows[$j]['menu_id'], 'parent_id' => $this->_rows[$j]['parent_id'], /*'tag' => $this->_rows[$j]->ProductsCatLanguage[Yii::app()->language]['tag'],*/
                    'menu_name_prefix' => $prefix . $tab . $this->_rows[$j]->MenusLanguage[Yii::app()->language]['menu_name'], 'menu_name' => $this->_rows[$j]->MenusLanguage[Yii::app()->language]['menu_name'], 'menu_homepage' => $this->_rows[$j]['menu_homepage'], 'menu_activated' => $this->_rows[$j]['menu_activated']);
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
            $criteria->order = 'menu_sort ASC';
            $models = $this::model()->findAll($criteria);

            $i = 1;
            foreach ($models as $model) {
                $this::model()->updateByPk($model['menu_id'], array('menu_sort' => $i));
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
                            $this::model()->updateByPk($id, array('menu_activated' => $active));
                        }
                    }
                } else {
                    //delete
                    foreach ($record_id as $value) {
                        $id = intval($value);
                        if ($id) {
                            MenusLanguage::model()->deleteRecord($id);
                            $this::model()->deleteByPk($id);
                        }
                    }
                }
            }
        }
    }

    //Back end - Get cat_parent_id, cat_order
    public function getCatParent_CatOrder($cid) {
        $command = Yii::app()->db->createCommand('SELECT parent_id, menu_sort FROM ' . $this->tableName() . ' WHERE menu_id=:cid');
        $command->bindParam(":cid", $cid, PDO::PARAM_INT);
        return $command->queryRow();
    }

    // Back end - Get cat_id, cat_order Next
    public function getCatid_CatOrder_Next($cid, $order) {
        $command = Yii::app()->db->createCommand('SELECT menu_id, menu_sort FROM ' . $this->tableName() . ' WHERE parent_id=:cid AND menu_sort>:order ORDER BY menu_sort ASC');
        $command->bindParam(":cid", $cid, PDO::PARAM_INT);
        $command->bindParam(":order", $order, PDO::PARAM_INT);
        return $command->queryRow();
    }

    // Back end - Get cat_id, cat_order Previous
    public function getCatid_CatOrder_Previous($cid, $order) {
        $command = Yii::app()->db->createCommand('SELECT menu_id, menu_sort FROM ' . $this->tableName() . ' WHERE parent_id=:cid AND menu_sort<:order ORDER BY menu_sort DESC');
        $command->bindParam(":cid", $cid, PDO::PARAM_INT);
        $command->bindParam(":order", $order, PDO::PARAM_INT);
        return $command->queryRow();
    }

    // Back end - Update for up, down
    public function updateUpDown($cat_info, $next_info, $cid) {
        $command = Yii::app()->db->createCommand('UPDATE ' . $this->tableName() . ' SET menu_sort=:order WHERE menu_id=:id');
        $command->bindParam(":order", $next_info['menu_sort'], PDO::PARAM_INT);
        $command->bindParam(":id", $cid, PDO::PARAM_INT);
        $command->execute();

        $command = Yii::app()->db->createCommand('UPDATE ' . $this->tableName() . ' SET menu_sort=:order WHERE menu_id=:id');
        $command->bindParam(":order", $cat_info['menu_sort'], PDO::PARAM_INT);
        $command->bindParam(":id", $next_info['menu_id'], PDO::PARAM_INT);
        $command->execute();
    }

    //Back end - save
    public function saveRecord($model, $id = null) {
        if (Yii::app()->controller->action->id == 'add') {
            $menu = new Menus();
            $menu->parent_id = $model->parent_id;
            $menu->menu_type = $model->menu_type;
            $menu->menu_target = $model->menu_target;
            $menu->menu_homepage = $model->menu_homepage;
            $menu->menu_activated = $model->menu_activated;
            $menu->save();

            $id = Yii::app()->db->getLastInsertId();
            $this::model()->updateByPk($id, array('menu_sort' => $id));
        } else {
            $item = $this::model()->findByPk($id);
            $item->parent_id = $model->parent_id;
            $item->menu_type = $model->menu_type;
            $item->menu_target = $model->menu_target;
            $item->menu_homepage = $model->menu_homepage;
            $item->menu_activated = $model->menu_activated;
            $item->save();
        }
        MenusLanguage::model()->saveRecord($id, $model);
    }

    //Back end - Get record to Edit
    public function loadEdit($id) {
        $command = Yii::app()->db->createCommand('SELECT parent_id, menu_type, menu_target, menu_homepage, menu_activated FROM ' . $this->tableName() . ' WHERE menu_id=:id');
        $command->bindParam(":id", $id, PDO::PARAM_INT);
        return $command->queryRow();
    }
}