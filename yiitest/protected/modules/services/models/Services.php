<?php

/**
 * This is the model class for table "dos_module_services".
 *
 * The followings are the available columns in table 'dos_module_services':
 * @property integer $record_id
 * @property string $title
 * @property string $titleen
 * @property string $preview
 * @property string $previewen
 * @property string $content
 * @property string $contenten
 * @property string $pic_full
 * @property integer $hit
 * @property string $created
 * @property integer $record_order
 * @property integer $hot
 * @property string $extra_field1
 * @property string $extra_field2
 * @property string $tag
 * @property string $tagen
 * @property string $description
 * @property string $descriptionen
 * @property integer $activated
 * @property string $dos_usernames_username
 *
 * The followings are the available model relations:
 * @property DosUsernames $dosUsernamesUsername
 */
class Services extends CActiveRecord {

    public $remove_pic_thumb;
    private $_oldImage;
    private $_model;
    private $_subdomain;

    public function init() {
        $this->_subdomain = Yii::app()->session['subdomain'];
    }

    /**
     * Returns the static model of the specified AR class.
     * @return Services the static model class
     */
    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

    /**
     * @return string the associated database table name
     */
    public function tableName() {
        return 'dos_module_services';
    }

    /**
     * @return array validation rules for model attributes.
     */
    public function rules() {
        // NOTE: you should only define rules for those attributes that
        // will receive user inputs.
        return array(
            array('title, content, tag', 'required', 'message' => '<strong>{attribute}</strong> Khong duoc rong'),
            array('hit, record_order, hot, activated', 'numerical', 'integerOnly' => true),
            array('title, titleen, pic_full, tag, tagen', 'length', 'max' => 100),
            array('tag, tagen', 'unique'),
            array('pic_full', 'file', 'types' => 'gif,png,jpg,jpeg,icon', 'allowEmpty' => true, 'maxSize' => 1024 * 1024 * 5),
            array('extra_field1, extra_field2, dos_usernames_username', 'length', 'max' => 45),
            array('description, descriptionen', 'length', 'max' => 250),
            array('preview, previewen, contenten, created', 'safe'),
            // The following rule is used by search().
            // Please remove those attributes that should not be searched.
            array('record_id, title, titleen, preview, previewen, content, contenten, pic_full, hit, created, record_order, hot, extra_field1, extra_field2, tag, description, activated, dos_usernames_username', 'safe', 'on' => 'search'),
        );
    }

    /*public function checkExistsTag($attribute){
        if (GetTag::tag($this->tag, $this->record_id, $this->tableName())) {
            $this->addError($attribute, $attribute . ': <strong>' . $this->tag . '</strong> đã tồn tại, vui lòng chọn một liên kết khác');
        }
    }*/

