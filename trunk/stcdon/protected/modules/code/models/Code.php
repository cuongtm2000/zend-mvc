<?php

/**
 * This is the model class for table "{{module_code}}".
 *
 * The followings are the available columns in table '{{module_code}}':
 * @property integer $record_id
 * @property string $title
 * @property string $created
 * @property integer $record_order
 * @property string $record_type
 */
class Code extends CActiveRecord {
    private $_model;

    /**
     * Returns the static model of the specified AR class.
     * @param string $className active record class name.
     * @return Code the static model class
     */
    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

    /**
     * @return string the associated database table name
     */
    public function tableName() {
        return '{{module_code}}';
    }

    /**
     * @return array validation rules for model attributes.
     */
    public function rules() {
        // NOTE: you should only define rules for those attributes that
        // will receive user inputs.
        return array(
            array('title, record_type', 'required'),
            array('record_order', 'numerical', 'integerOnly' => true),
            array('title', 'length', 'max' => 100),
            array('record_type', 'length', 'max' => 45),
            // The following rule is used by search().
            // Please remove those attributes that should not be searched.
            array('record_id, title, created, record_order, record_type', 'safe', 'on' => 'search'),
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
            'record_id' => 'Record',
            'title' => 'Title',
            'created' => 'Created',
            'record_order' => 'Record Order',
            'record_type' => 'Record Type',
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
        $criteria->compare('created', $this->created, true);
        $criteria->compare('record_order', $this->record_order);
        $criteria->compare('record_type', $this->record_type, true);

        return new CActiveDataProvider($this, array(
            'criteria' => $criteria,
        ));
    }

    public function beforeSave() {
        $purifier = new CHtmlPurifier();
        $this->title = $purifier->purify(trim($this->title));

        if ($this->isNewRecord) {
            $this->record_order = $this->maxRecordOrder();
        }

        return parent::beforeSave();
    }

    //Front end - List item
    public function listItem() {
        $criteria = new CDbCriteria();
        $criteria->order = 'record_order DESC, created DESC';
        return $this->findAll($criteria);
    }

    //Back end - get max record
    public function maxRecordOrder() {
        $command = Yii::app()->db->createCommand('SELECT max(record_order) AS max FROM ' . $this->tableName());
        return $command->queryScalar() + 1;
    }

    //Back end - List item admin
    public function listItemAdmin() {
        $criteria = new CDbCriteria();
        $criteria->order = 'record_order DESC, created DESC';
        $count = $this->count($criteria);

        // elements per page
        $pages = new CPagination($count);
        $pages->pageSize = 15;
        $pages->applyLimit($criteria);

        return array('models' => $this->findAll($criteria), 'pages' => $pages);
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
                        $this->updateByPk($id, array('record_order' => $order));
                    }
                }
            }
        } else if ($syn) {
            $criteria = new CDbCriteria();
            $criteria->order = 'record_order ASC, created ASC';
            $models = $this->findAll($criteria);

            $i = 1;
            foreach ($models as $model) {
                $this->updateByPk($model['record_id'], array('record_order' => $i));
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
                    /*$active = ($flag == "enable") ? 1 : 0;

                    foreach ($record_id as $value) {
                        $id = intval($value);
                        if ($id) {
                            $this->updateByPk($id, array('enable' => $active));
                        }
                    }*/
                } else {
                    //delete
                    foreach ($record_id as $value) {
                        $id = intval($value);
                        if ($id) {
                            $this->deleteByPk($id);
                        }
                    }
                }
            }
        }
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