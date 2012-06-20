<?php

/**
 * This is the model class for table "dos_module_news".
 *
 * The followings are the available columns in table 'dos_module_news':
 * @property integer $record_id
 * @property string $title
 * @property string $titleen
 * @property string $postdate
 * @property string $pic_thumb
 * @property string $preview
 * @property string $previewen
 * @property string $content
 * @property string $contenten
 * @property string $tag
 * @property string $tagen
 * @property string $description
 * @property string $descriptionen
 * @property integer $hits
 * @property integer $record_order
 * @property integer $hot
 * @property string $extra_field1
 * @property string $extra_field2
 * @property integer $enable
 * @property integer $dos_module_item_cat_cat_id
 *
 * The followings are the available model relations:
 * @property DosModuleNewsCat $dosModuleItemCatCat
 */
class News extends CActiveRecord {
    private $_subdomain;

    public $remove_pic_thumb;
    private $_oldImage;
    private $_model;

    public function init() {
        $this->_subdomain = Yii::app()->session['subdomain'];
    }

    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

    /**
     * @return string the associated database table name
     */
    public function tableName() {
        return 'dos_module_news';
    }

    /**
     * @return array validation rules for model attributes.
     */
    public function rules() {
        // NOTE: you should only define rules for those attributes that
        // will receive user inputs.
        return array(
            array('title, content, tag, dos_module_item_cat_cat_id', 'required'),
            array('hits, record_order, hot, enable, dos_module_item_cat_cat_id', 'numerical', 'integerOnly' => true),
            array('title, titleen, pic_thumb, tag, tagen, extra_field1, extra_field2', 'length', 'max' => 100),
            array('tag, tagen', 'checkExistsTag'),
            array('description, descriptionen', 'length', 'max' => 250),
            array('preview, previewen, contenten', 'safe'),
            // The following rule is used by search().
            // Please remove those attributes that should not be searched.
            array('record_id, title, titleen, postdate, pic_thumb, preview, previewen, content, contenten, tag, tagen, description, descriptionen, hits, record_order, hot, extra_field1, extra_field2, enable, dos_module_item_cat_cat_id', 'safe', 'on' => 'search'),
        );
    }

    public function checkExistsTag($attribute) {
        if (GetTag::tag($this->tag, $this->record_id, $this->tableName(), 'id', 2, 'dos_module_news_cat')) {
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
            'NewsCat' => array(self::BELONGS_TO, 'NewsCat', 'dos_module_item_cat_cat_id'),
        );
    }

