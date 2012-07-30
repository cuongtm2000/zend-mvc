<?php

/**
 * This is the model class for table "hoiit_module_menus_languages".
 *
 * The followings are the available columns in table 'hoiit_module_menus_languages':
 * @property integer $menu_id
 * @property string $language_id
 * @property string $menu_name
 * @property string $menu_url
 * @property string $menu_description
 */
class MenusLanguage extends CActiveRecord {
    /**
     * Returns the static model of the specified AR class.
     * @param string $className active record class name.
     * @return MenusLanguage the static model class
     */
    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

    /**
     * @return string the associated database table name
     */
    public function tableName() {
        return 'hoiit_module_menus_languages';
    }

    /**
     * @return array validation rules for model attributes.
     */
    public function rules() {
        // NOTE: you should only define rules for those attributes that
        // will receive user inputs.
        return array(
            array('menu_id, language_id, menu_name, menu_url', 'required'),
            array('menu_id', 'numerical', 'integerOnly' => true),
            array('language_id', 'length', 'max' => 2),
            array('menu_name', 'length', 'max' => 100),
            array('menu_url, menu_description', 'length', 'max' => 255),
            // The following rule is used by search().
            // Please remove those attributes that should not be searched.
            array('menu_id, language_id, menu_name, menu_url, menu_description', 'safe', 'on' => 'search'),
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
            'menu_id' => 'Menu',
            'language_id' => 'Language',
            'menu_name' => 'Menu Name',
            'menu_url' => 'Menu Url',
            'menu_description' => 'Menu Description',
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

        $criteria->compare('menu_id', $this->menu_id);
        $criteria->compare('language_id', $this->language_id, true);
        $criteria->compare('menu_name', $this->menu_name, true);
        $criteria->compare('menu_url', $this->menu_url, true);
        $criteria->compare('menu_description', $this->menu_description, true);

        return new CActiveDataProvider($this, array(
            'criteria' => $criteria,
        ));
    }

    //Back end - add
    public function saveRecord($id, $model) {
        $url = Urls::model()->getPatternByType($model['menu_url_content_page']);
        foreach (Yii::app()->controller->listLanguage as $key => $value) {
            if ($model['menu_type'] == 1) {
                $this->executeRecord($id, $key, $model['menu_name' . $key], isset($url[$key]) ? $url[$key] : null, $model['menu_description' . $key]);
            } else {
                $this->executeRecord($id, $key, $model['menu_name' . $key], $model['menu_url' . $key], $model['menu_description' . $key]);
            }

        }
    }

    //Back end - save
    public function executeRecord($id, $lang, $menu_name, $menu_url, $menu_description) {
        $purifier = new CHtmlPurifier();
        $menu_name = $purifier->purify(trim($menu_name));
        $menu_url = $purifier->purify(trim($menu_url));
        $menu_description = $purifier->purify(trim($menu_description));

        $command = Yii::app()->db->createCommand('INSERT INTO ' . $this->tableName() . ' (menu_id, language_id, menu_name, menu_url, menu_description) VALUES (:menu_id, :language_id, :menu_name, :menu_url, :menu_description)');
        if (Yii::app()->controller->action->id == 'edit') {
            $command = Yii::app()->db->createCommand('UPDATE ' . $this->tableName() . ' SET menu_name=:menu_name, menu_url=:menu_url, menu_description=:menu_description WHERE menu_id=:menu_id AND language_id=:language_id');
        }

        $command->bindParam(":menu_id", $id, PDO::PARAM_INT);
        $command->bindParam(":language_id", $lang, PDO::PARAM_STR);
        $command->bindParam(":menu_name", $menu_name, PDO::PARAM_STR);
        $command->bindParam(":menu_url", $menu_url, PDO::PARAM_STR);
        $command->bindParam(":menu_description", $menu_description, PDO::PARAM_STR);
        $command->execute();
    }

    //Back end - Get record to Edit
    public function loadEdit($id) {
        $command = Yii::app()->db->createCommand('SELECT language_id, menu_name, menu_url, menu_description FROM ' . $this->tableName() . ' WHERE menu_id=:id');
        $command->bindParam(":id", $id, PDO::PARAM_INT);
        return $command->queryAll();
    }

    //Back end - delete
    public function deleteRecord($id) {
        $command = Yii::app()->db->createCommand('DELETE FROM ' . $this->tableName() . ' WHERE menu_id=:id');
        $command->bindParam(":id", $id, PDO::PARAM_INT);
        $command->execute();
    }
}