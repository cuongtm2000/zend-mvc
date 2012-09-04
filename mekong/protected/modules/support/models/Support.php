<?php

/**
 * This is the model class for table "hoiit_module_supports".
 *
 * The followings are the available columns in table 'hoiit_module_supports':
 * @property integer $support_id
 * @property string $support_name
 * @property string $support_phone
 * @property string $support_value
 * @property integer $support_order
 * @property string $support_type
 */
class Support extends CActiveRecord {
    /**
     * Returns the static model of the specified AR class.
     * @param string $className active record class name.
     * @return Support the static model class
     */
    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

    /**
     * @return string the associated database table name
     */
    public function tableName() {
        return 'hoiit_module_supports';
    }

    /**
     * @return array validation rules for model attributes.
     */
    public function rules() {
        // NOTE: you should only define rules for those attributes that
        // will receive user inputs.
        return array(
            array('support_name, support_value, support_type', 'required'),
            array('support_order', 'numerical', 'integerOnly' => true),
            array('support_name, support_phone, support_value, support_type', 'length', 'max' => 45),
            // The following rule is used by search().
            // Please remove those attributes that should not be searched.
            array('support_id, support_name, support_phone, support_value, support_order, support_type', 'safe', 'on' => 'search'),
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
            'support_id' => 'Support',
            'support_name' => 'Support Name',
            'support_phone' => 'Support Phone',
            'support_value' => 'Support Value',
            'support_order' => 'Support Order',
            'support_type' => 'Support Type',
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

        $criteria->compare('support_id', $this->support_id);
        $criteria->compare('support_name', $this->support_name, true);
        $criteria->compare('support_phone', $this->support_phone, true);
        $criteria->compare('support_value', $this->support_value, true);
        $criteria->compare('support_order', $this->support_order);
        $criteria->compare('support_type', $this->support_type, true);

        return new CActiveDataProvider($this, array(
            'criteria' => $criteria,
        ));
    }

    //Front end - list item
    public function listItem() {
        $command = Yii::app()->db->createCommand('SELECT support_name, support_phone, support_value, support_type FROM ' . $this->tableName() . ' ORDER BY support_order ASC');
        return $command->queryAll();
    }

    //Back end - list item admin
    public function listItemAdmin() {
        $command = Yii::app()->db->createCommand('SELECT support_name, support_phone, support_value, support_type FROM ' . $this->tableName() . ' ORDER BY support_order ASC');
        return $command->queryAll();
    }

    //Back end - Add item
    public function addItem($data = NULL) {
        $this->deleteAll(); //delete

        $names = $data->getPost('name', '');
        $phones = $data->getPost('phone', '');
        $values = $data->getPost('value', '');
        $types = $data->getPost('type', '');
        $delete = $data->getPost('delete', '');

        if ($values) {
            $values = array_unique($values); //Removes duplicate values from an array
            $i = 1;
            foreach ($values as $key => $value) {
                if (!(isset($delete[$key]) && $delete[$key] == 1)) {
                    if (!empty($values[$key])) {
                        $this->insertItem(trim($names[$key]), trim($phones[$key]), trim($value), $i, trim($types[$key]));
                        $i++;
                    }
                }
            }
        } else {
            $this->addError('value', 'Value not be empty.');
        }
    }

    //Back end - insert item
    private function insertItem($name, $phone, $value, $order, $type) {
        $command = Yii::app()->db->createCommand('INSERT INTO ' . $this->tableName() . ' (`support_name`, `support_phone`, `support_value`, `support_order`, `support_type`) VALUES (:name, :phone, :value, :order, :type)');
        $command->bindParam(":name", $name, PDO::PARAM_STR);
        $command->bindParam(":phone", $phone, PDO::PARAM_STR);
        $command->bindParam(":value", $value, PDO::PARAM_STR);
        $command->bindParam(":order", $order, PDO::PARAM_INT);
        $command->bindParam(":type", $type, PDO::PARAM_STR);
        $command->execute();
    }
}