<?php

/**
 * This is the model class for table "dos_module_products_cat".
 *
 * The followings are the available columns in table 'dos_module_products_cat':
 * @property integer $cat_id
 * @property integer $cat_parent_id
 * @property string $cat_title
 * @property string $cat_titleen
 * @property string $preview
 * @property string $previewen
 * @property string $tag
 * @property string $description
 * @property string $pic_full
 * @property string $pic_desc
 * @property integer $cat_order
 * @property string $cat_extra1
 * @property string $cat_extra2
 * @property integer $cat_enable
 * @property string $dos_usernames_username
 *
 * The followings are the available model relations:
 * @property DosModuleProducts[] $dosModuleProducts
 * @property DosUsernames $dosUsernamesUsername
 */
class ProductsCat extends CActiveRecord {

    private $_cat_data;
    private $_sub_cat_data;
    private $_sortcat_count = 0;
    private $_sub_cat_num = 0;
    private $_sub_num_item = 0;
    private $_subdomain;
    private $_model;
    private $_oldImage_full;

    public function init() {
        $this->_subdomain = Yii::app()->session['subdomain'];
    }

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
        return 'dos_module_products_cat';
    }

    /**
     * @return array validation rules for model attributes.
     */
    public function rules() {
        // NOTE: you should only define rules for those attributes that
        // will receive user inputs.
        return array(
            array('cat_title, tag, description', 'required'),
            array('cat_parent_id, cat_order, cat_enable', 'numerical', 'integerOnly' => true),
            array('cat_title, cat_titleen, tag, pic_full', 'length', 'max' => 100),
            array('tag', 'checkExistsTag'),
            array('description', 'length', 'max' => 250),
            array('pic_desc', 'length', 'max' => 200),
            array('cat_extra1, cat_extra2, dos_usernames_username', 'length', 'max' => 45),
            array('pic_full', 'file', 'types' => 'gif,png,jpg,jpeg,icon', 'allowEmpty' => true, 'maxSize' => 1024 * 1024 * 5),
            array('preview, previewen', 'safe'),
            // The following rule is used by search().
            // Please remove those attributes that should not be searched.
            array('cat_id, cat_parent_id, cat_title, cat_titleen, preview, previewen, tag, description, pic_full, pic_desc, cat_order, cat_extra1, cat_extra2, cat_enable, dos_usernames_username', 'safe', 'on' => 'search'),
        );
    }

    public function checkExistsTag($attribute) {
        if (GetTag::tag($this->tag, $this->cat_id, $this->tableName(), 'cid')) {
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
            'Products' => array(self::HAS_MANY, 'Products', 'dos_module_item_cat_cat_id'),
                //'dosUsernamesUsername' => array(self::BELONGS_TO, 'DosUsernames', 'dos_usernames_username'),
        );
    }

    /**
     * @return array customized attribute labels (name=>label)
     */
    public function attributeLabels() {
        return array(
            'cat_id' => 'Cat',
            'cat_parent_id' => 'Cat Parent',
            'cat_title' => 'Cat Title',
            'cat_titleen' => 'Cat Titleen',
            'preview' => 'Preview',
            'previewen' => 'Previewen',
            'tag' => 'Tag',
            'description' => 'Description',
            'pic_full' => 'Pic Full',
            'pic_desc' => 'Pic Desc',
            'cat_order' => 'Cat Order',
            'cat_extra1' => 'Cat Extra1',
            'cat_extra2' => 'Cat Extra2',
            'cat_enable' => 'Cat Enable',
            'dos_usernames_username' => 'Dos Usernames Username',
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
        $criteria->compare('cat_title', $this->cat_title, true);
        $criteria->compare('cat_titleen', $this->cat_titleen, true);
        $criteria->compare('preview', $this->preview, true);
        $criteria->compare('previewen', $this->previewen, true);
        $criteria->compare('tag', $this->tag, true);
        $criteria->compare('description', $this->description, true);
        $criteria->compare('pic_full', $this->pic_full, true);
        $criteria->compare('pic_desc', $this->pic_desc, true);
        $criteria->compare('cat_order', $this->cat_order);
        $criteria->compare('cat_extra1', $this->cat_extra1, true);
        $criteria->compare('cat_extra2', $this->cat_extra2, true);
        $criteria->compare('cat_enable', $this->cat_enable);
        $criteria->compare('dos_usernames_username', $this->dos_usernames_username, true);

        return new CActiveDataProvider($this, array(
                    'criteria' => $criteria,
                ));
    }

    /*public function afterFind() {
        parent::afterFind();
        $this->_oldImage_full = $this->pic_full;
    }

    public function beforeSave() {
        $purifier = new CHtmlPurifier();
        $this->cat_title = $purifier->purify($this->cat_title);
        $this->tag = $purifier->purify($this->tag);
        $this->description = $purifier->purify($this->description);

        if ($this->isNewRecord) {
            $this->cat_order = $this->maxRecordOrder();
            $this->dos_usernames_username = Yii::app()->user->id;
            if ($_FILES['ProductsCat']['name']['pic_full']) {
                Yii::import('ext.EUploadedImage.EUploadedImage');
                $this->pic_full = EUploadedImage::getInstance($this, 'pic_full')->processUpload(Configs::configTemplate('product_cats_width', Yii::app()->session['template']), Configs::configTemplate('product_cats_height', Yii::app()->session['template']), USERFILES . '/productsCat', $this->cat_title);
            }
        } else {
            //check file old and upload
            if ($_FILES['ProductsCat']['name']['pic_full']) {
                Yii::import('ext.EUploadedImage.EUploadedImage');
                $this->pic_full = EUploadedImage::getInstance($this, 'pic_full')->processUpload(Configs::configTemplate('product_cats_width', Yii::app()->session['template']), Configs::configTemplate('product_cats_height', Yii::app()->session['template']), USERFILES . '/productsCat', $this->cat_title, $this->_oldImage_full);
            } else {
                $this->pic_full = $this->_oldImage_full;
            }
        }

        return parent::beforeSave();
    }

    //Front end - list menu
    public function listItem($cid = 0) {
        if ($cid != 0) {
            $command = Yii::app()->db->createCommand('SELECT cat_id, cat_parent_id, cat_title' . LANG . ', tag, pic_full FROM ' . $this->tableName() . ' WHERE cat_parent_id=' . $cid . ' AND cat_enable=1 AND dos_usernames_username=:user ORDER BY cat_order DESC');
        } else {
            $command = Yii::app()->db->createCommand('SELECT cat_id, cat_parent_id, cat_title' . LANG . ', tag, pic_full FROM ' . $this->tableName() . ' WHERE cat_enable=1 AND dos_usernames_username=:user ORDER BY cat_order DESC');
        }
        $command->bindParam(':user', $this->_subdomain, PDO::PARAM_STR);
        return $command->queryAll();
    }

    //Front end - find cat_id by tag
    public function findCatByTag($tag) {
        $command = Yii::app()->db->createCommand('SELECT cat_id, cat_title' . LANG . ', tag FROM ' . $this->tableName() . ' WHERE tag=:tag');
        $command->bindParam(':tag', $tag, PDO::PARAM_STR);
        return $command->queryRow();
    }

    public function listItemAdmin($cid = 0) {
        $criteria = new CDbCriteria();
        $criteria->order = 'cat_order DESC';
        $criteria->condition = 'dos_usernames_username=:user';
        $criteria->params = array(':user' => Yii::app()->user->id);
        $count = ProductsCat::model()->count($criteria);

        // elements per page
        $pages = new CPagination($count);
        $pages->pageSize = 15;
        $pages->applyLimit($criteria);

        $this->_cat_data = ProductsCat::model()->findAll($criteria);
        $this->listSubItem($cid);

        return array('models' => $this->_sub_cat_data, 'pages' => $pages);
    }

    private function listSubItem($cid = 0, $getall = 1, $parent_id = 0, $level = 1, $str = '', $parent_enabled = 1) {
        $cat_level = 2;
        $prefix = ($cat_level > 1) ? '|-- ' : '';
        foreach ($this->_cat_data as $value) {
            if (($value->cat_parent_id == $parent_id) && ($cid != $value->cat_id)) {
                $this->_sub_cat_data[$this->_sortcat_count]['cat_id'] = $value->cat_id;
                $this->_sub_cat_data[$this->_sortcat_count]['cat_title'] = $value->cat_title;
                $this->_sub_cat_data[$this->_sortcat_count]['title_prefix'] = $str . $prefix;

                if (!$parent_enabled || !$value->cat_enable) {
                    $cat_enabled = 0;
                } else {
                    $cat_enabled = 1;
                }

                $this->_sub_cat_data[$this->_sortcat_count]['cat_enable'] = $cat_enabled;
                $this->_sortcat_count++;

                if ($getall || ($level < $cat_level - 1)) {
                    $str2 = $str . "&nbsp; &nbsp; &nbsp;";
                    $this->listSubItem($cid, $getall, $value->cat_id, $level + 1, $str2, $cat_enabled);
                }
            }
        }
    }

    //Back end - List item for Add Edit
    public function listItemAdminAction($cat = 0) {
        $criteria = new CDbCriteria();
        $criteria->order = 'cat_order DESC';
        $criteria->condition = 'cat_enable=1 AND dos_usernames_username=:user';
        $criteria->params = array(':user' => Yii::app()->user->id);

        $this->_cat_data = ProductsCat::model()->findAll($criteria);

        if ($cat == 1) {
            $this->_sub_cat_data[0]['cat_id'] = 0;
            $this->_sub_cat_data[0]['cat_title'] = 'Root';
            $this->_sortcat_count++;
        }

        $this->listSubItemAction();
        return $this->_sub_cat_data;
    }

    //Back end - List sub item for Add Edit
    private function listSubItemAction($cid = 0, $getall = 1, $parent_id = 0, $level = 1, $str = '') {
        $cat_level = 2;
        $prefix = ($cat_level > 1) ? '|-- ' : '';
        foreach ($this->_cat_data as $value) {
            if (($value->cat_parent_id == $parent_id) && ($cid != $value->cat_id)) {
                $this->_sub_cat_data[$this->_sortcat_count]['cat_id'] = $value->cat_id;
                $this->_sub_cat_data[$this->_sortcat_count]['cat_title'] = $str . $prefix . $value->cat_title;

                $this->_sortcat_count++;
                if ($getall || ($level < $cat_level - 1)) {
                    $str2 = $str . "|-- ";
                    $this->listSubItemAction($cid, $getall, $value->cat_id, $level + 1, $str2);
                }
            }
        }
    }

    //Back end - Update Record
    private function updateShowHidden($activated, $id) {
        $command = Yii::app()->db->createCommand('UPDATE ' . $this->tableName() . ' SET cat_enable=:activated WHERE cat_id=:id');
        $command->bindParam(":activated", $activated, PDO::PARAM_INT);
        $command->bindParam(":id", $id, PDO::PARAM_INT);
        return $command->execute();
    }

    //Back end - Active Item
    public function activeItem($data) {
        $flag = $data->getPost('factive', 'disable');
        $ids = $data->getPost('ids', '');
        $syn = $data->getPost('syn', '');

        if ($syn) {
            $criteria = new CDbCriteria();
            $criteria->order = 'cat_order ASC';
            $criteria->condition = 'dos_usernames_username=:user';
            $criteria->params = array(':user' => Yii::app()->user->id);

            $models = ProductsCat::model()->findAll($criteria);

            $i = 1;
            foreach ($models as $model) {
                ProductsCat::model()->updateByPk($model['cat_id'], array('cat_order' => $i));
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
                }
            }
        }
    }

    //Back end - Get max record
    private function maxRecordOrder() {
        $user = Yii::app()->user->id;
        $command = Yii::app()->db->createCommand('SELECT max(cat_order) AS max FROM ' . $this->tableName() . ' WHERE dos_usernames_username=:user');
        $command->bindParam(":user", $user, PDO::PARAM_STR);
        return $command->queryScalar() + 1;
    }

    //Back end - Get record to Edit
    public function loadEdit($id) {
        $criteria = new CDbCriteria();
        $criteria->condition = 'dos_usernames_username=:user';
        $criteria->params = array(':user' => Yii::app()->user->id);

        $this->_model = ProductsCat::model()->findByPk($id, $criteria);

        if ($this->_model === null) {
            throw new CHttpException(404, 'The requested page does not exist.');
        }
        return $this->_model;
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

    //Back end - Get info cat
    public function getInfoCat($id) {
        $command = Yii::app()->db->createCommand('SELECT cat_title FROM ' . $this->tableName() . ' WHERE cat_id=:id');
        $command->bindParam(":id", $id, PDO::PARAM_INT);
        return $command->queryScalar();
    }

    //Back end - Get info cat
    public function countItemCat($id) {
        $user = Yii::app()->user->id;
        $command = Yii::app()->db->createCommand('SELECT COUNT(record_id) AS numcat FROM ' . $this->tableName() . ', dos_module_products WHERE ' . $this->tableName() . '.cat_id=dos_module_products.dos_module_item_cat_cat_id AND cat_id=:id AND dos_usernames_username=:user');
        $command->bindParam(":id", $id, PDO::PARAM_INT);
        $command->bindParam(":user", $user, PDO::PARAM_STR);
        return $command->queryScalar();
    }

    public function countSubcat($id) {
        $this->loopCat($id);
        return array('sub_cat_num' => $this->_sub_cat_num, 'sub_num_item' => $this->_sub_num_item);
    }

    private function loopCat($id) {
        $command = Yii::app()->db->createCommand('SELECT cat_id FROM ' . $this->tableName() . ' WHERE cat_parent_id=:id');
        $command->bindParam(":id", $id, PDO::PARAM_INT);
        $result = $command->queryAll();

        foreach ($result as $value) {
            $this->_sub_cat_num++;
            $this->_sub_num_item += $this->countItembyCat($value['cat_id']);
            $this->loopCat($value['cat_id']);
        }
    }

    private function countItembyCat($id) {
        $model = new Products();
        return $model->countItemByCat($id);
    }

    //Back end - find Cat parent
    public function findcatParent($cat_id, $cat_parent_id) {
        $command = Yii::app()->db->createCommand('SELECT cat_id FROM ' . $this->tableName() . ' WHERE cat_parent_id=:id');
        $command->bindParam(":id", $cat_id, PDO::PARAM_INT);
        $result = $command->queryAll();

        foreach ($result as $value) {
            $command = Yii::app()->db->createCommand('UPDATE ' . $this->tableName() . ' SET cat_parent_id=:cat_parent_id WHERE cat_id=:cid');
            $command->bindParam(":cat_parent_id", $cat_parent_id, PDO::PARAM_INT);
            $command->bindParam(":cid", $value['cat_id'], PDO::PARAM_INT);
            $command->execute();
        }
    }

    //Back end - Delete Record
    public function deleteRecord($id) {
        $item = ProductsCat::model()->find('cat_id=:id', array(':id' => $id));
        $path = YiiBase::getPathOfAlias('webroot') . USERFILES . '/ProductsCat/';
        //Del pic_full field
        if (($item->pic_full)) {
            if (file_exists($path . $item->pic_full)) {
                unlink($path . $item->pic_full);
            }
        }
        //Del pic_desc field
        if (($item->pic_desc)) {
            $str = explode('|', $item->pic_desc);
            foreach ($str as $value) {
                if (file_exists($path . $value)) {
                    unlink($path . $value);
                }
            }
        }
        ProductsCat::model()->findByPk($id)->delete(); //delete record
    }

    //Xóa tất cả item của phân loại con
    public function loopDelItemtoCat($cat_id) {
        $command = Yii::app()->db->createCommand('SELECT cat_id FROM ' . $this->tableName() . ' WHERE cat_parent_id=:id');
        $command->bindParam(":id", $cat_id, PDO::PARAM_INT);
        $result = $command->queryAll();

        $product = new Products();
        foreach ($result as $value) {
            //update dos_module_product_cat_cat_id
            $product->deleteItembyCat($value['cat_id']);
            $this->loopDelItemtoCat($value['cat_id']);
        }
    }

    //Di chuyển tất cả item của phân loại con đến phân loại:
    public function loopMoveItemtoCat($cat_id, $cat_id_new) {
        $command = Yii::app()->db->createCommand('SELECT cat_id FROM ' . $this->tableName() . ' WHERE cat_parent_id=:id');
        $command->bindParam(":id", $cat_id, PDO::PARAM_INT);
        $result = $command->queryAll();

        $product = new Products();
        foreach ($result as $value) {
            //update dos_module_product_cat_cat_id
            $product->updateItem($value['cat_id'], $cat_id_new);
            $this->loopMoveItemtoCat($value['cat_id'], $cat_id_new);
        }
    }

    //xóa phân loại con
    public function loopDelSubCat($cat_id) {
        $command = Yii::app()->db->createCommand('SELECT cat_id FROM ' . $this->tableName() . ' WHERE cat_parent_id=:cid');
        $command->bindParam(":cid", $cat_id, PDO::PARAM_INT);
        $result = $command->queryAll();

        foreach ($result as $value) {
            $this->deleteRecord($value['cat_id']);
            $this->loopDelSubCat($value['cat_id']);
        }
    }
    //Back end - Count item by user post
    public function countItemByUser(){
        $user = Yii::app()->user->id;
        $command = Yii::app()->db->createCommand('SELECT COUNT(cat_id) AS num FROM ' . $this->tableName() . ' WHERE dos_usernames_username=:user');
        $command->bindParam(":user", $user, PDO::PARAM_STR);
        return $command->queryScalar();
    }*/
}