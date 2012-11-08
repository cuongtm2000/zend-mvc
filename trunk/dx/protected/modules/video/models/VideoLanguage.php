<?php

/**
 * This is the model class for table "hoiit_module_video_languages".
 *
 * The followings are the available columns in table 'hoiit_module_video_languages':
 * @property integer $record_id
 * @property string $language_id
 * @property string $title
 * @property string $preview
 * @property string $content
 * @property string $tag
 * @property string $description
 * @property integer $hit
 * @property string $extra_field1
 * @property string $extra_field2
 */
class VideoLanguage extends CActiveRecord {
    /**
     * Returns the static model of the specified AR class.
     * @param string $className active record class name.
     * @return VideoLanguage the static model class
     */
    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

    /**
     * @return string the associated database table name
     */
    public function tableName() {
        return 'hoiit_module_video_languages';
    }

    /**
     * @return array validation rules for model attributes.
     */
    public function rules() {
        // NOTE: you should only define rules for those attributes that
        // will receive user inputs.
        return array(
            array('record_id, language_id, title, content, tag, hit', 'required'),
            array('record_id, hit', 'numerical', 'integerOnly' => true),
            array('language_id', 'length', 'max' => 2),
            array('title, tag, extra_field1, extra_field2', 'length', 'max' => 100),
            array('description', 'length', 'max' => 250),
            array('preview', 'safe'),
            // The following rule is used by search().
            // Please remove those attributes that should not be searched.
            array('record_id, language_id, title, preview, content, tag, description, hit, extra_field1, extra_field2', 'safe', 'on' => 'search'),
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
            'record_id' => 'Record',
            'language_id' => 'Language',
            'title' => 'Title',
            'preview' => 'Preview',
            'content' => 'Content',
            'tag' => 'Tag',
            'description' => 'Description',
            'hit' => 'Hit',
            'extra_field1' => 'Extra Field1',
            'extra_field2' => 'Extra Field2',
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

        $criteria->compare('record_id', $this->record_id);
        $criteria->compare('language_id', $this->language_id, true);
        $criteria->compare('title', $this->title, true);
        $criteria->compare('preview', $this->preview, true);
        $criteria->compare('content', $this->content, true);
        $criteria->compare('tag', $this->tag, true);
        $criteria->compare('description', $this->description, true);
        $criteria->compare('hit', $this->hit);
        $criteria->compare('extra_field1', $this->extra_field1, true);
        $criteria->compare('extra_field2', $this->extra_field2, true);

        return new CActiveDataProvider($this, array(
            'criteria' => $criteria,
        ));
    }

    public function getIDByTag($tag) {
        $lang = Yii::app()->language;
        $command = Yii::app()->db->createCommand('SELECT record_id FROM ' . $this->tableName() . ' WHERE language_id=:lang AND tag=:tag');
        $command->bindParam(":tag", $tag, PDO::PARAM_STR);
        $command->bindParam(":lang", $lang, PDO::PARAM_STR);
        return $command->queryScalar();
    }

    //Back end - delete
    public function deleteRecord($id) {
        $command = Yii::app()->db->createCommand('DELETE FROM ' . $this->tableName() . ' WHERE record_id=:id');
        $command->bindParam(":id", $id, PDO::PARAM_INT);
        $command->execute();
    }

    //Back end - add
    public function saveRecord($id, $model) {
        foreach (Yii::app()->controller->listLanguage as $key) {
            $this->executeRecord($id, $key, $model['title' . $key], $model['extra_field1' . $key]);
        }
    }

    //Back end - save
    private function executeRecord($id, $lang, $title, $extra_field1) {
        $purifier = new CHtmlPurifier();
        $title = $purifier->purify(trim($title));
		$extra_field1 = $purifier->purify(trim($extra_field1));

        $command = Yii::app()->db->createCommand('INSERT INTO ' . $this->tableName() . ' (record_id, language_id, title, extra_field1 ) VALUES (:record_id, :language_id, :title, :extra_field1)');
        if (Yii::app()->controller->action->id == 'edit') {
            $command = Yii::app()->db->createCommand('UPDATE ' . $this->tableName() . ' SET title=:title, extra_field1=:extra_field1 WHERE record_id=:record_id AND language_id=:language_id');
        }

        $command->bindParam(":record_id", $id, PDO::PARAM_INT);
        $command->bindParam(":language_id", $lang, PDO::PARAM_STR);
        $command->bindParam(":title", $title, PDO::PARAM_STR);
		$command->bindParam(":extra_field1", $extra_field1, PDO::PARAM_STR);
        $command->execute();
    }

    //Back end - Get record to Edit
    public function loadEdit($id) {
        $command = Yii::app()->db->createCommand('SELECT language_id, title, extra_field1 FROM ' . $this->tableName() . ' WHERE record_id=:id');
        $command->bindParam(":id", $id, PDO::PARAM_INT);
        return $command->queryAll();
    }
}