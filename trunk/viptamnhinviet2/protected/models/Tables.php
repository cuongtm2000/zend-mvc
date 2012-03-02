<?php

/**
 * This is the model class for table "dos_module_tables".
 *
 * The followings are the available columns in table 'dos_module_tables':
 * @property string $left_child
 * @property string $right_child
 * @property string $four_child
 * @property string $priority
 * @property string $upgrade_date
 * @property string $dos_module_usernames_username
 *
 * The followings are the available model relations:
 * @property Usernames $dosModuleUsernamesUsername
 */
class Tables extends CActiveRecord {

    /**
     * Returns the static model of the specified AR class.
     * @param string $className active record class name.
     * @return Tables the static model class
     */
    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

    /**
     * @return string the associated database table name
     */
    public function tableName() {
        return 'dos_module_tables';
    }

    /**
     * @return array validation rules for model attributes.
     */
    public function rules() {
        // NOTE: you should only define rules for those attributes that
        // will receive user inputs.
        return array(
            array('dos_module_usernames_username', 'required'),
            array('left_child, right_child, priority, dos_module_usernames_username', 'length', 'max' => 45),
            array('four_child', 'length', 'max' => 180),
            array('upgrade_date', 'safe'),
            // The following rule is used by search().
            // Please remove those attributes that should not be searched.
            array('left_child, right_child, four_child, priority, upgrade_date, dos_module_usernames_username', 'safe', 'on' => 'search'),
        );
    }

    /**
     * @return array relational rules.
     */
    public function relations() {
        // NOTE: you may need to adjust the relation name and the related
        // class name for the relations automatically generated below.
        return array(
            'dosModuleUsernamesUsername' => array(self::BELONGS_TO, 'Usernames', 'dos_module_usernames_username'),
        );
    }

    /**
     * @return array customized attribute labels (name=>label)
     */
    public function attributeLabels() {
        return array(
            'left_child' => 'Left Child',
            'right_child' => 'Right Child',
            'four_child' => 'Four Child',
            'priority' => 'Priority',
            'upgrade_date' => 'Upgrade Date',
            'dos_module_usernames_username' => 'Dos Module Usernames Username',
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

        $criteria->compare('left_child', $this->left_child, true);
        $criteria->compare('right_child', $this->right_child, true);
        $criteria->compare('four_child', $this->four_child, true);
        $criteria->compare('priority', $this->priority, true);
        $criteria->compare('upgrade_date', $this->upgrade_date, true);
        $criteria->compare('dos_module_usernames_username', $this->dos_module_usernames_username, true);

        return new CActiveDataProvider($this, array(
                    'criteria' => $criteria,
                ));
    }
    public function addItem($user){
        $this->dos_module_usernames_username=$user;
        $this->save();
    }
            

}