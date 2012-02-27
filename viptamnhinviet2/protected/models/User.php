<?php

/**
 * This is the model class for table "dos_module_usernames".
 *
 * The followings are the available columns in table 'dos_module_usernames':
 * @property string $username
 * @property string $password
 * @property string $create_date
 * @property string $full_name
 * @property string $email
 * @property string $birthday
 * @property string $address
 * @property string $cmnd
 * @property string $phone
 * @property string $bank_number
 * @property string $bank_name
 * @property string $user_gioithieu
 * @property string $balance
 * @property string $user_group
 * @property integer $level
 * @property integer $enable
 *
 * The followings are the available model relations:
 * @property Products[] $products
 * @property Tables[] $tables
 */
class User extends CActiveRecord {

    public $password2;
    public $debug;

    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

    public function tableName() {
        return 'dos_module_usernames';
    }

    public function rules() {
        return array(
            array('username, password, password2, user_gioithieu,birthday, cmnd,email', 'required'),
 /**/       array('username', 'unique'/* ,'message'=>"{attribute} has already been taken." */, 'on' => 'create'),
            array('username, password, email, user_gioithieu', 'length', 'max' => 45),
            array('full_name', 'length', 'max' => 150),
            array('address', 'length', 'max' => 200),
            array('cmnd', 'length', 'min' => 9, 'max' => 10,),
            array('phone', 'length', 'max' => 15),
            array('bank_number', 'length', 'max' => 20),
            array('bank_name', 'length', 'max' => 100),
            array('birthday', 'date', 'format' => 'dd/MM/yyyy', 'on' => 'create'),
            // The following rule is used by search().
            // Please remove those attributes that should not be searched.
            array('username, create_date, full_name, email, birthday, address, cmnd, phone, bank_number, bank_name, user_gioithieu, balance, level, enable', 'safe', 'on' => 'search'),
            array('user_gioithieu', 'checkIntroduceUser', 'on' => 'create'),
            array('password2', 'compare', 'compareAttribute' => 'password', 'message' => "{attribute} is not match", 'on' => 'create'),
            array('password', 'length', 'min' => '6', 'message' => "{attribute} quá ngắn (tối thiểu là {min} kí tự)."),
            array('email', 'email'/* ,'message' =>'{attribute} không hợp lệ' */, 'on' => 'create'),
        );
    }

//    public function checkExistsUsernameInput($attribute) {
//        if (User::model()->findByPk($this->username)) {
//            $this->addError($attribute, '<strong>' . $this->username . '</strong> ' . $attribute . ' already exists please choose another user');
//        }
//    }

    public function checkIntroduceUser($attribute) {
        if (!User::model()->findByPk($this->user_gioithieu)) {
            $this->addError($attribute, '<strong>' . $this->user_gioithieu . '</strong>  is not exists please choose another user');
        } else {
            $child = $this->getChildOfUser($this->user_gioithieu);
            $this->debug[] = $this->user_gioithieu;
            $this->debug[] = $child;
            if (count($child) > 1)
                $this->addError($attribute, '<strong>' . $this->user_gioithieu . '</strong>  is invalid');
        }
    }

    public function getChildOfUser($user, $enable = 0) {
        $str = ($enable == 1) ? ' and enable=:enable' : '';

        $command = Yii::app()->db
                ->createCommand('SELECT username FROM ' . $this->tableName() .
                ' WHERE user_gioithieu=:user_gioithieu' . $str);
        $command->bindParam(':user_gioithieu', $user, PDO::PARAM_STR);
        if ($enable)
            $command->bindParam(':enable', $enable, PDO::PARAM_INT);

        $result = $command->queryAll();

        $r = array();
        foreach ($result as $value)
            $r[] = $value['username'];
        return $r;
    }

    public function createTree($user) {
        $tree['value'] = $user;
        $children = $this->getChildOfUser($user,1);
        $tree['c0'] = 0;
        $tree['c1'] = 0;
        $i = 0;

        foreach ($children as $child) {
            $tree[$i] = $this->createTree($child);
            $tree['c' . $i] += $tree[$i]['c0'] + $tree[$i]['c1'] + 1;
            $i++;
        }
        return $tree;
    }

    public function relations() {
        // NOTE: you may need to adjust the relation name and the related
        // class name for the relations automatically generated below.
        return array(
            'products' => array(self::HAS_MANY, 'Products', 'dos_module_usernames_username'),
            'tables' => array(self::HAS_MANY, 'Tables', 'dos_module_usernames_username'),
        );
    }

    /**
     * @return array customized attribute labels (name=>label)
     */
    public function attributeLabels() {
        return array(
            'username' => 'Username',
            'password' => 'Password',
            'password2' => 'Confirm Password',
            'create_date' => 'Create Date',
            'full_name' => 'Full Name',
            'email' => 'Email',
            'birthday' => 'Birthday',
            'address' => 'Address',
            'cmnd' => 'ID No.',
            'phone' => 'Phone',
            'bank_number' => 'Bank Number',
            'bank_name' => 'Bank Name',
            'user_gioithieu' => 'Introduce User',
        );
    }

    /**
     * Retrieves a list of models based on the current search/filter conditions.
     * @return CActiveDataProvider the data provider that can return the models based on the search/filter conditions.
     */
    public function search() {
        $criteria = new CDbCriteria;

        $criteria->compare('username', $this->username, true);
        $criteria->compare('create_date', $this->create_date, true);
        $criteria->compare('full_name', $this->full_name, true);
        $criteria->compare('email', $this->email, true);
        $criteria->compare('birthday', $this->birthday, true);
        $criteria->compare('address', $this->address, true);
        $criteria->compare('cmnd', $this->cmnd, true);
        $criteria->compare('phone', $this->phone, true);
        $criteria->compare('bank_number', $this->bank_number, true);
        $criteria->compare('bank_name', $this->bank_name, true);
        $criteria->compare('user_gioithieu', $this->user_gioithieu, true);
        $criteria->compare('balance', $this->balance, true);
        $criteria->compare('level', $this->level);

        return new CActiveDataProvider($this, array(
                    'criteria' => $criteria,
                ));
    }

    public function beforeSave() {
        $purifier = new CHtmlPurifier();
        $this->username = $purifier->purify($this->username);
        $this->password = $purifier->purify(md5($this->password));
        $this->email = $purifier->purify($this->email);
        $this->user_group = 'user';

        $timestam_bd = CDateTimeParser::parse($this->birthday, 'dd/MM/yyyy');
        $this->birthday = CTimestamp::formatDate('Y-m-d', $timestam_bd);

        if ($this->isNewRecord) {
            
        }

        return parent::beforeSave();
    }

}