<?php

/**
 * This is the model class for table "{{module_lands_users}}".
 *
 * The followings are the available columns in table '{{module_lands_users}}':
 * @property string $username
 * @property string $password
 * @property string $fullname
 * @property string $email
 * @property integer $phone
 * @property integer $province
 * @property integer $address
 * @property string $sexual
 * @property string $date_created
 *
 * The followings are the available model relations:
 * @property ModuleLands[] $moduleLands
 */
class LandsUsers extends CActiveRecord {

    public $password2;

    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

    public function tableName() {
        return '{{module_lands_users}}';
    }

    public function rules() {
        return array(
            array('username', 'unique'),
            array('username, password,password2, fullname, email, phone,address ,province', 'required', 'on' => 'register'),
            array('phone, province', 'numerical', 'integerOnly' => true),
            array('password', 'compare', 'compareAttribute' => 'password2', 'message' => "{attribute} không trùng nhau.",'on' => 'register'),
            array('username, fullname, email', 'length', 'max' => 45),
            array('password', 'length', 'max' => 32),
            array('username,password', 'length', 'min' => '6', 'message' => "{attribute} quá ngắn (tối thiểu là  {min} ký tự)."),
            array('sexual', 'length', 'max' => 10),
            // The following rule is used by search().
            // Please remove those attributes that should not be searched.
            array('username, password, fullname, email, phone, province, address, sexual, date_created', 'safe', 'on' => 'search'),
        );
    }

    /**
     * @return array relational rules.
     */
    public function relations() {
        return array(
            'moduleLands' => array(self::HAS_MANY, 'ModuleLands', 'username'),
            'province0' => array(self::BELONGS_TO, 'Provinces', 'province'),
        );
    }

    public function attributeLabels() {
        return array(
            'username' => 'Tên đăng nhập',
            'password' => 'Mật khẩu',
            'password2' => 'Xác nhận mật khẩu',
            'fullname' => 'Họ và tên',
            'email' => 'Email',
            'phone' => 'Số điện thoại',
            'province' => 'Tỉnh thành',
            'address' => 'Địa chỉ',
            'sexual' => 'Giới tính',
            'date_created' => 'Ngày đăng ký',
            
        );
    }

    public function beforeSave() {
        $purifier = new CHtmlPurifier();

        if ($this->isNewRecord) {
            $this->username = $purifier->purify(strtolower($this->username));
            $this->email = $purifier->purify(strtolower($this->email));
            $this->fullname = $purifier->purify(strtolower($this->fullname));
            $this->phone = $purifier->purify(strtolower($this->phone));
            $this->address = $purifier->purify(strtolower($this->address));
            $this->password = md5(md5($this->password));
        } else {
            //$this->username = Yii::app()->user->name;            
        }


        return parent::beforeSave();
    }

    public function listUsernames() {
        $criteria = new CDbCriteria();
        $criteria->order = 'date_created ASC';
        $criteria->condition = 'enable =1';
        $count = $this->model()->count($criteria);

        // elements per page
        $pages = new CPagination($count);
        $pages->pageSize = 10;
        $pages->applyLimit($criteria);

        return array('models' => $this->model()->findAll($criteria), 'pages' => $pages);
    }

}