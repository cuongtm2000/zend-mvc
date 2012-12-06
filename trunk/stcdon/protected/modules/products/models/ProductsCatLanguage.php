<?php

/**
 * This is the model class for table "hoiit_module_products_cat_languages".
 *
 * The followings are the available columns in table 'hoiit_module_products_cat_languages':
 * @property integer $cat_id
 * @property string $language_id
 * @property string $cat_title
 * @property string $preview
 * @property string $tag
 * @property string $description
 */
class ProductsCatLanguage extends CActiveRecord {
    /**
     * Returns the static model of the specified AR class.
     * @param string $className active record class name.
     * @return ProductsCatLanguage the static model class
     */
    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

    /**
     * @return string the associated database table name
     */
    public function tableName() {
        return 'hoiit_module_products_cat_languages';
    }

    /**
     * @return array validation rules for model attributes.
     */
    public function rules() {
        // NOTE: you should only define rules for those attributes that
        // will receive user inputs.
        return array(
            array('cat_id, language_id, cat_title, tag', 'required'),
            array('cat_id', 'numerical', 'integerOnly' => true),
            array('language_id', 'length', 'max' => 2),
            array('cat_title, tag', 'length', 'max' => 100),
            array('description', 'length', 'max' => 250),
            array('preview', 'safe'),
            // The following rule is used by search().
            // Please remove those attributes that should not be searched.
            array('cat_id, language_id, cat_title, preview, tag, description', 'safe', 'on' => 'search'),
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
            'cat_id' => 'Cat',
            'language_id' => 'Language',
            'cat_title' => 'Cat Title',
            'preview' => 'Preview',
            'tag' => 'Tag',
            'description' => 'Description',
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

        $criteria->compare('cat_id', $this->cat_id);
        $criteria->compare('language_id', $this->language_id, true);
        $criteria->compare('cat_title', $this->cat_title, true);
        $criteria->compare('preview', $this->preview, true);
        $criteria->compare('tag', $this->tag, true);
        $criteria->compare('description', $this->description, true);

        return new CActiveDataProvider($this, array(
            'criteria' => $criteria,
        ));
    }


    public function findCatByTag($tag) {
        $lang = Yii::app()->language;
        $command = Yii::app()->db->createCommand('SELECT cat_id, cat_title, description FROM ' . $this->tableName() . ' WHERE language_id=:lang AND tag=:tag');
        $command->bindParam(":tag", $tag, PDO::PARAM_STR);
        $command->bindParam(":lang", $lang, PDO::PARAM_STR);
        return $command->queryRow();
    }

    //Back end - add
    public function saveRecord($id, $model) {
        foreach (Yii::app()->controller->listLanguage as $key) {
            $this->executeRecord($id, $key, $model['cat_title' . $key], $model['preview' . $key], $model['tag' . $key], $model['description' . $key]);
        }
    }

    //Back end - save
    private function executeRecord($id, $lang, $cat_title, $preview, $tag, $description) {
        $purifier = new CHtmlPurifier();
        $cat_title = $purifier->purify(trim($cat_title));
        $preview = $purifier->purify(trim($preview));
        $tag = $purifier->purify(trim($tag));
        $description = $purifier->purify(trim($description));

        $command = Yii::app()->db->createCommand('INSERT INTO ' . $this->tableName() . ' (cat_id, language_id, cat_title, preview, tag, description) VALUES (:cat_id, :language_id, :cat_title, :preview, :tag, :description)');
        if (Yii::app()->controller->action->id == 'editcat') {
            $command = Yii::app()->db->createCommand('UPDATE ' . $this->tableName() . ' SET cat_title=:cat_title, preview=:preview, tag=:tag, description=:description WHERE cat_id=:cat_id AND language_id=:language_id');
        }

        $command->bindParam(":cat_id", $id, PDO::PARAM_INT);
        $command->bindParam(":language_id", $lang, PDO::PARAM_STR);
        $command->bindParam(":cat_title", $cat_title, PDO::PARAM_STR);
        $command->bindParam(":preview", $preview, PDO::PARAM_STR);
        $command->bindParam(":tag", $tag, PDO::PARAM_STR);
        $command->bindParam(":description", $description, PDO::PARAM_STR);
        $command->execute();
    }

    //Back end - Get record to Edit
    public function loadEdit($id) {
        $command = Yii::app()->db->createCommand('SELECT language_id, cat_title, preview, tag, description FROM ' . $this->tableName() . ' WHERE cat_id=:id');
        $command->bindParam(":id", $id, PDO::PARAM_INT);
        return $command->queryAll();
    }

    //Back end - get cat_title
    public function getInfoCat($id, $lang) {
        $command = Yii::app()->db->createCommand('SELECT cat_title FROM ' . $this->tableName() . ' WHERE cat_id=:id AND language_id=:lang');
        $command->bindParam(":id", $id, PDO::PARAM_INT);
        $command->bindParam(":lang", $lang, PDO::PARAM_STR);
        return $command->queryScalar();
    }

    //Back end - delete
    public function deleteRecord($id) {
        $command = Yii::app()->db->createCommand('DELETE FROM ' . $this->tableName() . ' WHERE cat_id=:id');
        $command->bindParam(":id", $id, PDO::PARAM_INT);
        $command->execute();
    }
}