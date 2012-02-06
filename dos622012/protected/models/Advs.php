<?php

/**
 * This is the model class for table "dos_module_advs".
 *
 * The followings are the available columns in table 'dos_module_advs':
 * @property integer $record_id
 * @property string $title
 * @property string $titleen
 * @property string $pic_thumb
 * @property string $url
 * @property string $create_date
 * @property string $start_date
 * @property string $end_date
 * @property integer $hits
 * @property integer $record_order
 * @property string $position
 * @property string $type
 * @property integer $enable
 * @property string $dos_usernames_username
 *
 * The followings are the available model relations:
 * @property DosUsernames $dosUsernamesUsername
 */
class Advs extends CActiveRecord {

    private $_oldImage;
    private $_model;
    private $_subdomain;

    public function init() {
        $this->_subdomain = Yii::app()->session['subdomain'];
    }

    /**
     * Returns the static model of the specified AR class.
     * @return Advs the static model class
     */
    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

    /**
     * @return string the associated database table name
     */
    public function tableName() {
        return 'dos_module_advs';
    }

    /**
     * @return array validation rules for model attributes.
     */
    public function rules() {
        // NOTE: you should only define rules for those attributes that
        // will receive user inputs.
        return array(
            array('title, url, position', 'required'),
            array('hits, record_order, enable', 'numerical', 'integerOnly' => true),
            array('title, titleen', 'length', 'max' => 100),
            array('pic_thumb', 'file', 'types' => 'gif,png,jpg,jpeg,icon', 'allowEmpty' => false, 'maxSize' => 1024 * 1024 * 5, 'on' => 'add'),
            array('pic_thumb', 'file', 'types' => 'gif,png,jpg,jpeg,icon', 'allowEmpty' => true, 'maxSize' => 1024 * 1024 * 5, 'on' => 'edit'),
            array('pic_thumb', 'length', 'max' => 50),
            array('url', 'length', 'max' => 200),
            array('url', 'url'),
            array('position, type, dos_usernames_username', 'length', 'max' => 45),
            array('start_date, end_date', 'safe'),
            array('start_date, end_date', 'type', 'type' => 'date', 'message' => '{attribute}: is not a date!', 'dateFormat' => 'dd-MM-yyyy'),
            array('start_date', 'compareDateRange', 'type' => 'date', 'message' => '{attribute}: is not a date!', 'dateFormat' => 'dd-MM-yyyy'),
            // The following rule is used by search().
            // Please remove those attributes that should not be searched.
            array('record_id, title, titleen, pic_thumb, url, create_date, start_date, end_date, hits, record_order, position, type, enable, dos_usernames_username', 'safe', 'on' => 'search'),
        );
    }

    public function compareDateRange($attribute, $params) {
        if (!empty($this->attributes['start_date'])) {
            if (strtotime($this->attributes['end_date']) < strtotime($this->attributes['start_date'])) {
                $this->addError($attribute, 'The expired date can not be less/before posted date.');
            }
        }
    }

    /**
     * @return array relational rules.
     */
    public function relations() {
        // NOTE: you may need to adjust the relation name and the related
        // class name for the relations automatically generated below.
        return array(
            'dosUsernamesUsername' => array(self::BELONGS_TO, 'DosUsernames', 'dos_usernames_username'),
        );
    }

