<?php

/**
 * This is the model class for table "{{modules_links}}".
 *
 * The followings are the available columns in table '{{modules_links}}':
 * @property string $link_id
 * @property string $module_id
 * @property string $language_id
 *
 * The followings are the available model relations:
 * @property Modules $module
 * @property Languages $language
 */
class Links extends CActiveRecord {
    /**
     * Returns the static model of the specified AR class.
     * @param string $className active record class name.
     * @return Links the static model class
     */
    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

    /**
     * @return string the associated database table name
     */
    public function tableName() {
        return '{{modules_links}}';
    }

    /**
     * @return array validation rules for model attributes.
     */
    public function rules() {
        // NOTE: you should only define rules for those attributes that
        // will receive user inputs.
        return array(
            array('link_id, module_id, language_id', 'required'),
            array('link_id', 'length', 'max' => 100),
            array('module_id', 'length', 'max' => 30),
            array('language_id', 'length', 'max' => 2),
            // The following rule is used by search().
            // Please remove those attributes that should not be searched.
            array('link_id, module_id, language_id', 'safe', 'on' => 'search'),
        );
    }

    /**
     * @return array relational rules.
     */
    public function relations() {
        // NOTE: you may need to adjust the relation name and the related
        // class name for the relations automatically generated below.
        return array(
            //'module' => array(self::BELONGS_TO, 'Modules', 'module_id'),
            //'language' => array(self::BELONGS_TO, 'Languages', 'language_id'),
        );
    }

    /**
     * @return array customized attribute labels (name=>label)
     */
    public function attributeLabels() {
        return array(
            'link_id' => 'Link',
            'module_id' => 'Module',
            'language_id' => 'Language',
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

        $criteria->compare('link_id', $this->link_id, true);
        $criteria->compare('module_id', $this->module_id, true);
        $criteria->compare('language_id', $this->language_id, true);

        return new CActiveDataProvider($this, array(
            'criteria' => $criteria,
        ));
    }

    public function getLink($module, $lang) {
        $command = Yii::app()->db->createCommand('SELECT link_id FROM ' . $this->tableName() . ' WHERE module_id=:module AND language_id=:lang');
        $command->bindParam(":module", $module, PDO::PARAM_STR);
        $command->bindParam(":lang", $lang, PDO::PARAM_STR);
        return $command->queryScalar();
    }

    //Front end - get module name for Site map
    public function getModule($link, $lang) {
        $command = Yii::app()->db->createCommand('SELECT module_id FROM ' . $this->tableName() . ' WHERE link_id=:link AND language_id=:lang');
        $command->bindParam(":link", $link, PDO::PARAM_STR);
        $command->bindParam(":lang", $lang, PDO::PARAM_STR);
        return $command->queryScalar();
    }

    //Back end - Add item
    public function addItems($id, $dataOld, $data) {
        $url = $data->getPost('url', '');

        $this->deleteAll('module_id=:module', array(':module' => $id)); //Xóa hết items của module

        //Copy Url for table User
        Urls::model()->addItems($id, $url, $dataOld);

        //Insert for UserLinks
        foreach ($url as $key => $value) {
            $command = Yii::app()->db->createCommand("INSERT INTO " . $this->tableName() . " (link_id, module_id, language_id) VALUES(:link_id, :module_id, :language_id)");
            $command->bindParam(":link_id", $value, PDO::PARAM_STR);
            $command->bindParam(":module_id", $id, PDO::PARAM_STR);
            $command->bindParam(":language_id", $key, PDO::PARAM_STR);
            $command->execute();
        }
    }

    //Back end - Get link_id and language_id by module_id
    public function getLinkLanguage($module) {
        $data = array();
        $command = Yii::app()->db->createCommand('SELECT link_id, language_id FROM ' . $this->tableName() . ' WHERE module_id=:module');
        $command->bindParam(":module", $module, PDO::PARAM_STR);
        $rows = $command->queryAll();

        foreach ($rows as $row) {
            $data[$row['language_id']] = $row['link_id'];
        }
        return $data;
    }
}