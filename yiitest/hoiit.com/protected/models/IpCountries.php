<?php

/**
 * This is the model class for table "hoiit_ip_countries".
 *
 * The followings are the available columns in table 'hoiit_ip_countries':
 * @property string $ip_begin
 * @property string $ip_end
 * @property string $code
 * @property string $hoiit_nationals_national_id
 *
 * The followings are the available model relations:
 * @property HoiitNationals $hoiitNationalsNational
 */
class IpCountries extends CActiveRecord {
    /**
     * Returns the static model of the specified AR class.
     * @param string $className active record class name.
     * @return IpCountries the static model class
     */
    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

    /**
     * @return string the associated database table name
     */
    public function tableName() {
        return 'hoiit_ip_countries';
    }

    /**
     * @return array validation rules for model attributes.
     */
    public function rules() {
        // NOTE: you should only define rules for those attributes that
        // will receive user inputs.
        return array(
            array('ip_begin, ip_end, hoiit_nationals_national_id', 'required'),
            array('ip_begin, ip_end', 'length', 'max' => 10),
            array('code', 'length', 'max' => 2),
            array('hoiit_nationals_national_id', 'length', 'max' => 3),
            // The following rule is used by search().
            // Please remove those attributes that should not be searched.
            array('ip_begin, ip_end, code, hoiit_nationals_national_id', 'safe', 'on' => 'search'),
        );
    }

    /**
     * @return array relational rules.
     */
    public function relations() {
        // NOTE: you may need to adjust the relation name and the related
        // class name for the relations automatically generated below.
        return array(
            'hoiitNationalsNational' => array(self::BELONGS_TO, 'HoiitNationals', 'hoiit_nationals_national_id'),
        );
    }

    /**
     * @return array customized attribute labels (name=>label)
     */
    public function attributeLabels() {
        return array(
            'ip_begin' => 'Ip Begin',
            'ip_end' => 'Ip End',
            'code' => 'Code',
            'hoiit_nationals_national_id' => 'Hoiit Nationals National',
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

        $criteria->compare('ip_begin', $this->ip_begin, true);
        $criteria->compare('ip_end', $this->ip_end, true);
        $criteria->compare('code', $this->code, true);
        $criteria->compare('hoiit_nationals_national_id', $this->hoiit_nationals_national_id, true);

        return new CActiveDataProvider($this, array(
            'criteria' => $criteria,
        ));
    }

    public function checkIP($ip){
        $ips = explode('.', $ip);
		$ipnum= $ips[3] + $ips[2] * 256 + $ips[1] * 65536 + $ips[0]*16777216;
        //$ipnum=ip2long($ip);
		$command = Yii::app()->db->createCommand('SELECT * FROM ' . $this->tableName() . ' WHERE :ip>= ip_begin and :ip <= ip_end');
        $command->bindParam(":ip", $ipnum, PDO::PARAM_STR);//	var_dump(  $command);
        return $command->queryScalar();
    }
}