    /**
     * @return array customized attribute labels (name=>label)
     */
    public function attributeLabels() {
        return array(
            //'record_id' => 'Record',
            'title' => Yii::app()->controller->lang['title'],
            'titleen' => Yii::app()->controller->lang['titleen'],
            //'postdate' => 'Postdate',
            'pic_thumb' => Yii::app()->controller->lang['pic_thumb'],
            'preview' => Yii::app()->controller->lang['preview'],
            'previewen' => Yii::app()->controller->lang['previewen'],
            'content' => Yii::app()->controller->lang['content'],
            'contenten' => Yii::app()->controller->lang['contenten'],
            'tag' => Yii::app()->controller->lang['tag'],
            'tagen' => Yii::app()->controller->lang['tagen'],
            'description' => Yii::app()->controller->lang['description'],
            'descriptionen' => Yii::app()->controller->lang['descriptionen'],
            //'hits' => 'Hits',
            //'record_order' => 'Record Order',
            'hot' => Yii::app()->controller->lang['hot'],
            //'extra_field1' => 'Extra Field1',
            //'extra_field2' => 'Extra Field2',
            'enable' => Yii::app()->controller->lang['show'],
            'dos_module_item_cat_cat_id' => Yii::app()->controller->lang['cat_parent'],
            'remove_pic_thumb' => Yii::app()->controller->lang['remove_pic'],
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
        $criteria->compare('preview', $this->preview, true);
        $criteria->compare('previewen', $this->previewen, true);
        $criteria->compare('content', $this->content, true);
        $criteria->compare('contenten', $this->contenten, true);
        $criteria->compare('tag', $this->tag, true);
        $criteria->compare('tagen', $this->tagen, true);
        $criteria->compare('description', $this->description, true);
        $criteria->compare('descriptionen', $this->descriptionen, true);
        $criteria->compare('hits', $this->hits);
        $criteria->compare('record_order', $this->record_order);
        $criteria->compare('hot', $this->hot);
        $criteria->compare('extra_field1', $this->extra_field1, true);
        $criteria->compare('extra_field2', $this->extra_field2, true);
        $criteria->compare('enable', $this->enable);
        $criteria->compare('dos_module_item_cat_cat_id', $this->dos_module_item_cat_cat_id);

        return new CActiveDataProvider($this, array(
            'criteria' => $criteria,
        ));
    }

    public function afterFind() {
        parent::afterFind();
        $this->_oldImage = $this->pic_thumb;
    }

    public function beforeSave() {
        $purifier = new CHtmlPurifier();
        $this->title = $purifier->purify(trim($this->title));
        $this->titleen = $purifier->purify(trim($this->titleen));
        $this->preview = $purifier->purify(trim($this->preview));
        $this->previewen = $purifier->purify(trim($this->previewen));
        $this->content = $purifier->purify(trim($this->content));
        $this->contenten = $purifier->purify(trim($this->contenten));
        $this->tag = $purifier->purify(trim($this->tag));
        $this->tagen = $purifier->purify(trim($this->tagen));
        $this->description = $purifier->purify(trim($this->description));
        $this->descriptionen = $purifier->purify(trim($this->descriptionen));

        if ($this->isNewRecord) {
            $this->record_order = $this->maxRecordOrder();
            if ($_FILES[ucfirst(Yii::app()->controller->id)]['name']['pic_thumb']) {
                $width = Configs::configTemplate('news_width_thumb', Yii::app()->session['template']);
                $height = Configs::configTemplate('news_height_thumb', Yii::app()->session['template']);

                //import class upload images
                Yii::import('ext.EUploadedImage.EUploadedImage');
                $this->pic_thumb = EUploadedImage::getInstance($this, 'pic_thumb')->processUpload($width, $height, '/public/userfiles/image/' . Yii::app()->user->id . '/image' . '/' . Yii::app()->controller->id, $this->title);
            }
        } else {
            //check file old and upload
            if ($_FILES[ucfirst(Yii::app()->controller->id)]['name']['pic_thumb']) {
                $width = Configs::configTemplate('news_width_thumb', Yii::app()->session['template']);
                $height = Configs::configTemplate('news_height_thumb', Yii::app()->session['template']);

                //import class upload images
                Yii::import('ext.EUploadedImage.EUploadedImage');
                $this->pic_thumb = EUploadedImage::getInstance($this, 'pic_thumb')->processUpload($width, $height, '/public/userfiles/image/' . Yii::app()->user->id . '/image' . '/' . Yii::app()->controller->id, $this->title, $this->_oldImage);
            } else {
                //remove picthumb
                if (isset($_POST[ucfirst(Yii::app()->controller->id)]['remove_pic_thumb']) && $_POST[ucfirst(Yii::app()->controller->id)]['remove_pic_thumb'] == 1) {
                    $common_class = new Common();
                    $common_class->removePic($this->_oldImage, 0, 1);
                    $this->pic_thumb = '';
                } else {
                    $this->pic_thumb = $this->_oldImage;
                }
            }
        }

        return parent::beforeSave();
    }

    public function listItemsNew() {
        $criteria = new CDbCriteria();
        $criteria->with = array(__CLASS__ . 'Cat');
        $criteria->select = 'title' . LANG . ', pic_thumb, preview' . LANG . ', tag' . LANG . ', hot';
        $criteria->order = 'record_order DESC, postdate DESC';
        $criteria->condition = 'enable = 1 AND dos_usernames_username=:user';
        $criteria->params = array(':user' => $this->_subdomain);
        $criteria->limit = Configs::configTemplate('news_num_paging_new', Yii::app()->session['template']);

        return $this::model()->findAll($criteria);
    }

    public function listItemsHot() {
        $criteria = new CDbCriteria();
        $criteria->with = array(__CLASS__ . 'Cat');
        $criteria->select = 'title' . LANG . ', pic_thumb, tag' . LANG . '';
        $criteria->order = 'record_order DESC, postdate DESC';
        $criteria->condition = 'hot = 1 AND enable = 1 AND dos_usernames_username=:user';
        $criteria->params = array(':user' => $this->_subdomain);
        $criteria->limit = Configs::configTemplate('news_num_paging_hot', Yii::app()->session['template']);

        return $this::model()->findAll($criteria);
    }

    public function listItemsIndex() {
        $criteria = new CDbCriteria();
        $criteria->with = array('NewsCat');
        $criteria->select = 'title' . LANG . ', pic_thumb, preview' . LANG . ', tag' . LANG . ', hot';
        $criteria->order = 'record_order DESC, postdate DESC';
        $criteria->condition = 'dos_usernames_username=:user AND enable = 1';
        $criteria->params = array(':user' => $this->_subdomain);
        $count = News::model()->count($criteria);

        // elements per page
        $pages = new CPagination($count);
        $pages->pageSize = Yii::app()->controller->configs['news_num_paging_index'];
        $pages->applyLimit($criteria);

        return array('models' => $this::model()->findAll($criteria), 'pages' => $pages);
    }

    //Front end - list Item by Cat
    public function listItemByCat($cid) {
        $criteria = new CDbCriteria();
        $criteria->with = array(__CLASS__ . 'Cat');
        $criteria->select = 'title' . LANG . ', pic_thumb, preview' . LANG . ', tag' . LANG . ', hot';
        $criteria->order = 'record_order DESC, postdate DESC';
        $criteria->condition = 'enable=1 AND dos_module_item_cat_cat_id=:cid';
        $criteria->params = array(':cid' => $cid);

        $count = $this::model()->count($criteria);

        // elements per page
        $pages = new CPagination($count);
        $pages->pageSize = Yii::app()->controller->configs['news_num_paging_cat'];
        $pages->applyLimit($criteria);

        return array('models' => $this::model()->findAll($criteria), 'pages' => $pages);
    }

    //Front end - get detail item
    public function detailItem($tag) {
        $id = $this->getIDByTag($tag);

        $criteria = new CDbCriteria();
        $criteria->with = array('NewsCat');
        $criteria->condition = 'enable=1';

        $this->_model = $this::model()->findByPk($id, $criteria);

        if ($this->_model === null) {
            throw new CHttpException(404, 'The requested page does not exist.');
        }
        return $this->_model;
    }

    //Front end - find record_id by tag
    private function getIDByTag($tag) {
        $command = Yii::app()->db->createCommand('SELECT record_id FROM ' . $this->tableName() . ', ' . $this->tableName() . '_cat WHERE ' . $this->tableName() . '.dos_module_item_cat_cat_id = ' . $this->tableName() . '_cat.cat_id AND ' . $this->tableName() . '.tag' . LANG . '=:tag AND dos_usernames_username=:user');
        $command->bindParam(":tag", $tag, PDO::PARAM_STR);
        $command->bindParam(":user", $this->_subdomain, PDO::PARAM_STR);
        return $command->queryScalar();
    }

    //Back end - Get max record
    public function maxRecordOrder() {
        $user = Yii::app()->user->id;
        $command = Yii::app()->db->createCommand('SELECT max(record_order) AS max FROM ' . $this->tableName() . ', ' . $this->tableName() . '_cat WHERE ' . $this->tableName() . '_cat.cat_id = ' . $this->tableName() . '.dos_module_item_cat_cat_id AND dos_usernames_username=:user');
        $command->bindParam(":user", $user, PDO::PARAM_STR);
        return $command->queryScalar() + 1;
    }

    //Back end - List item admin
    public function listItemAdmin() {
        $criteria = new CDbCriteria();
        $criteria->with = array('NewsCat');
        $criteria->order = 'record_order DESC, postdate DESC';
        $criteria->condition = 'dos_usernames_username=:user';
        $criteria->params = array(':user' => Yii::app()->user->id);
        $count = News::model()->count($criteria);

        // elements per page
        $pages = new CPagination($count);
        $pages->pageSize = 15;
        $pages->applyLimit($criteria);

        return array('models' => News::model()->findAll($criteria), 'pages' => $pages);
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
    private function deleteRecord($id) {
        $item = News::model()->find('record_id=:id', array(':id' => $id));

        $common_class = new Common();
        $common_class->removePic($item->pic_thumb); //Del pic_thumb field

        News::model()->findByPk($id)->delete(); //delete record_id
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
            $criteria->with = array('NewsCat');
            $criteria->order = 'record_order ASC, postdate ASC';
            $criteria->condition = 'dos_usernames_username=:user';
            $criteria->params = array(':user' => Yii::app()->user->id);

            $models = News::model()->findAll($criteria);

            $i = 1;
            foreach ($models as $model) {
                News::model()->updateByPk($model['record_id'], array('record_order' => $i));
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

    //Back end - Get record to Edit
    public function loadEdit($id) {
        $criteria = new CDbCriteria();

        $criteria->with = array('NewsCat');
        $criteria->condition = 'dos_usernames_username=:user';
        $criteria->params = array(':user' => Yii::app()->user->id);

        $this->_model = News::model()->findByPk($id, $criteria);

        if ($this->_model === null) {
            throw new CHttpException(404, 'The requested page does not exist.');
        }
        return $this->_model;
    }

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
        $cat = new NewsCat();
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
    public function countItemByUser() {
        $user = Yii::app()->user->id;
        $command = Yii::app()->db->createCommand('SELECT COUNT(record_id) AS num FROM ' . $this->tableName() . ', ' . $this->tableName() . '_cat WHERE ' . $this->tableName() . '.dos_module_item_cat_cat_id = ' . $this->tableName() . '_cat.cat_id AND dos_usernames_username=:user');
        $command->bindParam(":user", $user, PDO::PARAM_STR);
        return $command->queryScalar();
    }
}