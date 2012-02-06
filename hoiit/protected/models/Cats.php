<?php

/**
 * This is the model class for table "hoiit_cats".
 *
 * The followings are the available columns in table 'hoiit_cats':
 * @property integer $cat_id
 * @property string $cat_name
 * @property integer $cat_sort
 * @property integer $parent_id
 *
 * The followings are the available model relations:
 * @property HoiitPosts[] $hoiitPosts
 */
class Cats extends CActiveRecord {

    /**
     * Returns the static model of the specified AR class.
     * @param string $className active record class name.
     * @return Cats the static model class
     */
    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

    /**
     * @return string the associated database table name
     */
    public function tableName() {
        return 'hoiit_cats';
    }

    /**
     * @return array validation rules for model attributes.
     */
    public function rules() {
        // NOTE: you should only define rules for those attributes that
        // will receive user inputs.
        return array(
            array('cat_name, cat_sort, parent_id', 'required'),
            array('cat_sort, parent_id', 'numerical', 'integerOnly' => true),
            array('cat_name', 'length', 'max' => 45),
            // The following rule is used by search().
            // Please remove those attributes that should not be searched.
            array('cat_id, cat_name, cat_sort, parent_id', 'safe', 'on' => 'search'),
        );
    }

    /**
     * @return array relational rules.
     */
    public function relations() {
        // NOTE: you may need to adjust the relation name and the related
        // class name for the relations automatically generated below.
        return array(
            'hoiitPosts' => array(self::HAS_MANY, 'HoiitPosts', 'hoiit_cats_cat_id'),
        );
    }

    /**
     * @return array customized attribute labels (name=>label)
     */
    public function attributeLabels() {
        return array(
            'cat_id' => 'Cat',
            'cat_name' => 'Cat Name',
            'cat_sort' => 'Cat Sort',
            'parent_id' => 'Parent',
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

        $criteria->compare('cat_id', $this->cat_id);
        $criteria->compare('cat_name', $this->cat_name, true);
        $criteria->compare('cat_sort', $this->cat_sort);
        $criteria->compare('parent_id', $this->parent_id);

        return new CActiveDataProvider($this, array(
                    'criteria' => $criteria,
                ));
    }
    //Front end - get cat_id
    public function getCatID($link) {
        $cat = array();
        $datas = $this->listCats();
        foreach($datas as $data) {
            if (NoneUnicode::convert($data['cat_name']) == $link) {
                $cat['cat_id'] = $data['cat_id'];
                $cat['cat_name'] = $data['cat_name'];
            }
        }
        return $cat;
    }
    public function listCats(){
        $command = Yii::app()->db->createCommand('SELECT cat_id, cat_name, parent_id FROM '.$this->tableName().' ORDER BY cat_sort ASC');
        return $command->queryAll();
    }
    public function MultiLevelCats($parentid = 0, $space = '', $trees = NULL) {
        $command = Yii::app()->db->createCommand("SELECT cat_id, cat_name FROM " . $this->tableName() . " WHERE parent_id='" . $parentid . "' ORDER BY cat_sort ASC");
        $rows = $command->queryAll();

        if (!$trees) {$trees = array();}

        foreach ($rows as $row) {
            $trees[] = array('cat_id' => $row['cat_id'], 'cat_name' => $space . $row['cat_name'], 'cat_title' => $row['cat_name']);
            $trees = $this->MultiLevelCats($row['cat_id'], $space . '|-- ', $trees);
        }
        return $trees;
    }
}