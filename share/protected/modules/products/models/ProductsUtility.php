<?php

/**
 * This is the model class for table "dos_module_products_utility".
 *
 * The followings are the available columns in table 'dos_module_products_utility':
 * @property integer $product_id
 * @property integer $telephone
 * @property integer $power_meter
 * @property integer $heater
 * @property integer $gara
 * @property integer $cable_tv
 * @property integer $water_meter
 * @property integer $alarm_system
 * @property integer $garden
 * @property integer $internet
 * @property integer $air_conditioner
 * @property integer $parking
 * @property integer $pool
 * @property integer $furniture
 *
 * The followings are the available model relations:
 * @property Products $product
 */
class ProductsUtility extends CActiveRecord {

    /**
     * Returns the static model of the specified AR class.
     * @param string $className active record class name.
     * @return ProductsUtility the static model class
     */
    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

    /**
     * @return string the associated database table name
     */
    public function tableName() {
        return 'dos_module_products_utility';
    }

    /**
     * @return array validation rules for model attributes.
     */
    public function rules() {
        // NOTE: you should only define rules for those attributes that
        // will receive user inputs.
        return array(
            array('telephone, power_meter, heater, gara, cable_tv, water_meter, alarm_system, garden, internet, air_conditioner, parking, pool, furniture', 'numerical', 'integerOnly' => true),
            // The following rule is used by search().
            // Please remove those attributes that should not be searched.
            array('product_id, telephone, power_meter, heater, gara, cable_tv, water_meter, alarm_system, garden, internet, air_conditioner, parking, pool, furniture', 'safe', 'on' => 'search'),
        );
    }

    /**
     * @return array relational rules.
     */
    public function relations() {
        // NOTE: you may need to adjust the relation name and the related
        // class name for the relations automatically generated below.
        return array(
            'product' => array(self::BELONGS_TO, 'Products', 'product_id'),
        );
    }

    /**
     * @return array customized attribute labels (name=>label)
     */
    public function attributeLabels() {
        return array(
          //  'product_id' => 'Product',
            'telephone' => 'Điện thoại',
            'power_meter' => 'Đồng hồ điện',
            'heater' => 'Máy nước nóng',
            'gara' => 'Ga-ra',
            'cable_tv' => 'Truyền hình cáp',
            'water_meter' => 'Đồng hồ nước',
            'alarm_system' => 'Hệ thống báo động',
            'garden' => 'Sân vườn',
            'internet' => 'Internet',
            'air_conditioner' => 'Máy lạnh',
            'parking' => 'Đậu xe',
            'pool' => 'Hồ bơi',
            'furniture' => 'Nội thất',
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

        $criteria->compare('product_id', $this->product_id);
        $criteria->compare('telephone', $this->telephone);
        $criteria->compare('power_meter', $this->power_meter);
        $criteria->compare('heater', $this->heater);
        $criteria->compare('gara', $this->gara);
        $criteria->compare('cable_tv', $this->cable_tv);
        $criteria->compare('water_meter', $this->water_meter);
        $criteria->compare('alarm_system', $this->alarm_system);
        $criteria->compare('garden', $this->garden);
        $criteria->compare('internet', $this->internet);
        $criteria->compare('air_conditioner', $this->air_conditioner);
        $criteria->compare('parking', $this->parking);
        $criteria->compare('pool', $this->pool);
        $criteria->compare('furniture', $this->furniture);

        return new CActiveDataProvider($this, array(
                    'criteria' => $criteria,
                ));
    } 
    public function listItem() {
        return $this->model()->getAttributes();
    }
    public function getItem($id) {
          $command = Yii::app()->db->createCommand('SELECT * FROM ' . $this->tableName() . ' WHERE product_id' . LANG . '=:id');
        $command->bindParam(":id", $id, PDO::PARAM_STR);
        return $command->execute();
    
        
    }
    public function save_data($id,$data){
        $this->product_id=$id;
        foreach ($data as $value) {
            $this->$value=1;
        }
        $this->save();
    }
    
}