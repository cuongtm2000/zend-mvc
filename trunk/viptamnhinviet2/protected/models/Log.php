<?php

/**
 * This is the model class for table "dos_module_log".
 *
 * The followings are the available columns in table 'dos_module_log':
 * @property integer $record_id
 * @property string $log_type
 * @property string $detail
 * @property string $time
 * @property string $sender
 * @property string $receiver
 * @property double $value
 */
class Log extends CActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return Log the static model class
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
		return 'dos_module_log';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('detail, time, sender, receiver, value', 'required'),
			array('value', 'numerical'),
			array('log_type, sender, receiver', 'length', 'max'=>45),
			array('detail', 'length', 'max'=>320),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('record_id, log_type, detail, time, sender, receiver, value', 'safe', 'on'=>'search'),
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
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'record_id' => 'Record',
			'log_type' => 'Log Type',
			'detail' => 'Detail',
			'time' => 'Time',
			'sender' => 'Sender',
			'receiver' => 'Receiver',
			'value' => 'Value',
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
		$criteria->compare('log_type',$this->log_type,true);
		$criteria->compare('detail',$this->detail,true);
		$criteria->compare('time',$this->time,true);
		$criteria->compare('sender',$this->sender,true);
		$criteria->compare('receiver',$this->receiver,true);
		$criteria->compare('value',$this->value);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
}