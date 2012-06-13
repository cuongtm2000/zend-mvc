<?php

/**
 * This is the model class for table "dos_modules_has_dos_usernames".
 *
 * The followings are the available columns in table 'dos_modules_has_dos_usernames':
 * @property string $dos_modules_module_id
 * @property string $dos_usernames_username
 */
class ModuleUsername extends CActiveRecord {

    /**
     * Returns the static model of the specified AR class.
     * @return ModuleUsername the static model class
     */
    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

    /**
     * @return string the associated database table name
     */
    public function tableName() {
        return 'dos_modules_has_dos_usernames';
    }

    /**
     * @return array validation rules for model attributes.
     */
    public function rules() {
        // NOTE: you should only define rules for those attributes that
        // will receive user inputs.
        return array(
            array('dos_modules_module_id, dos_usernames_username', 'required'),
            array('dos_modules_module_id', 'length', 'max' => 20),
            array('dos_usernames_username', 'length', 'max' => 45),
            // The following rule is used by search().
            // Please remove those attributes that should not be searched.
            array('dos_modules_module_id, dos_usernames_username', 'safe', 'on' => 'search'),
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
            'dos_modules_module_id' => 'Dos Modules Module',
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

        $criteria->compare('dos_modules_module_id', $this->dos_modules_module_id, true);
        $criteria->compare('dos_usernames_username', $this->dos_usernames_username, true);

        return new CActiveDataProvider($this, array(
                    'criteria' => $criteria,
                ));
    }

    public function moduleUser($user) {
        $command = Yii::app()->db->createCommand('SELECT dos_modules_module_id, module_url, module_title FROM ' . $this->tableName() . ', dos_modules WHERE ' . $this->tableName() . '.dos_modules_module_id = dos_modules.module_id AND dos_usernames_username=:user ORDER BY module_sort ASC');
        $command->bindParam(":user", $user, PDO::PARAM_STR);
        return $command->queryAll();
    }
    //Back end - Module by User using for function "positionBanner" of Banner
    public function moduleByUser($user) {
        $langs = Langs::getLangs(0); //get lang list
        $data = array();
        $command = Yii::app()->db->createCommand('SELECT module_id FROM ' . $this->tableName() . ', dos_modules WHERE ' . $this->tableName() . '.dos_modules_module_id = dos_modules.module_id AND dos_usernames_username=:user AND module_type=1');
        $command->bindParam(":user", $user, PDO::PARAM_STR);
        $result = $command->queryAll();

        $data['default'] = 'Trang chủ';
        foreach ($result as $value) {
            foreach ($langs as $lang){
                if($lang['lang_name'] == $value['module_id']){
                    $data[$value['module_id']] = $lang['lang'];
                }
            }
        }
        return $data;
    }
    public function addModuleUser($user, $pages, $features){
        foreach ($pages as $page){
            $command = Yii::app()->db->createCommand('INSERT INTO '.$this->tableName().' (`dos_modules_module_id`, `dos_usernames_username`) VALUES (:module_id, :username)');
            $command->bindParam(":module_id", $page, PDO::PARAM_STR);
            $command->bindParam(":username", $user, PDO::PARAM_STR);
            $command->execute();
        }
        foreach ($features as $feature){
            $command = Yii::app()->db->createCommand('INSERT INTO '.$this->tableName().' (`dos_modules_module_id`, `dos_usernames_username`) VALUES (:module_id, :username)');
            $command->bindParam(":module_id", $feature, PDO::PARAM_STR);
            $command->bindParam(":username", $user, PDO::PARAM_STR);
            $command->execute();
        }
    }
    //Back end - delete record for Administrator
    public function deleteRecord($user) {
        $command = Yii::app()->db->createCommand('DELETE FROM ' . $this->tableName() . ' WHERE dos_usernames_username=:user');
        $command->bindParam(":user", $user, PDO::PARAM_STR);
        $command->execute();
    }
}