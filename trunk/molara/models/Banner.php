<?php

/**
 * This is the model class for table "dos_module_banners".
 *
 * The followings are the available columns in table 'dos_module_banners':
 * @property integer $banner_id
 * @property string $banner_date
 * @property string $banner_name
 * @property string $banner_url
 * @property string $banner_link
 * @property integer $banner_order
 * @property string $banner_type
 * @property string $position
 * @property integer $enable
 * @property string $dos_usernames_username
 *
 * The followings are the available model relations:
 * @property DosUsernames $dosUsernamesUsername
 */
class Banner extends CActiveRecord {

    public $change_file_name;
    public $txt_file_name;
    private $_oldImage;
    private $_model;
    private $_subdomain;

    public function init() {
        $this->_subdomain = Yii::app()->session['subdomain'];
    }

    /**
     * Returns the static model of the specified AR class.
     * @return Banner the static model class
     */
    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

    /**
     * @return string the associated database table name
     */
    public function tableName() {
        return 'dos_module_banners';
    }

    /**
     * @return array validation rules for model attributes.
     */
    public function rules() {
        // NOTE: you should only define rules for those attributes that
        // will receive user inputs.
        return array(
            array('banner_name, banner_type, position', 'required'),
            array('banner_order, enable, change_file_name', 'numerical', 'integerOnly' => true),
            array('banner_name, banner_url, dos_usernames_username, txt_file_name', 'length', 'max' => 45),
            array('banner_url', 'file', 'types' => 'gif,png,jpg,jpeg,icon', 'allowEmpty' => false, 'maxSize' => 1024 * 1024 * 5, 'on' => 'add'),
            array('banner_url', 'file', 'types' => 'gif,png,jpg,jpeg,icon', 'allowEmpty' => true, 'maxSize' => 1024 * 1024 * 5, 'on' => 'edit'),
            array('banner_link', 'length', 'max' => 200),
            array('banner_type', 'length', 'max' => 10),
            array('position', 'length', 'max' => 20),
            // The following rule is used by search().
            // Please remove those attributes that should not be searched.
            array('banner_id, banner_date, banner_name, banner_url, banner_link, banner_order, banner_type, position, enable, dos_usernames_username', 'safe', 'on' => 'search'),
        );
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
            'banner_id' => 'Banner',
            'banner_date' => 'Banner Date',
            'banner_name' => 'Banner Name',
            'banner_url' => 'Banner Url',
            'banner_link' => 'Banner Link',
            'banner_order' => 'Banner Order',
            'banner_type' => 'Banner Type',
            'position' => 'Position',
            'enable' => 'Enable',
            'dos_usernames_username' => 'Dos Usernames Username',
            'change_file_name' => 'Change File name',
            'txt_file_name' => 'Txt File Name',
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

        $criteria->compare('banner_id', $this->banner_id);
        $criteria->compare('banner_date', $this->banner_date, true);
        $criteria->compare('banner_name', $this->banner_name, true);
        $criteria->compare('banner_url', $this->banner_url, true);
        $criteria->compare('banner_link', $this->banner_link, true);
        $criteria->compare('banner_order', $this->banner_order);
        $criteria->compare('banner_type', $this->banner_type);
        $criteria->compare('position', $this->position, true);
        $criteria->compare('enable', $this->enable);
        $criteria->compare('dos_usernames_username', $this->dos_usernames_username, true);

        return new CActiveDataProvider($this, array(
                    'criteria' => $criteria,
                ));
    }

    public function afterFind() {
        parent::afterFind();
        $this->_oldImage = $this->banner_url;
    }

    public function beforeSave() {
        $purifier = new CHtmlPurifier();
        $this->banner_name = $purifier->purify($this->banner_name);
        $this->banner_link = $purifier->purify($this->banner_link);

        if ($this->isNewRecord) {
            $this->banner_order = $this->maxRecordOrder();
            $this->dos_usernames_username = Yii::app()->user->id;
            if ($_FILES[ucfirst(Yii::app()->controller->id)]['name']['banner_url']) {
                //import class upload images
                Yii::import('ext.EUploadedImage.EUploadedImage');
                $this->banner_url = EUploadedImage::getInstance($this, 'banner_url')->processUpload(($this->banner_type=='logo') ? Configs::configTemplate('logo_width', Yii::app()->session['template']) : Configs::configTemplate('banner_width', Yii::app()->session['template']), ($this->banner_type=='logo') ? Configs::configTemplate('logo_height', Yii::app()->session['template']) : Configs::configTemplate('banner_height', Yii::app()->session['template']), USERFILES . '/' . Yii::app()->controller->id, $this->banner_name, '', $this->change_file_name, $this->txt_file_name);
            }
        } else {
            //check file old and upload
            if ($_FILES[ucfirst(Yii::app()->controller->id)]['name']['banner_url']) {
                //import class upload images
                Yii::import('ext.EUploadedImage.EUploadedImage');
                $this->banner_url = EUploadedImage::getInstance($this, 'banner_url')->processUpload(($this->banner_type=='logo') ? Configs::configTemplate('logo_width', Yii::app()->session['template']) : Configs::configTemplate('banner_width', Yii::app()->session['template']), ($this->banner_type=='logo') ? Configs::configTemplate('logo_height', Yii::app()->session['template']) : Configs::configTemplate('banner_height', Yii::app()->session['template']), USERFILES . '/' . Yii::app()->controller->id, $this->banner_name, $this->_oldImage);
            } else {
                $this->banner_url = $this->_oldImage;
            }
        }

        return parent::beforeSave();
    }

