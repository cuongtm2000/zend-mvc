<?php

/**
 * This is the model class for table "dos_module_supports".
 *
 * The followings are the available columns in table 'dos_module_supports':
 * @property integer $support_id
 * @property string $support_name
 * @property string $support_phone
 * @property string $support_value
 * @property integer $support_order
 * @property string $support_type
 * @property string $dos_usernames_username
 *
 * The followings are the available model relations:
 * @property DosUsernames $dosUsernamesUsername
 */
class Supports extends CActiveRecord {

    private $_subdomain;

    public function init() {
        $this->_subdomain = Yii::app()->session['subdomain'];
    }

    /**
     * Returns the static model of the specified AR class.
     * @return Support the static model class
     */
    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

    /**
     * @return string the associated database table name
     */
    public function tableName() {
        return 'dos_module_supports';
    }

    /**
     * @return array validation rules for model attributes.
     */
    public function rules() {
        // NOTE: you should only define rules for those attributes that
        // will receive user inputs.
        return array(
            array('support_name, support_value, support_order, support_type, dos_usernames_username', 'required'),
            array('support_order', 'numerical', 'integerOnly' => true),
            array('support_name, support_nameen, support_phone, support_value, dos_usernames_username', 'length', 'max' => 45),
            array('support_type', 'length', 'max' => 20),
            // The following rule is used by search().
            // Please remove those attributes that should not be searched.
            array('support_id, support_name, support_nameen, support_phone, support_value, support_order, support_type, dos_usernames_username', 'safe', 'on' => 'search'),
        );
    }

    /**
     * @return array relational rules.
     */
    public function relations() {
        // NOTE: you may need to adjust the relation name and the related
        // class name for the relations automatically generated below.
        return array(
            //'dosUsernamesUsername' => array(self::BELONGS_TO, 'DosUsernames', 'dos_usernames_username'),
        );
    }

    /**
     * @return array customized attribute labels (name=>label)
     */
    public function attributeLabels() {
        return array(
            'support_id' => 'Support',
            'support_name' => 'Support Name',
            'support_name' => 'Support Name',
            'support_phone' => 'Support Phone',
            'support_value' => 'Support Value',
            'support_order' => 'Support Order',
            'support_type' => 'Support Type',
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

        $criteria->compare('support_id', $this->support_id);
        $criteria->compare('support_name', $this->support_name, true);
        $criteria->compare('support_phone', $this->support_phone, true);
        $criteria->compare('support_value', $this->support_value, true);
        $criteria->compare('support_order', $this->support_order);
        $criteria->compare('support_type', $this->support_type, true);
        $criteria->compare('dos_usernames_username', $this->dos_usernames_username, true);

        return new CActiveDataProvider($this, array(
                    'criteria' => $criteria,
                ));
    }

    //Front end - list item
    public function listItem() {
        $command = Yii::app()->db->createCommand('SELECT support_name'.LANG.', support_phone, support_value, support_order, support_type FROM ' . $this->tableName() . ' WHERE dos_usernames_username=:user ORDER BY support_order ASC');
        $command->bindParam(":user", $this->_subdomain, PDO::PARAM_STR);
        return $command->queryAll();
    }

    //Back end - list item admin
    public function listItemAdmin() {
        $user = Yii::app()->user->id;
        $command = Yii::app()->db->createCommand('SELECT support_id, support_name, support_nameen, support_phone, support_value, support_order, support_type FROM ' . $this->tableName() . ' WHERE dos_usernames_username=:user');
        $command->bindParam(":user", $user, PDO::PARAM_STR);
        return $command->queryAll();
    }

    //Back end - Add item
    public function addItem($data = NULL) {
        $this->deleteRecord(Yii::app()->user->id); //delete

        $names = $data->getPost('name', '');
        $nameens = $data->getPost('nameen', '');
        $phones = $data->getPost('phone', '');
        $values = $data->getPost('value', '');
        $orders = $data->getPost('order', '');
        $types = $data->getPost('type', '');

        for ($i = 0; $i < 6; $i++) {
            if (!empty($values[$i]) && !empty($types[$i])) {
                $this->insertItem(trim($names[$i]), ($nameens) ? trim($nameens[$i]) : '', trim($phones[$i]), trim($values[$i]), trim($orders[$i]), trim($types[$i]));
            }
        }
    }

    //Back end - insert item
    private function insertItem($name, $nameen, $phone, $value, $order, $type) {
        $user = Yii::app()->user->id;
        $command = Yii::app()->db->createCommand('INSERT INTO ' . $this->tableName() . ' (`support_name`, `support_nameen`, `support_phone`, `support_value`, `support_order`, `support_type`, `dos_usernames_username`) VALUES (:name, :nameen, :phone, :value, :order, :type, :user)');
        $command->bindParam(":name", $name, PDO::PARAM_STR);
        $command->bindParam(":nameen", $nameen, PDO::PARAM_STR);
        $command->bindParam(":phone", $phone, PDO::PARAM_STR);
        $command->bindParam(":value", $value, PDO::PARAM_STR);
        $command->bindParam(":order", $order, PDO::PARAM_INT);
        $command->bindParam(":type", $type, PDO::PARAM_STR);
        $command->bindParam(":user", $user, PDO::PARAM_STR);
        $command->execute();
    }

    //Back end - delete item and for Administrator
    public function deleteRecord($user) {
        $command = Yii::app()->db->createCommand('DELETE FROM ' . $this->tableName() . ' WHERE dos_usernames_username=:user');
        $command->bindParam(":user", $user, PDO::PARAM_STR);
        $command->execute();
    }
    //Back end - Count item by user post
    public function countItemByUser(){
        $user = Yii::app()->user->id;
        $command = Yii::app()->db->createCommand('SELECT COUNT(support_id) AS num FROM ' . $this->tableName() . ' WHERE dos_usernames_username=:user');
        $command->bindParam(":user", $user, PDO::PARAM_STR);
        return $command->queryScalar();
    }
}