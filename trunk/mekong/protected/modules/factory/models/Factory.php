<?php

/**
 * This is the model class for table "hoiit_module_about".
 *
 * The followings are the available columns in table 'hoiit_module_about':
 * @property integer $record_id
 * @property string $created
 * @property integer $record_order
 * @property integer $hot
 * @property string $field1
 * @property string $field2
 *
 * The followings are the available model relations:
 * @property HoiitLanguages[] $hoiitLanguages
 */
class Factory extends CActiveRecord {
    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

    /**
     * @return string the associated database table name
     */
    public function tableName() {
        return 'hoiit_module_factory';
    }

    /**
     * @return array validation rules for model attributes.
     */
    public function rules() {
        // NOTE: you should only define rules for those attributes that
        // will receive user inputs.
        return array(
            array('record_order, hot, enable', 'numerical', 'integerOnly' => true),
            array('pic_thumb, field1, field2', 'length', 'max' => 100),
            array('created', 'length', 'max' => 45),
            // The following rule is used by search().
            // Please remove those attributes that should not be searched.
            array('record_id, pic_thumb, created, record_order, hot, field1, field2, enable', 'safe', 'on' => 'search'),
        );
    }

    /**
     * @return array relational rules.
     */
    public function relations() {
        // NOTE: you may need to adjust the relation name and the related
        // class name for the relations automatically generated below.
        return array(
            'Language' => array(self::MANY_MANY, 'Language', $this->tableName() . 'languages(record_id, language_id)'),
            'ItemLanguage' => array(self::HAS_MANY, __CLASS__.'Language', 'record_id', 'index' => 'language_id'),
        );
    }

    /**
     * @return array customized attribute labels (name=>label)
     */
    public function attributeLabels() {
        return array(
            'record_id' => 'Record',
            'pic_thumb' => 'Pic Thumb',
            'created' => 'Created',
            'record_order' => 'Record Order',
            'hot' => 'Hot',
            'field1' => 'Field1',
            'field2' => 'Field2',
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
        $criteria->compare('pic_thumb', $this->pic_thumb, true);
        $criteria->compare('created', $this->created, true);
        $criteria->compare('record_order', $this->record_order);
        $criteria->compare('hot', $this->hot);
        $criteria->compare('field1', $this->field1, true);
        $criteria->compare('field2', $this->field2, true);
        $criteria->compare('enable', $this->enable);

        return new CActiveDataProvider($this, array(
            'criteria' => $criteria,
        ));
    }

    //Front end - Get first record
    public function firstRecord() {
        $criteria = new CDbCriteria();
        $criteria->order = 'record_order DESC, created DESC';
        $criteria->condition = 'hot=0 AND enable = 1';

        $viewer = $this->find($criteria);
        if ($viewer) {
            //update hit view
            $model=__CLASS__.'Language';
            $model::model()->updateCounters(array('hit' => 1), 'record_id=:id AND language_id=:lang', array(':id' => $viewer->record_id, ':lang' => Yii::app()->language));
            return $viewer['ItemLanguage'][Yii::app()->language];
        }
    }

    //Front end - Get first record
    public function firstHotRecord() {
        $criteria = new CDbCriteria();
        $criteria->order = 'record_order DESC, created DESC';
        $criteria->condition = 'hot = 1 AND enable = 1';

        return $this::model()->findAll($criteria);
        //$viewer = $this::model()->findAll($criteria);
        /*if ($viewer) {
            return $viewer->AboutLanguage[Yii::app()->language];
        }*/
    }

    /**
     * get list Menu
     * @return mixed
     */
    public function listItem() {
        $command = Yii::app()->db->createCommand('SELECT title, tag FROM ' . $this->tableName() . ' as Item, ' . $this->tableName() . 'languages as ItemLang WHERE Item.record_id = ItemLang.record_id AND language_id =\'' . Yii::app()->language . '\' AND hot = 0 AND enable = 1 ORDER BY record_order DESC, created DESC');
        return $command->queryAll();
    }

    //Back end - List item admin
    public function listItemAdmin() {
        $criteria = new CDbCriteria();
        //$criteria->with = array('ItemLanguage');
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
                        $model_L=__CLASS__.'Language';
                        if ($id) {
                            $model_L::model()->deleteRecord($id);
                            $this->deleteByPk($id);
                        }
                    }
                }
            }
        }
    }

    //Back end - save
    public function saveRecord($model, $id = null) {
        if (Yii::app()->controller->action->id == 'add') {
            $this->hot = $model->hot;
            $this->enable = $model->enable;
            $this->save();

            $id = $this->record_id;
            $this->updateByPk($id, array('record_order' => $id));
        } else {
            $item = $this->findByPk($id);
            $item->hot = $model->hot;
            $item->enable = $model->enable;
            $item->save();
        }
        $model_L=__CLASS__.'Language';
        $model_L::model()->saveRecord($id, $model);
    }

    //Back end - Get record to Edit
    public function loadEdit($id) {
        $command = Yii::app()->db->createCommand('SELECT pic_thumb, hot, enable FROM ' . $this->tableName() . ' WHERE record_id=:id');
        $command->bindParam(":id", $id, PDO::PARAM_INT);
        return $command->queryRow();
    }
}