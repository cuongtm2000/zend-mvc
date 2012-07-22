<?php

/**
 * This is the model class for table "dos_module_products_feature".
 *
 * The followings are the available columns in table 'dos_module_products_feature':
 * @property integer $product_id
 * @property double $area
 * @property double $area_build
 * @property double $area_used
 * @property integer $num_floor
 * @property integer $room
 * @property integer $sittingrom
 * @property integer $bedroom
 * @property integer $bathroom
 * @property integer $other_room
 * @property string $direction
 * @property string $street
 * @property string $legal
 * @property string $road
 *
 * The followings are the available model relations:
 * @property Products $product
 */
class ProductsFeature extends CActiveRecord {

    public $area_n, $area_d, $area_build_n, $area_build_d;

    /**
     * Returns the static model of the specified AR class.
     * @param string $className active record class name.
     * @return ProductsFeature the static model class
     */
    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

    /**
     * @return string the associated database table name
     */
    public function tableName() {
        return 'dos_module_products_feature';
    }

    /**
     * @return array validation rules for model attributes.
     */
    public function rules() {
        // NOTE: you should only define rules for those attributes that
        // will receive user inputs.
        return array(
            array('area_used, num_floor, road,direction, legal', 'required'),
            array('num_floor, sittingrom, bedroom, bathroom, other_room', 'numerical', 'integerOnly' => true),
            array('area_used', 'numerical'), //$area_n,$area_d,$area_build_n,$area_build_d
            array('direction, street, legal, road', 'length', 'max' => 45),
            // The following rule is used by search().
            // Please remove those attributes that should not be searched.
            array('product_id, area, area_build, area_used, num_floor, room, sittingrom, bedroom, bathroom, other_room, direction, street, legal, road', 'safe', 'on' => 'search'),
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
            'product_id' => 'Product',
            'area' => 'Diện tích',
            'area_build' => 'Diện tích xây dựng',
            'area_used' => 'Diện tích sử dụng',
            'num_floor' => 'Số tầng',
            'sittingrom' => 'Số phòng khách',
            'bedroom' => 'Số phòng ngủ',
            'bathroom' => 'Số phòng tắm',
            'other_room' => 'Phòng khác',
            'direction' => 'Hướng nhà',
            'street' => 'Đường trước nhà',
            'legal' => 'Pháp lý',
            'road' => 'Tuyến đường',
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
        $criteria->compare('area', $this->area);
        $criteria->compare('area_build', $this->area_build);
        $criteria->compare('area_used', $this->area_used);
        $criteria->compare('num_floor', $this->num_floor);
        $criteria->compare('sittingrom', $this->sittingrom);
        $criteria->compare('bedroom', $this->bedroom);
        $criteria->compare('bathroom', $this->bathroom);
        $criteria->compare('other_room', $this->other_room);
        $criteria->compare('direction', $this->direction, true);
        $criteria->compare('street', $this->street, true);
        $criteria->compare('legal', $this->legal, true);
        $criteria->compare('road', $this->road, true);

        return new CActiveDataProvider($this, array(
                    'criteria' => $criteria,
                ));
    }

    public function listItem() {
        return $this->model()->findAll();
    }

    public function save_data($id, $data) {
        $this->attributes = $data;
        $this->product_id = $id;
        $this->area = $data['area_n'] . 'm x ' . $data['area_d'] . 'm';
        $this->area_build = $data['area_build_n'] . 'm x ' . $data['area_build_d'] . 'm';
        $this->save();
    }
    public function loadEdit(){
        $tmp=$this->getAttributes();
  
        $t=  explode('x', $this->area);
        $tmp['area_n']= substr(trim($t[0]),0,-1);
        $tmp['area_d']= substr(trim($t[1]),0,-1);
        
        $t=  explode('x', $this->area_build);
        $tmp['area_build_n']=substr(trim($t[0]),0,-1);
        $tmp['area_build_d']=substr(trim($t[0]),0,-1);
        
        return $tmp;
    }

}