    /**
     * @return array customized attribute labels (name=>label)
     */
    public function attributeLabels() {
        return array(
            'record_id' => 'Record',
            'title' => 'Title',
            'titleen' => 'Titleen',
            'pic_thumb' => 'Pic Thumb',
            'url' => 'Url',
            'create_date' => 'Create Date',
            'start_date' => 'Start Date',
            'end_date' => 'End Date',
            'hits' => 'Hits',
            'record_order' => 'Record Order',
            'position' => 'Position',
            'type' => 'Type',
            'enable' => 'Enable',
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

        $criteria->compare('record_id', $this->record_id);
        $criteria->compare('title', $this->title, true);
        $criteria->compare('titleen', $this->titleen, true);
        $criteria->compare('pic_thumb', $this->pic_thumb, true);
        $criteria->compare('url', $this->url, true);
        $criteria->compare('create_date', $this->create_date, true);
        $criteria->compare('start_date', $this->start_date, true);
        $criteria->compare('end_date', $this->end_date, true);
        $criteria->compare('hits', $this->hits);
        $criteria->compare('record_order', $this->record_order);
        $criteria->compare('position', $this->position, true);
        $criteria->compare('type', $this->type, true);
        $criteria->compare('enable', $this->enable);
        $criteria->compare('dos_usernames_username', $this->dos_usernames_username, true);

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
        $this->title = $purifier->purify($this->title);
        $this->start_date = date('Y-m-d H:i:s', strtotime($this->start_date));
        $this->end_date = date('Y-m-d H:i:s', strtotime($this->end_date));

        //check file old and upload
        if (!$this->isNewRecord) {
            if ($_FILES[ucfirst(Yii::app()->controller->id)]['name']['pic_thumb']) {
                //import class upload images
                Yii::import('ext.EUploadedImage.EUploadedImage');
                $this->pic_thumb = EUploadedImage::getInstance($this, 'pic_thumb')->processUpload(Configs::configTemplate('advs_width', Yii::app()->session['template']), Configs::configTemplate('advs_height', Yii::app()->session['template']), Yii::app()->controller->id, $this->_oldImage);
            } else {
                $this->pic_thumb = $this->_oldImage;
            }
        } else {
            $this->record_order = $this->maxRecordOrder();
            $this->dos_usernames_username = Yii::app()->user->id;
            if ($_FILES[ucfirst(Yii::app()->controller->id)]['name']['pic_thumb']) {
                //import class upload images
                Yii::import('ext.EUploadedImage.EUploadedImage');
                $this->pic_thumb = EUploadedImage::getInstance($this, 'pic_thumb')->processUpload(Configs::configTemplate('advs_width', Yii::app()->session['template']), Configs::configTemplate('advs_height', Yii::app()->session['template']), Yii::app()->controller->id);
            }
        }

        return parent::beforeSave();
    }

    //Front end - list advs left
    public function listItemsLeft() {
        $command = Yii::app()->db->createCommand('SELECT record_id, title' . LANG . ', pic_thumb, url, type FROM ' . $this->tableName() . ' WHERE start_date <= NOW() AND end_date >= NOW() AND position=\'left\' AND enable=1 AND dos_usernames_username=:user ORDER BY record_order DESC, create_date DESC');
        $command->bindParam(":user", $this->_subdomain, PDO::PARAM_STR);
        return $command->queryAll();
    }

    //Back end - List item admin
    public function listItemAdmin() {
        $criteria = new CDbCriteria();
        $criteria->order = 'record_order DESC, create_date DESC';
        $criteria->condition = 'dos_usernames_username=:user';
        $criteria->params = array(':user' => Yii::app()->user->id);
        $count = Advs::model()->count($criteria);

        // elements per page
        $pages = new CPagination($count);
        $pages->pageSize = 15;
        $pages->applyLimit($criteria);

        return array('models' => Advs::model()->findAll($criteria), 'pages' => $pages);
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
        $item = Advs::model()->find('record_id=:id', array(':id' => $id));
        if (($item->pic_thumb && file_exists(YiiBase::getPathOfAlias('webroot') . USERFILES . '/' . Yii::app()->controller->id . '/' . $item->pic_thumb))) {
            unlink(YiiBase::getPathOfAlias('webroot') . USERFILES . '/' . Yii::app()->controller->id . '/' . $item->pic_thumb);
        }
        Advs::model()->findByPk($id)->delete(); //delete record_id
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
            $criteria->order = 'record_order ASC, create_date ASC';
            $criteria->condition = 'dos_usernames_username=:user';
            $criteria->params = array(':user' => Yii::app()->user->id);

            $models = Advs::model()->findAll($criteria);

            $i = 1;
            foreach ($models as $model) {
                Advs::model()->updateByPk($model['record_id'], array('record_order' => $i));
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
        $command = Yii::app()->db->createCommand('SELECT max(record_order) AS max FROM ' . $this->tableName() . ' WHERE dos_usernames_username=:user');
        $command->bindParam(":user", Yii::app()->user->id, PDO::PARAM_STR);
        return $command->queryScalar() + 1;
    }

    //Back end - Get record to Edit
    public function loadEdit($id) {
        $criteria = new CDbCriteria();
        $criteria->condition = 'dos_usernames_username=:user';
        $criteria->params = array(':user' => Yii::app()->user->id);

        $this->_model = Advs::model()->findByPk($id, $criteria);

        if ($this->_model === null) {
            throw new CHttpException(404, 'The requested page does not exist.');
        }
        return $this->_model;
    }

}