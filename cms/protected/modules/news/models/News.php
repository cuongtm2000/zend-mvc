<?php

/**
 * This is the model class for table "hoiit_module_news_cat_languages".
 *
 * The followings are the available columns in table 'hoiit_module_news_cat_languages':
 * @property integer $cat_id
 * @property string $language_id
 * @property string $cat_title
 * @property string $preview
 * @property string $tag
 * @property string $description
 */
class News extends CActiveRecord {
    /**
     * Returns the static model of the specified AR class.
     * @param string $className active record class name.
     * @return News the static model class
     */
    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

    /**
     * @return string the associated database table name
     */
    public function tableName() {
        return 'hoiit_module_news_cat_languages';
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
            'NewsCat' => array(self::BELONGS_TO, 'NewsCat', 'hoiit_module_item_cat_cat_id'),
            'Language' => array(self::MANY_MANY, 'Language', 'hoiit_module_news_languages(record_id, language_id)'),
            'NewsLanguage' => array(self::HAS_MANY, 'NewsLanguage', 'record_id', 'index' => 'language_id'),
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
}