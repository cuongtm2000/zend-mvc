<?php

/**
 * This is the model class for table "dos_module_products".
 *
 * The followings are the available columns in table 'dos_module_products':
 * @property integer $record_id
 * @property string $title
 * @property string $titleen
 * @property string $postdate
 * @property string $pic_thumb
 * @property string $pic_full
 * @property string $pic_desc
 * @property string $preview
 * @property string $previewen
 * @property string $detail
 * @property string $detailen
 * @property string $tag
 * @property string $description
 * @property integer $hits
 * @property integer $record_order
 * @property integer $unit
 * @property integer $hot
 * @property integer $specials
 * @property string $extra_field1
 * @property string $extra_field2
 * @property string $extra_field3
 * @property string $extra_field4
 * @property integer $enable
 * @property integer $dos_module_item_cat_cat_id
 * @property string $dos_module_usernames_username
 *
 * The followings are the available model relations:
 * @property ProductsCat $dosModuleItemCatCat
 * @property Usernames $dosModuleUsernamesUsername
 */
class Product extends CActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return Product the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}

	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'dos_module_products';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('title, postdate, detail, tag, description, dos_module_item_cat_cat_id, dos_module_usernames_username', 'required'),
			array('hits, record_order, unit, hot, specials, enable, dos_module_item_cat_cat_id', 'numerical', 'integerOnly'=>true),
			array('title, titleen, pic_thumb, pic_full, tag, extra_field1, extra_field2, extra_field3, extra_field4', 'length', 'max'=>100),
			array('pic_desc', 'length', 'max'=>200),
			array('description', 'length', 'max'=>250),
			array('dos_module_usernames_username', 'length', 'max'=>45),
			array('preview, previewen, detailen', 'safe'),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('record_id, title, titleen, postdate, pic_thumb, pic_full, pic_desc, preview, previewen, detail, detailen, tag, description, hits, record_order, unit, hot, specials, extra_field1, extra_field2, extra_field3, extra_field4, enable, dos_module_item_cat_cat_id, dos_module_usernames_username', 'safe', 'on'=>'search'),
		);
	}

	/**
	 * @return array relational rules.
	 */
	public function relations()
	{
		// NOTE: you may need to adjust the relation name and the related
		// class name for the relations automatically generated below.
		return array(
			'dosModuleItemCatCat' => array(self::BELONGS_TO, 'ProductsCat', 'dos_module_item_cat_cat_id'),
			'dosModuleUsernamesUsername' => array(self::BELONGS_TO, 'Usernames', 'dos_module_usernames_username'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'record_id' => 'Record',
			'title' => 'Title',
			'titleen' => 'Titleen',
			'postdate' => 'Postdate',
			'pic_thumb' => 'Pic Thumb',
			'pic_full' => 'Pic Full',
			'pic_desc' => 'Pic Desc',
			'preview' => 'Preview',
			'previewen' => 'Previewen',
			'detail' => 'Detail',
			'detailen' => 'Detailen',
			'tag' => 'Tag',
			'description' => 'Description',
			'hits' => 'Hits',
			'record_order' => 'Record Order',
			'unit' => 'Unit',
			'hot' => 'Hot',
			'specials' => 'Specials',
			'extra_field1' => 'Extra Field1',
			'extra_field2' => 'Extra Field2',
			'extra_field3' => 'Extra Field3',
			'extra_field4' => 'Extra Field4',
			'enable' => 'Enable',
			'dos_module_item_cat_cat_id' => 'Dos Module Item Cat Cat',
			'dos_module_usernames_username' => 'Dos Module Usernames Username',
		);
	}

	/**
	 * Retrieves a list of models based on the current search/filter conditions.
	 * @return CActiveDataProvider the data provider that can return the models based on the search/filter conditions.
	 */
	public function search()
	{
		// Warning: Please modify the following code to remove attributes that
		// should not be searched.

		$criteria=new CDbCriteria;

		$criteria->compare('record_id',$this->record_id);
		$criteria->compare('title',$this->title,true);
		$criteria->compare('titleen',$this->titleen,true);
		$criteria->compare('postdate',$this->postdate,true);
		$criteria->compare('pic_thumb',$this->pic_thumb,true);
		$criteria->compare('pic_full',$this->pic_full,true);
		$criteria->compare('pic_desc',$this->pic_desc,true);
		$criteria->compare('preview',$this->preview,true);
		$criteria->compare('previewen',$this->previewen,true);
		$criteria->compare('detail',$this->detail,true);
		$criteria->compare('detailen',$this->detailen,true);
		$criteria->compare('tag',$this->tag,true);
		$criteria->compare('description',$this->description,true);
		$criteria->compare('hits',$this->hits);
		$criteria->compare('record_order',$this->record_order);
		$criteria->compare('unit',$this->unit);
		$criteria->compare('hot',$this->hot);
		$criteria->compare('specials',$this->specials);
		$criteria->compare('extra_field1',$this->extra_field1,true);
		$criteria->compare('extra_field2',$this->extra_field2,true);
		$criteria->compare('extra_field3',$this->extra_field3,true);
		$criteria->compare('extra_field4',$this->extra_field4,true);
		$criteria->compare('enable',$this->enable);
		$criteria->compare('dos_module_item_cat_cat_id',$this->dos_module_item_cat_cat_id);
		$criteria->compare('dos_module_usernames_username',$this->dos_module_usernames_username,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
}