<?php

/**
 * This is the model class for table "dos_customers".
 *
 * The followings are the available columns in table 'dos_customers':
 * @property integer $customer_id
 * @property string $customer_name
 * @property string $pic_thumb
 * @property string $pic_full
 * @property string $address
 * @property string $website
 * @property string $agent_sale
 * @property string $agent_tech
 * @property string $created_date
 * @property string $expired_date
 * @property string $tag
 * @property integer $enable
 * @property string $dos_bussiness_bussiness_id
 *
 * The followings are the available model relations:
 * @property DosBussiness $dosBussinessBussiness
 */
class Customers extends CActiveRecord {
    /**
     * Returns the static model of the specified AR class.
     * @param string $className active record class name.
     * @return Customers the static model class
     */
    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

    /**
     * @return string the associated database table name
     */
    public function tableName() {
        return 'dos_customers';
    }

    /**
     * @return array validation rules for model attributes.
     */
    public function rules() {
        // NOTE: you should only define rules for those attributes that
        // will receive user inputs.
        return array(
            array('customer_name, website, created_date, tag, dos_bussiness_bussiness_id', 'required'),
            array('enable', 'numerical', 'integerOnly' => true),
            array('customer_name', 'length', 'max' => 70),
            array('pic_thumb, pic_full, website, tag, dos_bussiness_bussiness_id', 'length', 'max' => 100),
            array('address', 'length', 'max' => 45),
            array('agent_sale, agent_tech', 'length', 'max' => 8),
            array('expired_date', 'safe'),
            // The following rule is used by search().
            // Please remove those attributes that should not be searched.
            array('customer_id, customer_name, pic_thumb, pic_full, address, website, agent_sale, agent_tech, created_date, expired_date, tag, enable, dos_bussiness_bussiness_id', 'safe', 'on' => 'search'),
        );
    }

    /**
     * @return array relational rules.
     */
    public function relations() {
        // NOTE: you may need to adjust the relation name and the related
        // class name for the relations automatically generated below.
        return array(
            'dosBussinessBussiness' => array(self::BELONGS_TO, 'DosBussiness', 'dos_bussiness_bussiness_id'),
        );
    }

    /**
     * @return array customized attribute labels (name=>label)
     */
    public function attributeLabels() {
        return array(
            'customer_id' => 'Customer',
            'customer_name' => 'Customer Name',
            'pic_thumb' => 'Pic Thumb',
            'pic_full' => 'Pic Full',
            'address' => 'Address',
            'website' => 'Website',
            'agent_sale' => 'Agent Sale',
            'agent_tech' => 'Agent Tech',
            'created_date' => 'Created Date',
            'expired_date' => 'Expired Date',
            'tag' => 'Tag',
            'enable' => 'Enable',
            'dos_bussiness_bussiness_id' => 'Dos Bussiness Bussiness',
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

        $criteria->compare('customer_id', $this->customer_id);
        $criteria->compare('customer_name', $this->customer_name, true);
        $criteria->compare('pic_thumb', $this->pic_thumb, true);
        $criteria->compare('pic_full', $this->pic_full, true);
        $criteria->compare('address', $this->address, true);
        $criteria->compare('website', $this->website, true);
        $criteria->compare('agent_sale', $this->agent_sale, true);
        $criteria->compare('agent_tech', $this->agent_tech, true);
        $criteria->compare('created_date', $this->created_date, true);
        $criteria->compare('expired_date', $this->expired_date, true);
        $criteria->compare('tag', $this->tag, true);
        $criteria->compare('enable', $this->enable);
        $criteria->compare('dos_bussiness_bussiness_id', $this->dos_bussiness_bussiness_id, true);

        return new CActiveDataProvider($this, array(
            'criteria' => $criteria,
        ));
    }

    //Back end - List item admin
    public function listAllItem() {
        $criteria = new CDbCriteria();
        $criteria->order = 'created_date DESC';
        $criteria->condition = 'enable=1';

        $count = $this::model()->count($criteria);

        // elements per page
        $pages = new CPagination($count);
        $pages->pageSize = 15;
        $pages->applyLimit($criteria);

        return array('models' => $this::model()->findAll($criteria), 'pages' => $pages);
    }

    //Back end - List item admin
    public function listItemByBusinessID($bussiness_id) {
        $criteria = new CDbCriteria();
        $criteria->order = 'created_date DESC';
        $criteria->condition = 'dos_bussiness_bussiness_id=:business AND enable=1';
        $criteria->params = array(':business' => $bussiness_id);

        $count = $this::model()->count($criteria);

        // elements per page
        $pages = new CPagination($count);
        $pages->pageSize = 15;
        $pages->applyLimit($criteria);

        return array('models' => $this::model()->findAll($criteria), 'pages' => $pages);
    }
    public function detailRecord($id){
        $command = Yii::app()->db->createCommand('SELECT customer_id, customer_name, pic_full, address, website, bussiness_id, bussiness_name FROM ' . $this->tableName() . ', dos_bussiness WHERE ' . $this->tableName() . '.dos_bussiness_bussiness_id = dos_bussiness.bussiness_id AND tag=:tag AND enable=1');
        $command->bindParam(':tag', $id, PDO::PARAM_STR);
        return $command->queryRow();
    }
}