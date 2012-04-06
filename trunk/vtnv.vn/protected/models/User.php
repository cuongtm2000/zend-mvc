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
            if (count($child) > 1)
                $this->addError($attribute, '<strong>' . $this->user_gioithieu . '</strong>  is invalid');
        }
    }

    public function getChildOfUser($user, $enable = 0) {
        $str = ($enable == 1) ? ' and enable=:enable' : '';

        $command = Yii::app()->db
                ->createCommand('SELECT username FROM ' . $this->tableName() .
                ' WHERE user_gioithieu=:user_gioithieu' . $str . ' order by create_date asc');
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
        $tree['level'] = $this->getLevel($user);
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
            'tables' => array(self::HAS_ONE, 'Tables', 'dos_module_usernames_username'),
        );
    }

    /**
     * @return array customized attribute labels (name=>label)
     */
    public function attributeLabels() {
        return array(
            'username' => 'Tên đăng nhập',
            'password' => 'Mật khẩu',
            'password2' => 'Xác nhận mật khẩu',
            'create_date' => 'Ngày ĐK',
            'full_name' => 'Họ tên',
            'email' => 'Email',
            'birthday' => 'Ngày sinh',
            'address' => 'Địa chỉ',
            'cmnd' => 'Số CMND',
            'phone' => 'Số điện thoại',
            'bank_number' => 'Số TK Ngân hàng',
            'bank_name' => 'Tên Ngân hàng',
            'user_gioithieu' => 'Người giới thiệu',
        );
    }

    public function search() {
        $criteria = new CDbCriteria;

        $criteria->compare('username', $this->username, true);
        $criteria->addCondition('username != \'grouplaptrinh\'');
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
        $criteria->compare('enable', array(1));

        return new CActiveDataProvider($this, array(
                    'criteria' => $criteria,
                ));
    }

    public function beforeSave() {
        $purifier = new CHtmlPurifier();
        if ($this->isNewRecord) {
            $this->username = $purifier->purify($this->username);
            $this->password = $purifier->purify(md5($this->password));
            $this->email = $purifier->purify($this->email);
            $this->user_group = 'user';
            $timestam_bday = CDateTimeParser::parse($this->birthday, 'dd/MM/yyyy');
            $this->birthday = CTimestamp::formatDate('Y-m-d', $timestam_bday);
        }
        return parent::beforeSave();
    }

    /**
     * Function dành cho lấy User user_group = 'administrator'
     * @return mixed
     */
    public function getUserAdministrator() {
        $command = Yii::app()->db->createCommand('SELECT username FROM ' . $this->tableName() . ' WHERE user_group=\'administrator\'');
        return $command->queryScalar();
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
            if ($user['enable'] == 1)
                continue;

            if ($flag) {
                $table = new Tables();
                $log = new Log();

                User::model()->updateByPk($value, array('enable' => 1));
                $log->addItem('TV ' . $value . ' được kích hoạt. Người GT:' . $user['user_gioithieu'], '-', 'grouplaptrinh', 0, 'gioithieu');

                //* Tim TV dat chuan 'phia trên' co độ ưu tiên cao(priority min
                //để gắn vào và có cùng cấp
                $this->ganTV($user, $log);

                //update bàn người giới thiệu--OK
                $table->updateChild($user['user_gioithieu'], $value);

                //them Hoa hong thanh tich--OK
                $this->addThanhtichHH($user['user_gioithieu']);
            } else { //delete
                Tables::model()->deleteByPk($value);
                User::model()->deleteByPk($value);
            }
        }
    }

    public function ganTV($user, $log) {
        $tbl_user_dc_gan = Tables::model()->getTVdatchuanTop_Level($user->level);

        if ($tbl_user_dc_gan != NULL) {
            $four_child = ($tbl_user_dc_gan['four_child'] != '') ? $tbl_user_dc_gan['four_child'] . '|' : '';
            $tbl_user_dc_gan->four_child = $four_child . $user['username']; //* update
            $tbl_user_dc_gan->update();

            $num_child = count(explode('|', $four_child));
            //$level = $this->getLevel($tbl_user_dc_gan['dos_module_usernames_username']);
            $level = $user->level;
            if ($level < 6)
                $so_user_can_gan = 4;
            elseif ($level < 8)
                $so_user_can_gan = 3;
            elseif ($level < 10)
                $so_user_can_gan = 2;
            else
                $so_user_can_gan = 1;

            if ($so_user_can_gan == $num_child) {
                $level += 1;
                $money = $this->getSotienHHdatcap($level);

                //Reset bàn
                $tbl_user_dc_gan->resetItem();

                //Tăng cấp và cộng tiền
                $u = $tbl_user_dc_gan->dosModuleUsernamesUsername;
                $u->level = $level;
                //$u->balance +=$money;
                $u->update();

                //Ghi log
                $log->addItem("Hoa hồng đạt cấp " . $level, '', $u->username, $money, 'tangcap');
                // tìm những thằng cha của nó có cấp lớn hơn để gắn vào
                $this->ganTV($u, $log);
                $this->addToUpperUser($u);
            }
        }
    }

    private function addToUpperUser($user_dc_gan) {
        $username = $user_dc_gan['username']; //lưu lại user để gán
        $level = $user_dc_gan['level'];
        $temp_user = $user_dc_gan['username'];

        foreach ($this->listParentUser($user_dc_gan) as $u) {
            $tbl_of_u = $u->tables;
            if ($u['level'] == $level) {
                $children = $this->getChildOfUser($u['username']);
               
                $flag = 0;
                if ($temp_user == $children[0]) {
                    if ($tbl_of_u->left_child == '') { //thêm vào nhánh trái
                        $tbl_of_u->left_child = $username;
                        $flag = 1;
                    }
                } else {
                    if ($tbl_of_u->right_child == '') {
                        $tbl_of_u->right_child = $username;
                        $flag = 1;
                    }
                }                
                if ($flag == 1) {//nếu đạt chuẩn thì update thông tin bàn
                    if ($tbl_of_u->right_child != '' && $tbl_of_u->left_child != '') {
                        $tbl_of_u->upgrade_date = date("Y-m-d H:i:s");
                        $tbl_of_u->priority = Tables::model()->getMaxPriority() + 1;
                    }
                    $tbl_of_u->update();
                }
            }
            $temp_user = $u['username'];
        }
    }

    private function listParentUser($user) {
        $list = array();
        $tmp = User::model()->findByPk($user['user_gioithieu']);

        while ($tmp !== NULL) {
            $list[] = $tmp;
            $tmp = User::model()->findByPk($tmp['user_gioithieu']);
        }
        return $list;
    }

    /**
     * List TV đã thoát bàn
     * tức TV có level > 0 và có ít nhất
     * 1 trong 2 nhánh con trong bàn còn khuyết
     */
    public function listTVthoatban() {
        $criteria = new CDbCriteria();
        $criteria->order = 'time DESC';
        $criteria->condition = 'log_type=\'tangcap\'';
        $count = Log::model()->count($criteria);

        // elements per page
        $pages = new CPagination($count);
        $pages->pageSize = 15;
        $pages->applyLimit($criteria);

        return array('models' => Log::model()->findAll($criteria), 'pages' => $pages);
    }

    public function listTVdatchuan() {
        $criteria = new CDbCriteria();
        $criteria->order = 'priority, upgrade_date ASC';
        $criteria->condition = 'left_child !="" and right_child != ""';
        $count = Tables::model()->count($criteria);

        // elements per page
        $pages = new CPagination($count);
        $pages->pageSize = 15;
        $pages->applyLimit($criteria);

        return array('models' => Tables::model()->findAll($criteria), 'pages' => $pages);
    }

    public function getLevel($user) {
        return User::model()->findByPk($user)->level;
    }

    public function getBalance($user) {
        $u = User::model()->findByPk($user);
        return ($u === NULL) ? 0 : $u->balance;
    }

    /**  Thêm thành tích hoa hồng
     * cho người giới thiệu
     */
    private function addThanhtichHH($user) {
        $tree = $this->createTree($user);
        $min_child = min($tree['c0'], $tree['c1']);
        $money = $this->getSotienHHthanhtich($min_child);

        #Tìm xem đã cộng tiền chưa?
        $_log = Log::model()->find('log_type= :type and receiver =:r and value=:v', array(':type' => 'thanhtich', ':r' => $user, ':v' => $money));
        if ($_log != NULL)
            return;

        $u = User::model()->findByPk($user);
        if ($money > 0) {
            $u->balance += $money;
            $u->update();

            $log = new Log();
            $log->addItem("Hoa hồng thành tích do đạt được mỗi nhánh là " . $min_child, '', $user, $money, 'thanhtich');
        }
        if ($u['user_gioithieu'] != '')
            $this->addThanhtichHH($u['user_gioithieu']);
    }

    /** Convert từ TREE sang Array
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
        return User::model()->findAll(array('order' => 'create_date', 'condition' => 'enable=0',));
    }

    public function isActived($username) {
        if (User::model()->findByPk($username, 'enable=1'))
            return TRUE;
        return FALSE;
    }

    private function getSotienHHdatcap($level) {
        switch ($level) {
            case 1:
                return 2000;
            case 2:
                return 4000;
            case 3:
                return 8000;
            case 4:
                return 20000;
            case 5:
                return 40000;
            case 6:
                return 80000;
            case 7:
                return 150000;
            case 8:
                return 300000;
            case 9:
                return 500000;
            case 10:
                return 1000000;
            default:
                return 0;
        }
    }

    private function getSotienHHthanhtich($num_user) {
        switch ($num_user) {
            case 15:
                return 5000;
            case 30:
                return 7000;
            case 60:
                return 15000;
            case 120:
                return 20000;
            case 300:
                return 40000;
            case 600:
                return 60000;
            case 1000:
                return 80000;
            case 2000:
                return 100000;
            case 5000:
                return 200000;
            case 10000:
                return 500000;
            default:
                return 0;
        }
    }

    //Back end - Change password
    public function changePass($password) {
        $purifier = new CHtmlPurifier();
        $password = md5($purifier->purify($password));

        $user = Yii::app()->user->id;
        $command = Yii::app()->db->createCommand('UPDATE ' . $this->tableName() . ' SET password=:password WHERE username=:user');
        $command->bindParam(":user", $user, PDO::PARAM_STR);
        $command->bindParam(":password", $password, PDO::PARAM_STR);
        $command->execute();
    }

}