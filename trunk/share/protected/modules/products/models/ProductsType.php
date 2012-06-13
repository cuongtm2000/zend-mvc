<?php

/**
 * This is the model class for table "dos_module_products_type".
 *
 * The followings are the available columns in table 'dos_module_products_type':
 * @property integer $type_id
 * @property string $type_title
 * @property string $tag
 * @property string $pic_desc
 * @property integer $type_order
 * @property integer $type_enable
 * @property string $dos_usernames_username
 */
class ProductsType extends CActiveRecord {

    /**
     * Returns the static model of the specified AR class.
     * @param string $className active record class name.
     * @return ProductsType the static model class
     */
    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

    /**
     * @return string the associated database table name
     */
    public function tableName() {
        return 'dos_module_products_type';
    }

    /**
     * @return array validation rules for model attributes.
     */
    public function rules() {
        // NOTE: you should only define rules for those attributes that
        // will receive user inputs.
        return array(
            array('type_title, tag, type_order, dos_usernames_username', 'required'),
            array('type_order, type_enable', 'numerical', 'integerOnly' => true),
            array('type_title, tag', 'length', 'max' => 100),
            array('pic_desc', 'length', 'max' => 200),
            array('dos_usernames_username', 'length', 'max' => 45),
            // The following rule is used by search().
            // Please remove those attributes that should not be searched.
            array('type_id, type_title, tag, pic_desc, type_order, type_enable, dos_usernames_username', 'safe', 'on' => 'search'),
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
            'type_id' => 'Type',
            'type_title' => 'Type Title',
            'tag' => 'Tag',
            'pic_desc' => 'Pic Desc',
            'type_order' => 'Type Order',
            'type_enable' => 'Type Enable',
            'dos_usernames_username' => 'Dos Usernames Username',
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

        $criteria->compare('type_id', $this->type_id);
        $criteria->compare('type_title', $this->type_title, true);
        $criteria->compare('tag', $this->tag, true);
        $criteria->compare('pic_desc', $this->pic_desc, true);
        $criteria->compare('type_order', $this->type_order);
        $criteria->compare('type_enable', $this->type_enable);
        $criteria->compare('dos_usernames_username', $this->dos_usernames_username, true);

        return new CActiveDataProvider($this, array(
                    'criteria' => $criteria,
                ));
    }

    public function listItem() {
        return  $this->model()->findAll();          
    }

}