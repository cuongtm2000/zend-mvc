<?php

/**
 * This is the model class for table "hoiit_module_contacts".
 *
 * The followings are the available columns in table 'hoiit_module_contacts':
 * @property integer $record_id
 * @property string $created
 * @property integer $record_order
 * @property integer $hot
 * @property integer $enable
 *
 * The followings are the available model relations:
 * @property HoiitLanguages[] $hoiitLanguages
 */
class Contact extends CActiveRecord {
    /**
     * Returns the static model of the specified AR class.
     * @param string $className active record class name.
     * @return Contact the static model class
     */
    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

    /**
     * @return string the associated database table name
     */
    public function tableName() {
        return 'hoiit_module_contacts';
    }

    /**
     * @return array validation rules for model attributes.
     */
    public function rules() {
        // NOTE: you should only define rules for those attributes that
        // will receive user inputs.
        return array(
            //array('created', 'required'),
            array('record_order, hot, enable', 'numerical', 'integerOnly' => true),
            // The following rule is used by search().
            // Please remove those attributes that should not be searched.
            array('record_id, created, record_order, hot, enable', 'safe', 'on' => 'search'),
        );
    }

    /**
     * @return array relational rules.
     */
    public function relations() {
        // NOTE: you may need to adjust the relation name and the related
        // class name for the relations automatically generated below.
        return array(
            //'hoiitLanguages' => array(self::MANY_MANY, 'HoiitLanguages', 'hoiit_module_contacts_languages(record_id, language_id)'),
            'ContactLanguage' => array(self::HAS_MANY, 'ContactLanguage', 'record_id', 'index' => 'language_id'),
        );
    }

    /**
     * @return array customized attribute labels (name=>label)
     */
    public function attributeLabels() {
        return array(
            'record_id' => 'Record',
            'created' => 'Created',
            'record_order' => 'Record Order',
            'hot' => 'Hot',
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
        $criteria->compare('created', $this->created, true);
        $criteria->compare('record_order', $this->record_order);
        $criteria->compare('hot', $this->hot);
        $criteria->compare('enable', $this->enable);

        return new CActiveDataProvider($this, array(
            'criteria' => $criteria,
        ));
    }

    //Front end - Get first record
    public function firstItem() {
        $criteria = new CDbCriteria();
        $criteria->order = 'record_order DESC, created DESC';
        $criteria->condition = 'hot = 0 AND enable = 1';

        $viewer = $this::model()->find($criteria);
        if ($viewer) {
            return $viewer->ContactLanguage[Yii::app()->language];
        }
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
                            ContactLanguage::model()->deleteAll('record_id=:id', array(':id' => $id));
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
        ContactLanguage::model()->saveRecord($id, $model);
    }

    //Back end - Get record to Edit
    public function loadEdit($id) {
        $command = Yii::app()->db->createCommand('SELECT hot, enable FROM ' . $this->tableName() . ' WHERE record_id=:id');
        $command->bindParam(":id", $id, PDO::PARAM_INT);
        return $command->queryRow();
    }
}