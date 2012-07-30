<?php

/**
 * This is the model class for table "hoiit_urls".
 *
 * The followings are the available columns in table 'hoiit_urls':
 * @property string $url_pattern
 * @property string $url_route
 * @property string $url_param
 * @property integer $url_type
 * @property string $hoiit_modules_module_id
 * @property string $hoiit_languages_language_id
 *
 * The followings are the available model relations:
 * @property HoiitLanguages $hoiitLanguagesLanguage
 * @property HoiitModules $hoiitModulesModule
 */
class Urls extends CActiveRecord {
    /**
     * Returns the static model of the specified AR class.
     * @param string $className active record class name.
     * @return Urls the static model class
     */
    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

    /**
     * @return string the associated database table name
     */
    public function tableName() {
        return 'hoiit_urls';
    }

    /**
     * @return array validation rules for model attributes.
     */
    public function rules() {
        // NOTE: you should only define rules for those attributes that
        // will receive user inputs.
        return array(
            array('url_pattern, url_route, hoiit_modules_module_id, hoiit_languages_language_id', 'required'),
            array('url_type', 'numerical', 'integerOnly' => true),
            array('url_pattern, url_route', 'length', 'max' => 100),
            array('url_param', 'length', 'max' => 200),
            array('hoiit_modules_module_id', 'length', 'max' => 30),
            array('hoiit_languages_language_id', 'length', 'max' => 2),
            // The following rule is used by search().
            // Please remove those attributes that should not be searched.
            array('url_pattern, url_route, url_param, url_type, hoiit_modules_module_id, hoiit_languages_language_id', 'safe', 'on' => 'search'),
        );
    }

    /**
     * @return array relational rules.
     */
    public function relations() {
        // NOTE: you may need to adjust the relation name and the related
        // class name for the relations automatically generated below.
        return array(
            'hoiitLanguagesLanguage' => array(self::BELONGS_TO, 'HoiitLanguages', 'hoiit_languages_language_id'),
            'hoiitModulesModule' => array(self::BELONGS_TO, 'HoiitModules', 'hoiit_modules_module_id'),
        );
    }

    /**
     * @return array customized attribute labels (name=>label)
     */
    public function attributeLabels() {
        return array(
            'url_pattern' => 'Url Pattern',
            'url_route' => 'Url Route',
            'url_param' => 'Url Param',
            'url_type' => 'Url Type',
            'hoiit_modules_module_id' => 'Hoiit Modules Module',
            'hoiit_languages_language_id' => 'Hoiit Languages Language',
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

        $criteria->compare('url_pattern', $this->url_pattern, true);
        $criteria->compare('url_route', $this->url_route, true);
        $criteria->compare('url_param', $this->url_param, true);
        $criteria->compare('url_type', $this->url_type);
        $criteria->compare('hoiit_modules_module_id', $this->hoiit_modules_module_id, true);
        $criteria->compare('hoiit_languages_language_id', $this->hoiit_languages_language_id, true);

        return new CActiveDataProvider($this, array(
            'criteria' => $criteria,
        ));
    }

    public function getPatternByType($module) {
        $data = array();
        $command = Yii::app()->db->createCommand('SELECT url_pattern, hoiit_languages_language_id FROM ' . $this->tableName() . ' WHERE url_type=1 AND hoiit_modules_module_id=:module');
        $command->bindParam(":module", $module, PDO::PARAM_STR);
        $rows = $command->queryAll();
        foreach ($rows as $row) {
            $data[$row['hoiit_languages_language_id']] = $row['url_pattern'];
        }
        return $data;
    }

    //Back end
    public function getModuleByPattern($pattern, $lang) {
        $command = Yii::app()->db->createCommand('SELECT hoiit_modules_module_id FROM ' . $this->tableName() . ' WHERE url_pattern=:pattern AND hoiit_languages_language_id=:lang');
        $command->bindParam(":pattern", $pattern, PDO::PARAM_STR);
        $command->bindParam(":lang", $lang, PDO::PARAM_STR);
        return $command->queryScalar();
    }

    //Back end
    public function listByModule($module) {
        $command = Yii::app()->db->createCommand('SELECT url_pattern, url_route, url_param, url_type, hoiit_languages_language_id FROM ' . $this->tableName() . ' WHERE hoiit_modules_module_id=:module');
        $command->bindParam(":module", $module, PDO::PARAM_STR);
        return $command->queryAll();
    }

    //Back end - Add item
    public function addItem($id, $data) {
        $pattern = $data->getPost('pattern', '');
        $pattern = array_unique($pattern); //Removes duplicate values from an array
        $route = $data->getPost('route', '');
        $param = $data->getPost('param', '');
        $type = $data->getPost('type', '');
        $lang = $data->getPost('lang', '');

        $this::model()->deleteAll('hoiit_modules_module_id=:module', array(':module'=>$id));
        foreach ($pattern as $key => $value) {
            if ($pattern[$key] && $route[$key]) {
                $this->insertItem(trim($pattern[$key]), trim($route[$key]), trim($param[$key]), trim($type[$key]), $id, $lang[$key]);
            }
        }
    }

    //Back end - insert item
    private function insertItem($pattern, $route, $param, $type, $module_id, $language_id) {
        $command = Yii::app()->db->createCommand('INSERT INTO ' . $this->tableName() . ' (url_pattern, url_route, url_param, url_type, hoiit_modules_module_id, hoiit_languages_language_id) VALUES (:pattern, :route, :param, :type, :module_id, :language_id)');
        $command->bindParam(":pattern", $pattern, PDO::PARAM_STR);
        $command->bindParam(":route", $route, PDO::PARAM_STR);
        $command->bindParam(":param", $param, PDO::PARAM_STR);
        $command->bindParam(":type", $type, PDO::PARAM_INT);
        $command->bindParam(":module_id", $module_id, PDO::PARAM_STR);
        $command->bindParam(":language_id", $language_id, PDO::PARAM_STR);
        $command->execute();
    }
}