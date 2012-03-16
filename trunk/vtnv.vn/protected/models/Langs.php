<?php

/**
 * This is the model class for table "dos_langs".
 *
 * The followings are the available columns in table 'dos_langs':
 * @property string $lang_name
 * @property string $lang
 * @property string $langen
 */
class Langs extends CActiveRecord {

    /**
     * Returns the static model of the specified AR class.
     * @return Langs the static model class
     */
    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

    /**
     * @return string the associated database table name
     */
    public function tableName() {
        return 'dos_langs';
    }

    /**
     * @return array validation rules for model attributes.
     */
    public function rules() {
        // NOTE: you should only define rules for those attributes that
        // will receive user inputs.
        return array(
            array('lang_name, lang', 'required'),
            array('lang_name', 'length', 'max' => 30),
            array('lang, langen', 'length', 'max' => 200),
            // The following rule is used by search().
            // Please remove those attributes that should not be searched.
            array('lang_name, lang, langen', 'safe', 'on' => 'search'),
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
            'lang_name' => 'Lang Name',
            'lang' => 'Lang',
            'langen' => 'Langen',
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

        $criteria->compare('lang_name', $this->lang_name, true);
        $criteria->compare('lang', $this->lang, true);
        $criteria->compare('langen', $this->langen, true);

        return new CActiveDataProvider($this, array(
                    'criteria' => $criteria,
                ));
    }

    //Front end - setup language
    public static function setLangs($admin = 0) {
        $lang_data = array();
        $user_lang_data = array();
        $lang = Langs::getLangs($admin);

        foreach ($lang as $value) {
            $lang_data[$value['lang_name']] = $value['lang'];
        }
        return $lang_data;
    }

    //Front end - get all language
    public static function getLangs($admin) {
        $command = ($admin == 1) ? Yii::app()->db->createCommand('SELECT lang_name, lang FROM dos_langs') : Yii::app()->db->createCommand('SELECT lang_name, lang FROM dos_langs WHERE admin=:admin');
        $command->bindParam(":admin", $admin, PDO::PARAM_INT);
        return $command->queryAll();
    }

}