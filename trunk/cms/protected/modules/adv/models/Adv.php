<?php

/**
 * This is the model class for table "hoiit_module_advs".
 *
 * The followings are the available columns in table 'hoiit_module_advs':
 * @property integer $record_id
 * @property string $title
 * @property string $pic_thumb
 * @property string $url
 * @property string $create_date
 * @property string $start_date
 * @property string $end_date
 * @property integer $hits
 * @property integer $record_order
 * @property string $position
 * @property string $type
 * @property integer $click
 * @property integer $enable
 */
class Adv extends CActiveRecord {
    private $_model;
    private $_oldImageThumb;

    /**
     * Returns the static model of the specified AR class.
     * @param string $className active record class name.
     * @return Adv the static model class
     */
    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

    /**
     * @return string the associated database table name
     */
    public function tableName() {
        return 'hoiit_module_advs';
    }

    /**
     * @return array validation rules for model attributes.
     */
    public function rules() {
        // NOTE: you should only define rules for those attributes that
        // will receive user inputs.
        return array(
            array('title, position', 'required'),
            array('hits, record_order, click, enable', 'numerical', 'integerOnly' => true),
            array('pic_thumb', 'file', 'types' => 'gif,png,jpg,jpeg,icon', 'allowEmpty' => false, 'maxSize' => 1024 * 1024 * 5, 'on' => 'add'),
            array('pic_thumb', 'file', 'types' => 'gif,png,jpg,jpeg,icon', 'allowEmpty' => true, 'maxSize' => 1024 * 1024 * 5, 'on' => 'edit'),
            array('title, pic_thumb', 'length', 'max' => 100),
            array('url', 'length', 'max' => 200),
            array('url', 'url'),
            array('position, type', 'length', 'max' => 45),
            array('start_date, end_date', 'safe'),
            array('start_date, end_date', 'type', 'type' => 'date', 'message' => '{attribute}: is not a date!', 'dateFormat' => 'dd-MM-yyyy'),
            array('start_date', 'compareDateRange', 'type' => 'date', 'message' => '{attribute}: is not a date!', 'dateFormat' => 'dd-MM-yyyy'),
            // The following rule is used by search().
            // Please remove those attributes that should not be searched.
            array('record_id, title, pic_thumb, url, create_date, start_date, end_date, hits, record_order, position, type, click, enable', 'safe', 'on' => 'search'),
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
        );
    }

