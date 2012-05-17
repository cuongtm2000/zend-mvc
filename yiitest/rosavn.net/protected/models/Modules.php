<?php

/**
 * This is the model class for table "dos_modules".
 *
 * The followings are the available columns in table 'dos_modules':
 * @property string $module_id
 * @property string $module_url
 * @property string $module_title
 * @property integer $module_sort
 * @property integer $module_type
 *
 * The followings are the available model relations:
 * @property DosUsernames[] $dosUsernames
 * @property DosTemplatesHasDosModules[] $dosTemplatesHasDosModules
 * @property DosUsernamesHasDosModules[] $dosUsernamesHasDosModules
 */
class Modules extends CActiveRecord {

    /**
     * Returns the static model of the specified AR class.
     * @return Modules the static model class
     */
    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

    /**
     * @return string the associated database table name
     */
    public function tableName() {
        return 'dos_modules';
    }

    /**
     * @return array validation rules for model attributes.
     */
    public function rules() {
        // NOTE: you should only define rules for those attributes that
        // will receive user inputs.
        return array(
            array('module_id, module_sort, module_type', 'required'),
            array('module_sort, module_type', 'numerical', 'integerOnly' => true),
            array('module_id', 'length', 'max' => 20),
            array('module_url, module_title', 'length', 'max' => 45),
            // The following rule is used by search().
            // Please remove those attributes that should not be searched.
            array('module_id, module_url, module_title, module_sort, module_type', 'safe', 'on' => 'search'),
        );
    }

    /**
     * @return array relational rules.
     */
    public function relations() {
        // NOTE: you may need to adjust the relation name and the related
        // class name for the relations automatically generated below.
        return array(
            'dosUsernames' => array(self::MANY_MANY, 'DosUsernames', 'dos_modules_has_dos_usernames(dos_modules_module_id, dos_usernames_username)'),
            'dosTemplatesHasDosModules' => array(self::HAS_MANY, 'DosTemplatesHasDosModules', 'dos_modules_module_id'),
            'dosUsernamesHasDosModules' => array(self::HAS_MANY, 'DosUsernamesHasDosModules', 'dos_modules_module_id'),
        );
    }

    /**
     * @return array customized attribute labels (name=>label)
     */
    public function attributeLabels() {
        return array(
            'module_id' => 'Module',
            'module_url' => 'Module Url',
            'module_title' => 'Module Title',
            'module_sort' => 'Module Sort',
            'module_type' => 'Module Type',
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

        $criteria->compare('module_id', $this->module_id, true);
        $criteria->compare('module_url', $this->module_url, true);
        $criteria->compare('module_title', $this->module_title, true);
        $criteria->compare('module_sort', $this->module_sort);
        $criteria->compare('module_type', $this->module_type);

        return new CActiveDataProvider($this, array(
                    'criteria' => $criteria,
                ));
    }
    public function listModules($type){
        $command = Yii::app()->db->createCommand('SELECT module_id FROM ' . $this->tableName() . ' WHERE module_type=:type ORDER BY module_sort ASC');
        $command->bindParam(":type", $type, PDO::PARAM_INT);
        return $command->queryAll();
    }
    //Front end - list Module by User for page registration success
    public function listModulesByUser($type, $user){
        $command = Yii::app()->db->createCommand('SELECT module_id FROM ' . $this->tableName() . ', dos_modules_has_dos_usernames WHERE '.$this->tableName().'.module_id = dos_modules_has_dos_usernames.dos_modules_module_id AND module_type=:type AND dos_usernames_username=:user ORDER BY module_sort ASC');
        $command->bindParam(":type", $type, PDO::PARAM_INT);
        $command->bindParam(":user", $user, PDO::PARAM_STR);
        return $command->queryAll();
    }
}