<?php

/**
 * This is the model class for table "hoiit_web_templates".
 *
 * The followings are the available columns in table 'hoiit_web_templates':
 * @property string $template_id
 * @property string $template_name
 * @property string $detail
 * @property integer $price
 * @property string $download
 * @property string $source
 * @property string $width
 * @property string $pic_thumb
 * @property string $pic_full
 * @property string $pic_desc
 * @property string $created
 * @property integer $enable
 * @property integer $hoiit_web_templates_cat_cat_id
 * @property string $hoiit_usernames_username
 *
 * The followings are the available model relations:
 * @property HoiitWebTemplatesCat $hoiitWebTemplatesCatCat
 * @property HoiitUsernames $hoiitUsernamesUsername
 */
class WebTemplates extends CActiveRecord {
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return WebTemplates the static model class
	 */
	public static function model($className = __CLASS__) {
		return parent::model($className);
	}

	/**
	 * @return string the associated database table name
	 */
	public function tableName() {
		return 'hoiit_web_templates';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules() {
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('template_id, template_name, price, width, pic_thumb, pic_full, created, hoiit_web_templates_cat_cat_id, hoiit_usernames_username', 'required'),
			array('price, enable, hoiit_web_templates_cat_cat_id', 'numerical', 'integerOnly' => true),
			array('template_id', 'length', 'max' => 6),
			array('template_name, download, width', 'length', 'max' => 45),
			array('source, pic_thumb, pic_full, pic_desc', 'length', 'max' => 100),
			array('hoiit_usernames_username', 'length', 'max' => 40),
			array('detail', 'safe'),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('template_id, template_name, detail, price, download, source, width, pic_thumb, pic_full, pic_desc, created, enable, hoiit_web_templates_cat_cat_id, hoiit_usernames_username', 'safe', 'on' => 'search'),
		);
	}

	/**
	 * @return array relational rules.
	 */
	public function relations() {
		// NOTE: you may need to adjust the relation name and the related
		// class name for the relations automatically generated below.
		return array(
			'WebTemplatesCat' => array(self::BELONGS_TO, 'WebTemplatesCat', 'hoiit_web_templates_cat_cat_id'),
			//'hoiitUsernamesUsername' => array(self::BELONGS_TO, 'HoiitUsernames', 'hoiit_usernames_username'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels() {
		return array(
			'template_id' => 'Template',
			'template_name' => 'Template Name',
			'detail' => 'Detail',
			'price' => 'Price',
			'download' => 'Download',
			'source' => 'Source',
			'width' => 'Width',
			'pic_thumb' => 'Pic Thumb',
			'pic_full' => 'Pic Full',
			'pic_desc' => 'Pic Desc',
			'created' => 'Created',
			'enable' => 'Enable',
			'hoiit_web_templates_cat_cat_id' => 'Hoiit Web Templates Cat Cat',
			'hoiit_usernames_username' => 'Hoiit Usernames Username',
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

		$criteria->compare('template_id', $this->template_id, true);
		$criteria->compare('template_name', $this->template_name, true);
		$criteria->compare('detail', $this->detail, true);
		$criteria->compare('price', $this->price);
		$criteria->compare('download', $this->download, true);
		$criteria->compare('source', $this->source, true);
		$criteria->compare('width', $this->width, true);
		$criteria->compare('pic_thumb', $this->pic_thumb, true);
		$criteria->compare('pic_full', $this->pic_full, true);
		$criteria->compare('pic_desc', $this->pic_desc, true);
		$criteria->compare('created', $this->created, true);
		$criteria->compare('enable', $this->enable);
		$criteria->compare('hoiit_web_templates_cat_cat_id', $this->hoiit_web_templates_cat_cat_id);
		$criteria->compare('hoiit_usernames_username', $this->hoiit_usernames_username, true);

		return new CActiveDataProvider($this, array(
			'criteria' => $criteria,
		));
	}
	//Back end - list item Index
	public function listRecordIndex() {
		$criteria = new CDbCriteria();
		$criteria->order = 'created DESC';
		$criteria->condition = 'enable=1';
		$count = WebTemplates::model()->count($criteria);

		// elements per page
		$pages = new CPagination($count);
		$pages->pageSize = 4;
		$pages->applyLimit($criteria);

		return array('models' => WebTemplates::model()->findAll($criteria), 'pages' => $pages);
	}
}