    /**
     * @return array customized attribute labels (name=>label)
     */
    public function attributeLabels() {
        return array(
            'record_id' => 'Record',
            'title' => 'Title',
            'pic_thumb' => 'Pic Thumb',
            'url' => 'Url',
            'create_date' => 'Create Date',
            'start_date' => 'Start Date',
            'end_date' => 'End Date',
            'hits' => 'Hits',
            'record_order' => 'Record Order',
            'position' => 'Position',
            'type' => 'Type',
            'click' => 'Click',
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

        $criteria->compare('record_id', $this->record_id);
        $criteria->compare('title', $this->title, true);
        $criteria->compare('pic_thumb', $this->pic_thumb, true);
        $criteria->compare('url', $this->url, true);
        $criteria->compare('create_date', $this->create_date, true);
        $criteria->compare('start_date', $this->start_date, true);
        $criteria->compare('end_date', $this->end_date, true);
        $criteria->compare('hits', $this->hits);
        $criteria->compare('record_order', $this->record_order);
        $criteria->compare('position', $this->position, true);
        $criteria->compare('type', $this->type, true);
        $criteria->compare('click', $this->click, true);
        $criteria->compare('enable', $this->enable);

        return new CActiveDataProvider($this, array(
            'criteria' => $criteria,
        ));
    }

    public function afterFind() {
        parent::afterFind();
        $this->_oldImageThumb = $this->pic_thumb;
    }

    public function beforeSave() {
        $purifier = new CHtmlPurifier();
        $this->title = $purifier->purify(trim($this->title));
        $this->title = $purifier->purify(trim($this->title));
        $this->start_date = date('Y-m-d H:i:s', strtotime($this->start_date));
        $this->end_date = date('Y-m-d H:i:s', strtotime($this->end_date));

        if ($this->isNewRecord) {
            $this->record_order = $this->maxRecordOrder();
            if ($_FILES[__CLASS__]['name']['pic_thumb']) {
                Yii::import('ext.SimpleImage.CSimpleImage');
                $file = new CSimpleImage();
                $this->pic_thumb = $file->processUpload($_FILES[__CLASS__]['name']['pic_thumb'], $_FILES[__CLASS__]['tmp_name']['pic_thumb'], Config::getValue('adv_' . $this->position . '_width'), Config::getValue('adv_' . $this->position . '_height'), '/image/' . strtolower(__CLASS__), $this->title);
            }
        } else {
            //check file old and upload
            if ($_FILES[__CLASS__]['name']['pic_thumb']) {
                Yii::import('ext.SimpleImage.CSimpleImage');
                $file = new CSimpleImage();
                $this->pic_thumb = $file->processUpload($_FILES[__CLASS__]['name']['pic_thumb'], $_FILES[__CLASS__]['tmp_name']['pic_thumb'], Config::getValue('adv_' . $this->position . '_width'), Config::getValue('adv_' . $this->position . '_height'), '/image/' . strtolower(__CLASS__), $this->title, $this->_oldImageThumb);
            } else {
                $this->pic_thumb = $this->_oldImageThumb;
            }
        }

        return parent::beforeSave();
    }

    //Front end - list adv left
    public function listItemsLeft() {
        return $this->listItemsPosition('left');
    }

    //Front end - list adv right
    public function listItemsRight() {
        return $this->listItemsPosition('right');
    }

    //Front end - list adv top
    public function listItemsTop() {
        return $this->listItemsPosition('top');
    }

    //Front end - list adv center
    public function listItemsCenter() {
        return $this->listItemsPosition('center');
    }

    //Front end - list adv bottom
    public function listItemsBottom() {
        return $this->listItemsPosition('bottom');
    }

    /**
     * @param $position
     * @return mixed
     */
    private function listItemsPosition($position) {
        $command = Yii::app()->db->createCommand('SELECT record_id, title, pic_thumb, url, type FROM ' . $this->tableName() . ' WHERE start_date <= NOW() AND end_date >= NOW() AND position=:position AND enable=1 ORDER BY record_order DESC, create_date DESC');
        $command->bindParam(':position', $position, PDO::PARAM_STR);
        return $command->queryAll();
    }

    //Back end - List item admin
    public function listItemAdmin() {
        $criteria = new CDbCriteria();
        $criteria->order = 'record_order DESC, create_date DESC';
        $count = $this::model()->count($criteria);

        // elements per page
        $pages = new CPagination($count);
        $pages->pageSize = 15;
        $pages->applyLimit($criteria);

        return array('models' => $this::model()->findAll($criteria), 'pages' => $pages);
    }

    //Back end - Delete Record
    private function deleteRecord($id) {
        $item = $this::model()->find('record_id=:id', array(':id' => $id));
        Common::removePic($item->pic_thumb, '/image/' . strtolower(__CLASS__)); // remove picture
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
            $criteria->order = 'record_order ASC, create_date ASC';

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

    //Back end - Get max record
    private function maxRecordOrder() {
        $command = Yii::app()->db->createCommand('SELECT max(record_order) AS max FROM ' . $this->tableName());
        return $command->queryScalar() + 1;
    }

    //Back end - Get record to Edit
    public function loadEdit($id) {
        $this->_model = $this::model()->findByPk($id);
        if ($this->_model === null) {
            throw new CHttpException(404, 'The requested page does not exist.');
        }
        return $this->_model;
    }
}