    /**
     * @return array relational rules.
     */
    public function relations() {
        // NOTE: you may need to adjust the relation name and the related
        // class name for the relations automatically generated below.
        return array(
            //'dosUsernamesUsername' => array(self::BELONGS_TO, 'DosUsernames', 'dos_usernames_username'),
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
            //'preview' => 'Preview',
            //'previewen' => 'Previewen',
            'content' => Yii::app()->controller->lang['content'],
            'contenten' => Yii::app()->controller->lang['contenten'],
            'pic_full' => Yii::app()->controller->lang['pic_full'],
            //'hit' => 'Hit',
            //'created' => 'Created',
            //'record_order' => 'Record Order',
            'hot' => Yii::app()->controller->lang['hot'],
            //'extra_field1' => 'Extra Field1',
            //'extra_field2' => 'Extra Field2',
            'tag' => Yii::app()->controller->lang['tag'],
            'tagen' => Yii::app()->controller->lang['tagen'],
            'description' => Yii::app()->controller->lang['description'],
            'descriptionen' => Yii::app()->controller->lang['descriptionen'],
            'activated' => Yii::app()->controller->lang['show'],
            'remove_pic_thumb' => Yii::app()->controller->lang['remove_pic'],
            //'dos_usernames_username' => 'Dos Usernames Username',
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
        $criteria->compare('preview', $this->preview, true);
        $criteria->compare('previewen', $this->previewen, true);
        $criteria->compare('content', $this->content, true);
        $criteria->compare('contenten', $this->contenten, true);
        $criteria->compare('pic_full', $this->pic_full, true);
        $criteria->compare('hit', $this->hit);
        $criteria->compare('created', $this->created, true);
        $criteria->compare('record_order', $this->record_order);
        $criteria->compare('hot', $this->hot);
        $criteria->compare('extra_field1', $this->extra_field1, true);
        $criteria->compare('extra_field2', $this->extra_field2, true);
        $criteria->compare('tag', $this->tag, true);
        $criteria->compare('tagen', $this->tagen, true);
        $criteria->compare('description', $this->description, true);
        $criteria->compare('descriptionen', $this->descriptionen, true);
        $criteria->compare('activated', $this->activated);
        $criteria->compare('dos_usernames_username', $this->dos_usernames_username, true);

        return new CActiveDataProvider($this, array(
            'criteria' => $criteria,
        ));
    }

    public function afterFind() {
        parent::afterFind();
        $this->_oldImage = $this->pic_full;
    }

    public function beforeSave() {
        $purifier = new CHtmlPurifier();
        $this->title = $purifier->purify($this->title);
        $this->titleen = $purifier->purify($this->titleen);
        $this->content = $purifier->purify($this->content);
        $this->contenten = $purifier->purify($this->contenten);
        $this->tag = $purifier->purify($this->tag);
        $this->tagen = $purifier->purify($this->tagen);
        $this->description = $purifier->purify($this->description);
        $this->descriptionen = $purifier->purify($this->descriptionen);

        if ($this->isNewRecord) {
            $this->record_order = $this->maxRecordOrder();
            $this->dos_usernames_username = Yii::app()->user->id;
            if ($_FILES[ucfirst(Yii::app()->controller->id)]['name']['pic_full']) {
                //import class upload images
                Yii::import('ext.EUploadedImage.EUploadedImage');
                $this->pic_full = EUploadedImage::getInstance($this, 'pic_full')->processUpload(Configs::configTemplate('services_width', Yii::app()->session['template']), Configs::configTemplate('services_height', Yii::app()->session['template']), USERFILES . '/' . Yii::app()->controller->id, $this->title);
            }
        } else {
            //check file old and upload
            if ($_FILES[ucfirst(Yii::app()->controller->id)]['name']['pic_full']) {
                //import class upload images
                Yii::import('ext.EUploadedImage.EUploadedImage');
                $this->pic_full = EUploadedImage::getInstance($this, 'pic_full')->processUpload(Configs::configTemplate('services_width', Yii::app()->session['template']), Configs::configTemplate('services_height', Yii::app()->session['template']), USERFILES . '/' . Yii::app()->controller->id, $this->title, $this->_oldImage);
            } else {
                //remove picthumb
                if (isset($_POST[ucfirst(Yii::app()->controller->id)]['remove_pic_thumb']) && $_POST[ucfirst(Yii::app()->controller->id)]['remove_pic_thumb'] == 1) {
                    $common_class = new Common();
                    $common_class->removePic($this->_oldImage);
                    $this->pic_full = '';
                } else {
                    $this->pic_full = $this->_oldImage;
                }
            }
        }

        return parent::beforeSave();
    }

    //Front end - List menu
    public function listMenu() {
        $command = Yii::app()->db->createCommand('SELECT record_id, title' . LANG . ', tag' . Yii::app()->session['lang'] . ' FROM ' . $this->tableName() . ' WHERE dos_usernames_username=:user ORDER BY record_order DESC, created DESC');
        $command->bindParam(":user", $this->_subdomain, PDO::PARAM_STR);
        return $command->queryAll();
    }

    //Front end - Get first record
    public function firstRecord() {
        $command = Yii::app()->db->createCommand('SELECT title' . LANG . ', content' . LANG . ', description' . LANG . ' FROM ' . $this->tableName() . ' WHERE dos_usernames_username=:user ORDER BY record_order DESC, created DESC');
        $command->bindParam(":user", $this->_subdomain, PDO::PARAM_STR);
        return $command->queryRow();
    }

    //Front end - Get detail record
    public function detailRecord($tag) {
        $command = Yii::app()->db->createCommand('SELECT record_id, title' . LANG . ', content' . LANG . ', hit, description' . LANG . ' FROM ' . $this->tableName() . ' WHERE tag' . Yii::app()->session['lang'] . '=:tag AND dos_usernames_username=:user');
        $command->bindParam(":tag", $tag, PDO::PARAM_STR);
        $command->bindParam(":user", $this->_subdomain, PDO::PARAM_STR);
        $row = $command->queryRow();
        if ($row) {
            //Update hit
            $this->updateHit($row['hit'] + 1, $row['record_id']);
            return $row;
        }
    }

    //Front end - update hit view
    private function updateHit($hit, $id) {
        $command = Yii::app()->db->createCommand('UPDATE ' . $this->tableName() . ' SET hit=:hit WHERE record_id=:id');
        $command->bindParam(":hit", $hit, PDO::PARAM_INT);
        $command->bindParam(":id", $id, PDO::PARAM_INT);
        $command->execute();
    }

    //Back end - List item admin
    public function listItemAdmin() {
        $criteria = new CDbCriteria();
        $criteria->order = 'record_order DESC, created DESC';
        $criteria->condition = 'dos_usernames_username=:user';
        $criteria->params = array(':user' => Yii::app()->user->id);
        $count = Services::model()->count($criteria);

        // elements per page
        $pages = new CPagination($count);
        $pages->pageSize = 15;
        $pages->applyLimit($criteria);

        return array('models' => Services::model()->findAll($criteria), 'pages' => $pages);
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
        $command = Yii::app()->db->createCommand('UPDATE ' . $this->tableName() . ' SET activated=:activated WHERE record_id=:id');
        $command->bindParam(":activated", $activated, PDO::PARAM_INT);
        $command->bindParam(":id", $id, PDO::PARAM_INT);
        return $command->execute();
    }

    //Back end - Delete Record
    private function deleteRecord($id) {
        $item = Services::model()->find('record_id=:id', array(':id' => $id));
        $path = YiiBase::getPathOfAlias('webroot') . USERFILES . '/' . Yii::app()->controller->id . '/';
        if ($item->pic_full && file_exists($path . $item->pic_full)) {
            unlink($path . $item->pic_full);
        }
        Services::model()->findByPk($id)->delete(); //delete record_id
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
            $criteria->order = 'record_order ASC, created ASC';
            $criteria->condition = 'dos_usernames_username=:user';
            $criteria->params = array(':user' => Yii::app()->user->id);

            $models = Services::model()->findAll($criteria);

            $i = 1;
            foreach ($models as $model) {
                Services::model()->updateByPk($model['record_id'], array('record_order' => $i));
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
        $command = Yii::app()->db->createCommand('SELECT max(record_order) AS max FROM ' . $this->tableName() . ' WHERE dos_usernames_username=:user');
        $command->bindParam(":user", $user, PDO::PARAM_STR);
        return $command->queryScalar() + 1;
    }

    //Back end - Get record to Edit
    public function loadEdit($id) {
        $criteria = new CDbCriteria();
        $criteria->condition = 'dos_usernames_username=:user';
        $criteria->params = array(':user' => Yii::app()->user->id);

        $this->_model = Services::model()->findByPk($id, $criteria);

        if ($this->_model === null) {
            throw new CHttpException(404, 'The requested page does not exist.');
        }
        return $this->_model;
    }

    //Back end - Count item by user post
    public function countItemByUser() {
        $user = Yii::app()->user->id;
        $command = Yii::app()->db->createCommand('SELECT COUNT(record_id) AS num FROM ' . $this->tableName() . ' WHERE dos_usernames_username=:user');
        $command->bindParam(":user", $user, PDO::PARAM_STR);
        return $command->queryScalar();
    }
}