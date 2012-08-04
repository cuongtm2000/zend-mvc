<?php

/**
 * This is the model class for table "hoiit_configs".
 *
 * The followings are the available columns in table 'hoiit_configs':
 * @property string $config_name
 * @property integer $config_value
 * @property string $config_desc
 * @property string $hoiit_modules_module_id
 *
 * The followings are the available model relations:
 * @property HoiitModules $hoiitModulesModule
 */
class Config extends CActiveRecord {
    /**
     * Returns the static model of the specified AR class.
     * @param string $className active record class name.
     * @return Config the static model class
     */
    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

    /**
     * @return string the associated database table name
     */
    public function tableName() {
        return 'hoiit_configs';
    }

    /**
     * @return array validation rules for model attributes.
     */
    public function rules() {
        // NOTE: you should only define rules for those attributes that
        // will receive user inputs.
        return array(
            array('config_name, config_value, hoiit_modules_module_id', 'required'),
            array('config_value', 'numerical', 'integerOnly' => true),
            array('config_name, hoiit_modules_module_id', 'length', 'max' => 30),
            array('config_desc', 'length', 'max' => 100),
            // The following rule is used by search().
            // Please remove those attributes that should not be searched.
            array('config_name, config_value, config_desc, hoiit_modules_module_id', 'safe', 'on' => 'search'),
        );
    }

    /**
     * @return array relational rules.
     */
    public function relations() {
        // NOTE: you may need to adjust the relation name and the related
        // class name for the relations automatically generated below.
        return array(
            //'hoiitModulesModule' => array(self::BELONGS_TO, 'HoiitModules', 'hoiit_modules_module_id'),
        );
    }

    /**
     * @return array customized attribute labels (name=>label)
     */
    public function attributeLabels() {
        return array(
            'config_name' => 'Config Name',
            'config_value' => 'Config Value',
            'config_desc' => 'Config Desc',
            'hoiit_modules_module_id' => 'Hoiit Modules Module',
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

        $criteria->compare('config_name', $this->config_name, true);
        $criteria->compare('config_value', $this->config_value);
        $criteria->compare('config_desc', $this->config_desc, true);
        $criteria->compare('hoiit_modules_module_id', $this->hoiit_modules_module_id, true);

        return new CActiveDataProvider($this, array(
            'criteria' => $criteria,
        ));
    }

    public static function getValue($name) {
        $command = Yii::app()->db->createCommand('SELECT config_value FROM hoiit_configs WHERE config_name =:value');
        $command->bindParam(":value", $name, PDO::PARAM_STR);
        return $command->queryScalar();
    }
	
	//Back end - config_name, config_value By module_id
	public function getNameValue($module_id) {
        $command = Yii::app()->db->createCommand('SELECT config_name, config_value, config_desc FROM '. $this->tableName().' WHERE hoiit_modules_module_id =:module_id');
        $command->bindParam(":module_id", $module_id, PDO::PARAM_STR);
        return $command->queryAll();
    }
	
	//Back end - Add item
	public function addItem($id, $data){
		$name = $data->getPost('name', '');
        $values = $data->getPost('value', '');
		
		$this->deleteAll('hoiit_modules_module_id=:module', array(':module'=>$id));
		foreach ($name as $key => $value) {
			$this->insertItem(trim($name[$key]), trim($values[$key]), $id);
		}
	}
	
	//Back end - insert item
    private function insertItem($config_name, $config_value, $module_id) {
        $command = Yii::app()->db->createCommand('INSERT INTO ' . $this->tableName() . ' (config_name, config_value, hoiit_modules_module_id) VALUES (:config_name, :config_value, :module_id)');
        $command->bindParam(":config_name", $config_name, PDO::PARAM_STR);
        $command->bindParam(":config_value", $config_value, PDO::PARAM_INT);
        $command->bindParam(":module_id", $module_id, PDO::PARAM_STR);
        $command->execute();
    }
}