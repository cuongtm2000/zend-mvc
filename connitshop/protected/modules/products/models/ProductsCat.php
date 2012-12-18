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
    private $_sub_cat_num;
    private $_sub_num_item;

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
            //array('cat_created', 'required'),
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

    public function listItem($cid = 0) {
        $criteria = new CDbCriteria();
        $criteria->order = 'cat_order DESC, cat_created DESC';
        if ($cid != 0) {
            $criteria->condition = 'cat_parent_id=:cid AND cat_enable=1';
            $criteria->params = array(':cid' => $cid);
        } else {
            $criteria->condition = 'cat_enable=1';
        }
        return $this->findAll($criteria);
    }

    //Front end - make menu multi level
    public function makeMenuIndex($data, $cat_id, $strOpen = '<ul>', $strClose = '</ul>', $tag = 'li', $subTag = 'ul', $subTagItem = 'li') {
        $str = null;
        $root_find = $this->findCatID($cat_id);

        foreach ($data as $value) {
            if ($value['cat_parent_id'] == 0) {
                $str .= '<' . $tag . '>' . CHtml::link($value->ProductsCatLanguage[Yii::app()->language]['cat_title'], array(Yii::app()->controller->setUrlModule('products') . '/' . $value->ProductsCatLanguage[Yii::app()->language]['tag']), array('title' => $value->ProductsCatLanguage[Yii::app()->language]['cat_title']));
                //if ($value['cat_id'] == $root_find) {
                    $str .= $this->menuRecursive($value['cat_id'], $data, '', '', $subTag, $subTagItem);
                //}
                $str .= '</' . $tag . '>';
            }
        }
        return $strOpen .'<li><a href="san-pham/hang-moi-ve">Hàng mới về <img src="'.Yii::app()->theme->baseUrl.'/images/new.png" /></a></li>'.'<li><a href="san-pham/khuyen-mai">Khuyến mãi</a></li>'. $str . $strClose;
    }
	
	 //Front end - make menu multi level
    public function makeMenu($data, $cat_id, $strOpen = '<ul>', $strClose = '</ul>', $tag = 'li', $subTag = 'ul', $subTagItem = 'li') {
        $str = null;
        $root_find = $this->findCatID($cat_id);

        foreach ($data as $value) {
            if ($value['cat_parent_id'] == 0) {
                $str .= '<' . $tag . '>' . CHtml::link($value->ProductsCatLanguage[Yii::app()->language]['cat_title'], array(Yii::app()->controller->setUrlModule('products') . '/' . $value->ProductsCatLanguage[Yii::app()->language]['tag']), array('title' => $value->ProductsCatLanguage[Yii::app()->language]['cat_title']));
                if ($value['cat_id'] == $root_find) {
                    $str .= $this->menuRecursive($value['cat_id'], $data, '', '', $subTag, $subTagItem);
                }
                $str .= '</' . $tag . '>';
            }
        }
        return $strOpen . $str . $strClose;
    }
	
    private function menuRecursive($parent_id, $data, $res = '', $sep = '', $subTag = 'ul', $subTagItem = 'li') {
        $tmp='';
        foreach ($data as $v) {
            if ($v['cat_parent_id'] == $parent_id) {
                $re = $sep . '<' . $subTagItem . '>' . CHtml::link($v->ProductsCatLanguage[Yii::app()->language]['cat_title'], array(Yii::app()->controller->setUrlModule('products') . '/' . $v->ProductsCatLanguage[Yii::app()->language]['tag']), array('title' => $v->ProductsCatLanguage[Yii::app()->language]['cat_title']));
                $tmp .= $this->menuRecursive($v['cat_id'], $data, $re, $sep . '');
                $tmp .= '</' . $subTagItem . '>';
            }
        }
        $res.=($tmp!= '')?'<'.$subTag.'>'.$tmp.'</'.$subTag.'>':'';
        return $res;
    }

    private function findCatID($tag) {
        $cat_id = ProductsCatLanguage::model()->findCatByTag($tag);
        $temp = $cat_id['cat_id'];
        $result = -1;

        do {
            $parent_id = $this->getParentIdOfCatID($temp);
            $result = $temp;
            $temp = $parent_id;
        } while ($parent_id != 0);

        return $result;
    }

    private function getParentIdOfCatID($id) {
        $row = $this->loadEdit($id);
        return $row['cat_parent_id'];
    }
	
    //Front end - List record for index
    public function listCats($cid = 0, $prefix = NULL, $type = 0, $id = 0) {
        $criteria = new CDbCriteria();
        $criteria->order = 'cat_order DESC, cat_created DESC';

        if ($cid == 1) {
            //for add, edit cat
            $this->_data[] = array('cat_id' => 0, 'cat_title_prefix' => 'Root', 'cat_title' => 'Root');
        }

        if ($type == 1) {
            //for admin
            if ($id != 0) {
                $criteria->condition = 't.cat_id !=:id';
                $criteria->params = array(':id' => $id);
            }
        } else {
            $criteria->condition = 'cat_enable=1';
        }

        $this->_rows = $this->findAll($criteria);
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
            $models = $this->findAll($criteria);

            $i = 1;
            foreach ($models as $model) {
                $this->updateByPk($model['cat_id'], array('cat_order' => $i));
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
                            $this->updateByPk($id, array('cat_enable' => $active));
                        }
                    }
                }
            }
        }
    }

    //Back end - save
    public function saveRecord($model, $id = null) {
        if (Yii::app()->controller->action->id == 'addcat') {
            $this->cat_parent_id = $model->cat_parent_id;
            $this->cat_hot = $model->cat_hot;
            $this->cat_enable = $model->cat_enable;

            //upload picture
            Yii::import('ext.SimpleImage.CSimpleImage');
            $file = new CSimpleImage();
            $this->pic_thumb = $file->processUpload($_FILES[__CLASS__ . 'Form']['name']['pic_thumb'], $_FILES[__CLASS__ . 'Form']['tmp_name']['pic_thumb'], Config::getValue('products_cat_width_thumb'), Config::getValue('products_cat_height_thumb'), '/image/' . lcfirst(__CLASS__), $model['cat_title' . Yii::app()->controller->setting['default_language']]);

            $this->save();
            $id = $this->cat_id;
            $this->updateByPk($id, array('cat_order' => $id));
        } else {
            $item = $this->findByPk($id);
            $item->cat_parent_id = $model->cat_parent_id;
            $item->cat_hot = $model->cat_hot;
            $item->cat_enable = $model->cat_enable;

            //remove pic_thumb
            if (isset($model->remove_pic_thumb) && $model->remove_pic_thumb == 1) {
                Common::removePic($item->pic_thumb, '/image/' . lcfirst(__CLASS__)); // remove pic_thumb
                $item->pic_thumb = null;
            }
            //upload picture
            Yii::import('ext.SimpleImage.CSimpleImage');
            $file = new CSimpleImage();
            $item->pic_thumb = $file->processUpload($_FILES[__CLASS__ . 'Form']['name']['pic_thumb'], $_FILES[__CLASS__ . 'Form']['tmp_name']['pic_thumb'], Config::getValue('products_cat_width_thumb'), Config::getValue('products_cat_height_thumb'), '/image/' . lcfirst(__CLASS__), $model['cat_title' . Yii::app()->controller->setting['default_language']], $item->pic_thumb);

            $item->save();
        }
        ProductsCatLanguage::model()->saveRecord($id, $model);
    }

    //Back end - Get record to Edit
    public function loadEdit($id) {
        $command = Yii::app()->db->createCommand('SELECT cat_parent_id, pic_thumb, cat_hot, cat_enable FROM ' . $this->tableName() . ' WHERE cat_id=:id');
        $command->bindParam(":id", $id, PDO::PARAM_INT);
        return $command->queryRow();
    }

    //Back end - Get cat_id by Parent_id
    private function getIdByParentId($id) {
        $command = Yii::app()->db->createCommand('SELECT cat_id FROM ' . $this->tableName() . ' WHERE cat_parent_id=:id');
        $command->bindParam(":id", $id, PDO::PARAM_INT);
        return $command->queryAll();
    }

    //Back end - Count sub cat
    public function countSubcat($id) {
        $this->loopCat($id);
        return array('sub_cat_num' => $this->_sub_cat_num, 'sub_num_item' => $this->_sub_num_item);
    }

    private function loopCat($id) {
        $result = $this->getIdByParentId($id);
        foreach ($result as $value) {
            $this->_sub_cat_num++;
            $this->_sub_num_item += Products::model()->count('hoiit_module_item_cat_cat_id=:cat_id', array(':cat_id' => $value['cat_id']));
            $this->loopCat($value['cat_id']);
        }
    }

    //Back end - find Cat parent
    public function findcatParent($cat_id, $cat_parent_id) {
        $result = $this->getIdByParentId($cat_id);
        foreach ($result as $value) {
            $this->updateByPk($value['cat_id'], array('cat_parent_id' => $cat_parent_id));
        }
    }

    //Back end - Delete all item Sub
    public function loopDelItemtoCat($cat_id) {
        $result = $this->getIdByParentId($cat_id);
        foreach ($result as $value) {
            Products::model()->deleteItembyCat($value['cat_id']);
            $this->loopDelItemtoCat($value['cat_id']);
        }
    }

    //Back end - Move all item Cat to Cat:
    public function loopMoveItemtoCat($cat_id, $cat_id_new) {
        $result = $this->getIdByParentId($cat_id);
        foreach ($result as $value) {
            Products::model()->updateByPk($value['cat_id'], array('hoiit_module_item_cat_cat_id' => $cat_id_new));
            $this->loopMoveItemtoCat($value['cat_id'], $cat_id_new);
        }
    }

    //Back end - Delete all Sub
    public function loopDelSubCat($cat_id) {
        $result = $this->getIdByParentId($cat_id);
        foreach ($result as $value) {
            $this->deleteRecord($value['cat_id']);
            $this->loopDelSubCat($value['cat_id']);
        }
    }

    //Back end - Delete Record
    public function deleteRecord($id) {
        ProductsCatLanguage::model()->deleteRecord($id);

        $item = $this::model()->find('cat_id=:id', array(':id' => $id));
        Common::removePic($item->pic_thumb, '/image/' . lcfirst(__CLASS__)); // remove pic_thumb
        Common::removePic($item->pic_desc, '/image/' . lcfirst(__CLASS__), 1); // remove pic_desc
        $this->findByPk($id)->delete(); //delete record
    }

    //Back end - Get cat_parent_id, cat_order
    public function getCatParent_CatOrder($cid) {
        $command = Yii::app()->db->createCommand('SELECT cat_parent_id, cat_order FROM ' . $this->tableName() . ' WHERE cat_id=:cid');
        $command->bindParam(":cid", $cid, PDO::PARAM_INT);
        return $command->queryRow();
    }

    // Back end - Get cat_id, cat_order Next
    public function getCatid_CatOrder_Next($cid, $order) {
        $command = Yii::app()->db->createCommand('SELECT cat_id, cat_order FROM ' . $this->tableName() . ' WHERE cat_parent_id=:cid AND cat_order>:order ORDER BY cat_order ASC');
        $command->bindParam(":cid", $cid, PDO::PARAM_INT);
        $command->bindParam(":order", $order, PDO::PARAM_INT);
        return $command->queryRow();
    }

    // Back end - Get cat_id, cat_order Previous
    public function getCatid_CatOrder_Previous($cid, $order) {
        $command = Yii::app()->db->createCommand('SELECT cat_id, cat_order FROM ' . $this->tableName() . ' WHERE cat_parent_id=:cid AND cat_order<:order ORDER BY cat_order DESC');
        $command->bindParam(":cid", $cid, PDO::PARAM_INT);
        $command->bindParam(":order", $order, PDO::PARAM_INT);
        return $command->queryRow();
    }

    // Back end - Update for up, down
    public function updateUpDown($cat_info, $next_info, $cid) {
        $command = Yii::app()->db->createCommand('UPDATE ' . $this->tableName() . ' SET cat_order=:order WHERE cat_id=:id');
        $command->bindParam(":order", $next_info['cat_order'], PDO::PARAM_INT);
        $command->bindParam(":id", $cid, PDO::PARAM_INT);
        $command->execute();

        $command = Yii::app()->db->createCommand('UPDATE ' . $this->tableName() . ' SET cat_order=:order WHERE cat_id=:id');
        $command->bindParam(":order", $cat_info['cat_order'], PDO::PARAM_INT);
        $command->bindParam(":id", $next_info['cat_id'], PDO::PARAM_INT);
        $command->execute();
    }

}