    //Front end - get Logo by module
    public function getLogo($module) {
        $command = Yii::app()->db->createCommand('SELECT banner_name, banner_url, banner_link FROM ' . $this->tableName() . ' WHERE banner_type=\'logo\' AND position=:module AND enable=1 AND dos_usernames_username=:user');
        $command->bindParam(":module", $module, PDO::PARAM_STR);
        $command->bindParam(":user", $this->_subdomain, PDO::PARAM_STR);
        return $command->queryRow();
    }
    
    //Front end - get Banner by module
    public function getBanner($module) {
        $command = Yii::app()->db->createCommand('SELECT banner_name, banner_url, banner_link FROM ' . $this->tableName() . ' WHERE banner_type=\'banners\' AND position=:module AND enable=1 AND dos_usernames_username=:user');
        $command->bindParam(":module", $module, PDO::PARAM_STR);
        $command->bindParam(":user", $this->_subdomain, PDO::PARAM_STR);
        return $command->queryAll();
    }

    //Back end - List item admin
    public function listItemAdmin() {
        $criteria = new CDbCriteria();
        $criteria->order = 'banner_order DESC, banner_date DESC';
        $criteria->condition = 'dos_usernames_username=:user';
        $criteria->params = array(':user' => Yii::app()->user->id);
        $count = Banner::model()->count($criteria);

        // elements per page
        $pages = new CPagination($count);
        $pages->pageSize = 15;
        $pages->applyLimit($criteria);

        return array('models' => Banner::model()->findAll($criteria), 'pages' => $pages);
    }

    //Back end - Update Record
    private function updateSort($order, $id) {
        $command = Yii::app()->db->createCommand('UPDATE ' . $this->tableName() . ' SET banner_order=:order WHERE banner_id=:id');
        $command->bindParam(":order", $order, PDO::PARAM_INT);
        $command->bindParam(":id", $id, PDO::PARAM_INT);
        return $command->execute();
    }

    //Back end - Update Record
    private function updateShowHidden($activated, $id) {
        $command = Yii::app()->db->createCommand('UPDATE ' . $this->tableName() . ' SET enable=:activated WHERE banner_id=:id');
        $command->bindParam(":activated", $activated, PDO::PARAM_INT);
        $command->bindParam(":id", $id, PDO::PARAM_INT);
        return $command->execute();
    }

    //Back end - Delete Record
    private function deleteRecord($id) {
        $item = Banner::model()->find('banner_id=:id', array(':id' => $id));
        if (($item->banner_url && file_exists(YiiBase::getPathOfAlias('webroot') . USERFILES . '/' . Yii::app()->controller->id . '/' . $item->banner_url))) {
            unlink(YiiBase::getPathOfAlias('webroot') . USERFILES . '/' . Yii::app()->controller->id . '/' . $item->banner_url);
        }
        Banner::model()->findByPk($id)->delete(); //delete record_id
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
            $criteria->order = 'banner_order ASC, banner_date ASC';
            $criteria->condition = 'dos_usernames_username=:user';
            $criteria->params = array(':user' => Yii::app()->user->id);

            $models = Banner::model()->findAll($criteria);

            $i = 1;
            foreach ($models as $model) {
                Banner::model()->updateByPk($model['banner_id'], array('banner_order' => $i));
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

    //Back end - position Banner
    public function positionBanner() {
        $model = new ModuleUsername();
        return $model->moduleByUser(Yii::app()->user->id);
    }

    //Back end - Get max record
    public function maxRecordOrder() {
        $user = Yii::app()->user->id;
        $command = Yii::app()->db->createCommand('SELECT max(banner_order) AS max FROM ' . $this->tableName() . ' WHERE dos_usernames_username=:user');
        $command->bindParam(":user", $user, PDO::PARAM_STR);
        return $command->queryScalar() + 1;
    }

    //Back end - Get record to Edit
    public function loadEdit($id) {
        $criteria = new CDbCriteria();
        $criteria->condition = 'dos_usernames_username=:user';
        $criteria->params = array(':user' => Yii::app()->user->id);

        $this->_model = Banner::model()->findByPk($id, $criteria);

        if ($this->_model === null) {
            throw new CHttpException(404, 'The requested page does not exist.');
        }
        return $this->_model;
    }
    //Back end - Count item by user post
    public function countItemByUser(){
        $user = Yii::app()->user->id;
        $command = Yii::app()->db->createCommand('SELECT COUNT(banner_id) AS num FROM ' . $this->tableName() . ' WHERE dos_usernames_username=:user');
        $command->bindParam(":user", $user, PDO::PARAM_STR);
        return $command->queryScalar();
    }
}