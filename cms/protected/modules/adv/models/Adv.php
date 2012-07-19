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
 * @property string $click
 * @property integer $enable
 */
class Adv extends CActiveRecord {
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
            array('title, pic_thumb, position', 'required'),
            array('hits, record_order, enable', 'numerical', 'integerOnly' => true),
            array('title, pic_thumb', 'length', 'max' => 100),
            array('url', 'length', 'max' => 200),
            array('position, type, click', 'length', 'max' => 45),
            array('start_date, end_date', 'safe'),
            // The following rule is used by search().
            // Please remove those attributes that should not be searched.
            array('record_id, title, pic_thumb, url, create_date, start_date, end_date, hits, record_order, position, type, click, enable', 'safe', 'on' => 'search'),
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
}