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
        //    array('username, user_gioithieu,birthday, cmnd,email', 'required', on=>'update'),
            /**/
            array('username', 'unique' /* ,'message'=>"{attribute} has already been taken." */, 'on' => 'create'),
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
            array('username, create_date, full_name, bank_number, bank_name, user_gioithieu', 'safe', 'on' => 'active'),
            array('user_gioithieu', 'checkIntroduceUser', 'on' => 'create'),
            array('password2', 'compare', 'compareAttribute' => 'password', 'message' => "{attribute} is not match", 'on' => 'create'),
            array('password', 'length', 'min' => '6', 'message' => "{attribute} quá ngắn (tối thiểu là {min} kí tự)."),
            array('email', 'email' /* ,'message' =>'{attribute} không hợp lệ' */, 'on' => 'create'),
        );
    }

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
        $children = $this->getChildOfUser($user, 1);
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
        $criteria->compare('enable',array(1));

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

    public function activeItem($data) {

        $flag = isset($data['factive']) ? $data['factive'] : 'disable';
        $ids = isset($data['ids']) ? $data['ids'] : '';
        $record_id = array();
        if (!empty($ids)) {
            if (!is_array($ids)) {
                $record_id[0] = $ids;
            } else {
                $record_id = $ids;
            }
            unset($ids);
        }
        foreach ($record_id as $value) {
            $user = User::model()->findByPk($value);
            if ($user['enable'])
                continue;

            if ($flag) {/////show or hidden
                User::model()->updateByPk($value, array('enable' => 1));
                $table = new Tables();
                $table->addItem($value);

                $log = new Log();
                $log->addItem('Thành viên ' . $value . ' mà bạn giới thiệu đã được kích hoạt', '', $user['user_gioithieu'], 0, 'gioithieu');


                $this->addThanhtichHH($user['user_gioithieu']);


                
                
                
            } else {    //delete
                User::model()->deleteByPk($value);
            }
        }
    }

    
    
    /*
     * List TV đã thoát bàn
     *      tức TV có level > 0 và có ít nhất
     *      1 trong 2 nhánh con trong bàn còn khuyết
     */
    
    public function listTVthoatban(){
        return Tables::model()->findAll('left_child = "" or right_child = ""');
    }
    
    /*
     * 
     */
    public function listTVdatchuan() {
        return Tables::model()->findAll('left_child !="" and right_child != ""');
    }


    /*
     *  Thêm thành tích hoa hồng
     * cho người giới thiệu
     */
    private function addThanhtichHH($user) {
        $tree = $this->createTree($user);
        $min_child=min($tree['c0'] , $tree['c1'] );
        switch ($min_child) {
            case 15:    $money=5000;    break;
            case 30:    $money=7000;    break;
            case 60:    $money=15000;   break;
            case 120:   $money=20000;   break;
            case 300:   $money=40000;   break;
            case 600:   $money=60000;   break;
            case 1000:  $money=80000;   break;
            case 2000:  $money=100000;  break;
            case 5000:  $money=200000;  break;
            case 10000: $money=500000;  break;
            default:    $money=0;       break;
        }
        $u=  User::model()->findByPk($user);
        if($money >0){
            User::model()->updateByPk($user,  
                    array('balance' => $u['balance']+$money));
            $log=new Log();
            $log->addItem("Hoa hồng thành tích do đạt được số con ở mỗi nhánh là ".$min_child, '', $user, $money, 'thanhtich');
	}	
        if($u['user_gioithieu']  != 'grouplaptrinh')
            $this->addThanhtichHH ($u['user_gioithieu']);
    }

    /*
     * Convert từ TREE sang Array
     */

    private function getTreeItem($tree) {
        $items[] = $tree['value'];
        if (isset($tree[0]))
            $items = array_merge($items, $this->getTreeItem($tree[0]));
        if (isset($tree[1]))
            $items = array_merge($items, $this->getTreeItem($tree[1]));
        return $items;
    }

    public function getUnActive() {
        return User::model()->findAll(
                        array(
                            'order' => 'create_date',
                            'condition' => 'enable=0',
                        //'params' => array(':x' => $x)
                        )
        );
    }

    public function isActived($username) {
        if (User::model()->findByPk($username, 'enable=1'))
            return TRUE;
        return FALSE;
    }
  
    

}