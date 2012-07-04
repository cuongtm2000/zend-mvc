<?php

/**
 * This is the model class for table "hoiit_users".
 *
 * The followings are the available columns in table 'hoiit_users':
 * @property string $user_id
 * @property string $user_email
 * @property string $user_pass
 * @property string $user_picture
 * @property string $user_display
 * @property string $user_registered
 * @property string $user_lastvisit
 * @property string $user_activation_key
 * @property integer $user_enable
 * @property string $hoiit_groups_group_id
 *
 * The followings are the available model relations:
 * @property HoiitGroups $hoiitGroupsGroup
 */
class User extends CActiveRecord {
    /**
     * Returns the static model of the specified AR class.
     * @param string $className active record class name.
     * @return User the static model class
     */
    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

    /**
     * @return string the associated database table name
     */
    public function tableName() {
        return 'hoiit_users';
    }

    /**
     * @return array validation rules for model attributes.
     */
    public function rules() {
        // NOTE: you should only define rules for those attributes that
        // will receive user inputs.
        return array(
            array('user_id, user_email, user_pass, user_display, user_registered, user_enable, hoiit_groups_group_id', 'required'),
            array('user_enable', 'numerical', 'integerOnly' => true),
            array('user_id, user_pass, user_picture, user_activation_key, hoiit_groups_group_id', 'length', 'max' => 45),
            array('user_email, user_display', 'length', 'max' => 100),
            array('user_lastvisit', 'safe'),
            // The following rule is used by search().
            // Please remove those attributes that should not be searched.
            array('user_id, user_email, user_pass, user_picture, user_display, user_registered, user_lastvisit, user_activation_key, user_enable, hoiit_groups_group_id', 'safe', 'on' => 'search'),
        );
    }

    /**
     * @return array relational rules.
     */
    public function relations() {
        // NOTE: you may need to adjust the relation name and the related
        // class name for the relations automatically generated below.
        return array(
            'hoiitGroupsGroup' => array(self::BELONGS_TO, 'HoiitGroups', 'hoiit_groups_group_id'),
        );
    }

    /**
     * @return array customized attribute labels (name=>label)
     */
    public function attributeLabels() {
        return array(
            'user_id' => 'User',
            'user_email' => 'User Email',
            'user_pass' => 'User Pass',
            'user_picture' => 'User Picture',
            'user_display' => 'User Display',
            'user_registered' => 'User Registered',
            'user_lastvisit' => 'User Lastvisit',
            'user_activation_key' => 'User Activation Key',
            'user_enable' => 'User Enable',
            'hoiit_groups_group_id' => 'Hoiit Groups Group',
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

        $criteria->compare('user_id', $this->user_id, true);
        $criteria->compare('user_email', $this->user_email, true);
        $criteria->compare('user_pass', $this->user_pass, true);
        $criteria->compare('user_picture', $this->user_picture, true);
        $criteria->compare('user_display', $this->user_display, true);
        $criteria->compare('user_registered', $this->user_registered, true);
        $criteria->compare('user_lastvisit', $this->user_lastvisit, true);
        $criteria->compare('user_activation_key', $this->user_activation_key, true);
        $criteria->compare('user_enable', $this->user_enable);
        $criteria->compare('hoiit_groups_group_id', $this->hoiit_groups_group_id, true);

        return new CActiveDataProvider($this, array(
            'criteria' => $criteria,
        ));
    }
}