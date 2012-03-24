<?php

/**
 * This is the model class for table "dos_user_langs".
 *
 * The followings are the available columns in table 'dos_user_langs':
 * @property string $lang_name
 * @property string $lang
 * @property string $langen
 * @property string $dos_usernames_username
 *
 * The followings are the available model relations:
 * @property DosUsernames $dosUsernamesUsername
 */
class UserLangs extends CActiveRecord {

    private $_subdomain;

    public function init() {
        $this->_subdomain = Yii::app()->session['subdomain'];
    }

    /**
     * Returns the static model of the specified AR class.
     * @return UserLangs the static model class
     */
    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

    /**
     * @return string the associated database table name
     */
    public function tableName() {
        return 'dos_user_langs';
    }

    /**
     * @return array validation rules for model attributes.
     */
    public function rules() {
        // NOTE: you should only define rules for those attributes that
        // will receive user inputs.
        return array(
            array('lang_name, lang, dos_usernames_username', 'required'),
            array('lang_name', 'length', 'max' => 30),
            array('lang, langen', 'length', 'max' => 200),
            array('dos_usernames_username', 'length', 'max' => 45),
            // The following rule is used by search().
            // Please remove those attributes that should not be searched.
            array('lang_name, lang, langen, dos_usernames_username', 'safe', 'on' => 'search'),
        );
    }

    /**
     * @return array relational rules.
     */
    public function relations() {
        // NOTE: you may need to adjust the relation name and the related
        // class name for the relations automatically generated below.
        return array(
            'dosUsernamesUsername' => array(self::BELONGS_TO, 'DosUsernames', 'dos_usernames_username'),
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

        $criteria->compare('lang_name', $this->lang_name, true);
        $criteria->compare('lang', $this->lang, true);
        $criteria->compare('langen', $this->langen, true);
        $criteria->compare('dos_usernames_username', $this->dos_usernames_username, true);

        return new CActiveDataProvider($this, array(
                    'criteria' => $criteria,
                ));
    }

    //Front end - get all language
    public static function getLangs() {
        $user = Yii::app()->session['subdomain'];
        $command = Yii::app()->db->createCommand('SELECT lang_name, lang' . LANG . ' FROM dos_user_langs WHERE dos_usernames_username=:user');
        $command->bindParam(":user", $user, PDO::PARAM_STR);
        return $command->queryAll();
    }

    //Back end - get all language
    public function listItemAdmin() {
        $command = Yii::app()->db->createCommand('SELECT lang_name, lang, langen FROM ' . $this->tableName() . ' WHERE dos_usernames_username=:user');
        $command->bindParam(":user", $this->_subdomain, PDO::PARAM_STR);
        return $command->queryAll();
    }

    //Back end - Add item
    public function addItem($data = NULL) {
        $this->deleteItem(); //delete

        $lang_name = $data->getPost('lang_name', '');
        $lang = $data->getPost('lang', '');
        $langen = $data->getPost('langen', '');
        $size = count($lang_name);

        for ($i = 0; $i < $size; $i++) {
            $lang_name_insert = trim($lang_name[$i]);
            $lang_insert = trim($lang[$i]);
            $langen_insert = trim($langen[$i]);
            if (!empty($lang_name_insert) && !empty($lang_insert)) {
                $this->insertItem($lang_name_insert, $lang_insert, $langen_insert);
            }
        }
    }

    //Back end - insert item
    private function insertItem($lang_name, $lang, $langen) {
        $command = Yii::app()->db->createCommand('INSERT INTO ' . $this->tableName() . ' (`lang_name`, `lang`, `langen`, `dos_usernames_username`) VALUES (:lang_name, :lang, :langen, :user)');
        $command->bindParam(":lang_name", $lang_name, PDO::PARAM_STR);
        $command->bindParam(":lang", $lang, PDO::PARAM_STR);
        $command->bindParam(":langen", $langen, PDO::PARAM_STR);
        $command->bindParam(":user", $this->_subdomain, PDO::PARAM_STR);
        $command->execute();
    }

    //Back end - delete item
    private function deleteItem() {
        $command = Yii::app()->db->createCommand('DELETE FROM ' . $this->tableName() . ' WHERE dos_usernames_username=:user');
        $command->bindParam(":user", $this->_subdomain, PDO::PARAM_STR);
        $command->execute();
    }

}