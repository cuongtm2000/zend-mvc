<?php

/**
 * This is the model class for table "hoiit_module_banners".
 *
 * The followings are the available columns in table 'hoiit_module_banners':
 * @property integer $banner_id
 * @property string $banner_date
 * @property string $banner_name
 * @property string $banner_picture
 * @property string $banner_link
 * @property integer $banner_order
 * @property string $banner_type
 * @property integer $banner_click
 * @property string $module_id
 * @property integer $enable
 */
class Banner extends CActiveRecord {
    private $_model;
    private $_oldImage;

    /**
     * Returns the static model of the specified AR class.
     * @param string $className active record class name.
     * @return Banner the static model class
     */
    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

    /**
     * @return string the associated database table name
     */
    public function tableName() {
        return 'hoiit_module_banners';
    }

    /**
     * @return array validation rules for model attributes.
     */
    public function rules() {
        // NOTE: you should only define rules for those attributes that
        // will receive user inputs.
        return array(
            array('banner_name', 'required'),
            array('banner_picture', 'file', 'types' => 'gif,png,jpg,jpeg,icon', 'allowEmpty' => false, 'maxSize' => 1024 * 1024 * 5, 'on' => 'add'),
            array('banner_picture', 'file', 'types' => 'gif,png,jpg,jpeg,icon', 'allowEmpty' => true, 'maxSize' => 1024 * 1024 * 5, 'on' => 'edit'),
            array('banner_link', 'url'),
            array('banner_order, banner_click, enable', 'numerical', 'integerOnly' => true),
            array('banner_name, banner_picture', 'length', 'max' => 100),
            array('banner_link', 'length', 'max' => 200),
            //array('banner_type', 'length', 'max' => 6),
            array('module_id', 'length', 'max' => 30),
            // The following rule is used by search().
            // Please remove those attributes that should not be searched.
            array('banner_id, banner_date, banner_name, banner_picture, banner_link, banner_order, banner_type, banner_click, module_id, enable', 'safe', 'on' => 'search'),
        );
    }

    /**
     * @return array relational rules.
     */
    public function relations() {
        // NOTE: you may need to adjust the relation name and the related
        // class name for the relations automatically generated below.
        return array(
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
            'banner_picture' => 'Banner Picture',
            'banner_link' => 'Banner Link',
            'banner_order' => 'Banner Order',
            'banner_type' => 'Banner Type',
            'banner_click' => 'Banner Click',
            'module_id' => 'Module',
            'enable' => 'Enable',
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
        $criteria->compare('banner_picture', $this->banner_picture, true);
        $criteria->compare('banner_link', $this->banner_link, true);
        $criteria->compare('banner_order', $this->banner_order);
        $criteria->compare('banner_type', $this->banner_type, true);
        $criteria->compare('banner_click', $this->banner_click);
        $criteria->compare('module_id', $this->module_id, true);
        $criteria->compare('enable', $this->enable);

        return new CActiveDataProvider($this, array(
            'criteria' => $criteria,
        ));
    }

    public function afterFind() {
        parent::afterFind();
        $this->_oldImage = $this->banner_picture;
    }

    public function beforeSave() {
        $this->banner_name = trim($this->banner_name);
        $this->banner_link = trim($this->banner_link);
        $this->banner_type = 'banner';
        $this->module_id = $this->module_id;
        $this->enable = $this->enable;

        if ($this->isNewRecord) {
            $this->banner_order = $this->maxRecordOrder();
            if ($_FILES[__CLASS__]['name']['banner_picture']) {
                Yii::import('ext.SimpleImage.CSimpleImage');
                $file = new CSimpleImage();

                if ($this->module_id == 'default') {
                    $width = Config::getValue('banner_width_default');
                    $height = Config::getValue('banner_height_default');
                } else {
                    $width = Config::getValue('banner_width');
                    $height = Config::getValue('banner_height');
                }
                $this->banner_picture = $file->processUpload($_FILES[__CLASS__]['name']['banner_picture'], $_FILES[__CLASS__]['tmp_name']['banner_picture'], $width, $height, '/image/' . strtolower(__CLASS__), $this->banner_name);
            }
        } else {
            //check file old and upload
            if ($_FILES[__CLASS__]['name']['banner_picture']) {
                Yii::import('ext.SimpleImage.CSimpleImage');
                $file = new CSimpleImage();

                if ($this->module_id == 'default') {
                    $width = Config::getValue('banner_width_default');
                    $height = Config::getValue('banner_height_default');
                } else {
                    $width = Config::getValue('banner_width');
                    $height = Config::getValue('banner_height');
                }
                $this->banner_picture = $file->processUpload($_FILES[__CLASS__]['name']['banner_picture'], $_FILES[__CLASS__]['tmp_name']['banner_picture'], $width, $height, '/image/' . strtolower(__CLASS__), $this->banner_name, $this->_oldImage);
            } else {
                $this->banner_picture = $this->_oldImage;
            }
        }
        return parent::beforeSave();
    }

    public function listItem($module) {
        $command = Yii::app()->db->createCommand('SELECT banner_name, banner_picture, banner_link FROM ' . $this->tableName() . ' WHERE banner_type=\'banner\' AND module_id=:module AND enable=1');
        $command->bindParam(":module", $module, PDO::PARAM_STR);
        return $command->queryAll();
    }

    //Back end - List item admin
    public function listItemAdmin() {
        $criteria = new CDbCriteria();
        $criteria->order = 'banner_order DESC, banner_date DESC';
        $criteria->condition = 'banner_type=\'banner\'';
        $count = $this->count($criteria);

        $pages = new CPagination($count);
        $pages->pageSize = 15;
        $pages->applyLimit($criteria);

        return array('models' => $this->findAll($criteria), 'pages' => $pages);
    }

    //Back end - Delete Record
    private function deleteRecord($id) {
        $item = $this->find('banner_id=:id', array(':id' => $id));
        Common::removePic($item->banner_picture, '/image/' . strtolower(__CLASS__)); // remove picture
        $this->findByPk($id)->delete(); //delete record_id
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
                        $this->updateByPk($id, array('banner_order' => $order));
                    }
                }
            }
        } else if ($syn) {
            $criteria = new CDbCriteria();
            $criteria->order = 'banner_order ASC, banner_date ASC';

            $models = $this->findAll($criteria);

            $i = 1;
            foreach ($models as $model) {
                $this->updateByPk($model['banner_id'], array('banner_order' => $i));
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
                            $this->updateByPk($id, array('enable' => $active));
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
    private function maxRecordOrder() {
        $command = Yii::app()->db->createCommand('SELECT max(banner_order) AS max FROM ' . $this->tableName());
        return $command->queryScalar() + 1;
    }

    //Back end - Get record to Edit
    public function loadEdit($id) {
        $this->_model = $this->findByPk($id);

        if ($this->_model === null) {
            throw new CHttpException(404, 'The requested page does not exist.');
        }
        return $this->_model;
    }
}