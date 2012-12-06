<?php

/**
 * This is the model class for table "hoiit_settings".
 *
 * The followings are the available columns in table 'hoiit_settings':
 * @property string $setting_name
 * @property string $setting_value
 */
class Setting extends CActiveRecord {
    public $default_language;
    public $title;
    public $keywords;

    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

    /**
     * @return string the associated database table name
     */
    public function tableName() {
        return 'hoiit_settings';
    }

    /**
     * @return array validation rules for model attributes.
     */
    public function rules() {
        // NOTE: you should only define rules for those attributes that
        // will receive user inputs.
        return array(
            array('default_language, title', 'required'),
            array('title', 'length', 'max' => 100),
            array('keywords', 'length', 'max' => 250),
            /*array('setting_name, setting_value', 'required'),
            array('setting_name', 'length', 'max' => 30),
            array('setting_value', 'length', 'max' => 100),
            array('setting_name, setting_value', 'safe', 'on' => 'search'),*/
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
            //'setting_name' => 'Setting Name',
            //'setting_value' => 'Setting Value',
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

        $criteria->compare('setting_name', $this->setting_name, true);
        $criteria->compare('setting_value', $this->setting_value, true);

        return new CActiveDataProvider($this, array(
            'criteria' => $criteria,
        ));
    }

    public function getSetting() {
        $data = array();
        $command = Yii::app()->db->createCommand('SELECT setting_name, setting_value FROM ' . $this->tableName());
        $rows = $command->queryAll();
        foreach ($rows as $rows) {
            $data[$rows['setting_name']] = $rows['setting_value'];
        }
        return $data;
    }

    public function saveSetting() {
        $purifier = new CHtmlPurifier();
        $this->title = $purifier->purify(trim($this->title));
        $this->default_language = $purifier->purify(trim($this->default_language));
        $this->keywords = $purifier->purify(trim($this->keywords));

        $this->addSetting('title', $this->title);
        $this->addSetting('default_language', $this->default_language);
        $this->addSetting('keywords', $this->keywords);

        return true;
    }

    private function addSetting($name, $value) {
        $command = Yii::app()->db->createCommand('UPDATE ' . $this->tableName() . ' SET setting_value=:value WHERE setting_name=:name');
        $command->bindParam(":value", $value, PDO::PARAM_STR);
        $command->bindParam(":name", $name, PDO::PARAM_STR);
        $command->execute();
    }
}