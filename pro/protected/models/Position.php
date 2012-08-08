<?php

/**
 * This is the model class for table "hoiit_positions".
 *
 * The followings are the available columns in table 'hoiit_positions':
 * @property string $pos_id
 * @property integer $pos_sort
 * @property string $pos_activated
 * @property string $module_id
 * @property string $action_id
 * @property string $controller_id
 * @property string $hoiit_functions_function_value
 *
 * The followings are the available model relations:
 * @property HoiitFunctions $hoiitFunctionsFunctionValue
 */
class Position extends CActiveRecord {
    /**
     * Returns the static model of the specified AR class.
     * @param string $className active record class name.
     * @return Position the static model class
     */
    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

    /**
     * @return string the associated database table name
     */
    public function tableName() {
        return 'hoiit_positions';
    }

    /**
     * @return array validation rules for model attributes.
     */
    public function rules() {
        // NOTE: you should only define rules for those attributes that
        // will receive user inputs.
        return array(
            array('pos_id, pos_sort, pos_activated, module_id, hoiit_functions_function_value', 'required'),
            array('pos_sort', 'numerical', 'integerOnly' => true),
            array('pos_id, module_id, action_id, controller_id, hoiit_functions_function_value', 'length', 'max' => 30),
            array('pos_activated', 'length', 'max' => 45),
            // The following rule is used by search().
            // Please remove those attributes that should not be searched.
            array('pos_id, pos_sort, pos_activated, module_id, action_id, controller_id, hoiit_functions_function_value', 'safe', 'on' => 'search'),
        );
    }

    /**
     * @return array relational rules.
     */
    public function relations() {
        // NOTE: you may need to adjust the relation name and the related
        // class name for the relations automatically generated below.
        return array(
            //'hoiitFunctionsFunctionValue' => array(self::BELONGS_TO, 'HoiitFunctions', 'hoiit_functions_function_value'),
        );
    }

    /**
     * @return array customized attribute labels (name=>label)
     */
    public function attributeLabels() {
        return array(
            'pos_id' => 'Pos',
            'pos_sort' => 'Pos Sort',
            'pos_activated' => 'Pos Activated',
            'module_id' => 'Module',
            'action_id' => 'Action',
            'controller_id' => 'Controller',
            'hoiit_functions_function_value' => 'Hoiit Functions Function Value',
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

        $criteria->compare('pos_id', $this->pos_id, true);
        $criteria->compare('pos_sort', $this->pos_sort);
        $criteria->compare('pos_activated', $this->pos_activated, true);
        $criteria->compare('module_id', $this->module_id, true);
        $criteria->compare('action_id', $this->action_id, true);
        $criteria->compare('controller_id', $this->controller_id, true);
        $criteria->compare('hoiit_functions_function_value', $this->hoiit_functions_function_value, true);

        return new CActiveDataProvider($this, array(
            'criteria' => $criteria,
        ));
    }

    public function setPosition($position, $page) {
        $command = Yii::app()->db->createCommand('SELECT function_value, function_name, function_class, function_call, hoiit_modules_module_id, module_type FROM ' . $this->tableName() . ', hoiit_functions, hoiit_modules WHERE ' . $this->tableName() . '.hoiit_functions_function_value = hoiit_functions.function_value AND hoiit_functions.hoiit_modules_module_id = hoiit_modules.module_id AND pos_id =:pos AND ' . $this->tableName() . '.module_id =:module AND pos_activated = 1 ORDER BY pos_sort ASC');
        $command->bindParam(":pos", $position, PDO::PARAM_STR);
        $command->bindParam(":module", $page, PDO::PARAM_STR);
        return $command->queryAll();
    }

    //Back end - Data position
    public function dataPosition() {
        return array('header', 'left', 'center', 'right', 'footer');
    }

    //Back end - Function, Position by Page
    public function getFuncByModule($page) {
        $command = Yii::app()->db->createCommand('SELECT pos_id, hoiit_functions_function_value FROM ' . $this->tableName() . ' WHERE module_id=:module ORDER BY pos_id ASC, pos_sort ASC');
        $command->bindParam(":module", $page, PDO::PARAM_STR);
        return $command->queryAll();
    }

    //Back end - Add item
    public function addItem($id, $data = NULL) {
        $function = $data->getPost('function', '');
        $position = $data->getPost('position', '');
        $delete = $data->getPost('delete', '');
        $function = array_unique($function); //Removes duplicate values from an array

        $this->deleteItem($id); //delete
        $i = 1;
        foreach ($function as $key => $value) {
            if (!(isset($delete[$key]) && $delete[$key] == 1)) {
                $this->insertItem($position[$key], $i, $id, $function[$key]);
                $i++;
            }
        }
    }

    private function deleteItem($page) {
        $command = Yii::app()->db->createCommand('DELETE FROM ' . $this->tableName() . ' WHERE module_id=:id');
        $command->bindParam(":id", $page, PDO::PARAM_STR);
        $command->execute();
    }

    //Back end - insert item
    private function insertItem($pos_id, $pos_sort, $module_id, $function_value) {
        $command = Yii::app()->db->createCommand('INSERT INTO ' . $this->tableName() . ' (pos_id, pos_sort, pos_activated, module_id, hoiit_functions_function_value) VALUES (:pos_id, :pos_sort, 1, :module_id, :function_value)');
        $command->bindParam(":pos_id", $pos_id, PDO::PARAM_STR);
        $command->bindParam(":pos_sort", $pos_sort, PDO::PARAM_INT);
        $command->bindParam(":module_id", $module_id, PDO::PARAM_STR);
        $command->bindParam(":function_value", $function_value, PDO::PARAM_STR);
        $command->execute();
    }
}