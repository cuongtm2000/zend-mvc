<?php

class Username extends CActiveRecord {

    private $_model;
    public $choose_modules;
    public $choose_feature;
    public $template = '';
    public $choose_business;
    public $password2;
    public $rule;

    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

    public function tableName() {
        return 'dos_usernames';
    }

    public function rules() {
        // NOTE: you should only define rules for those attributes that
        // will receive user inputs.
        return array(
            array('username', 'unique', 'on' => 'register', 'message' => '{attribute} <strong>{value}</strong>  đã tồn tại vui lòng chọn tên khác.'),
            array('username,rule, password, password2', 'required', 'on' => 'register'),
            array('email,fullname, cmnd, address, phone', 'required'),
            array('password', 'compare', 'compareAttribute' => 'password2', 'message' => "{attribute} không trùng nhau.",'on' => 'register',),
            array('rule', 'compare', 'compareValue' => 1, 'message' => "Chưa chọn Đồng ý các quy định tại nhaphodep.vn ", 'on' => 'register'),
            array('password', 'length', 'min' => '6', 'message' => "{attribute} quá ngắn (tối thiểu là  {min} ký tự)."),
            array('cmnd', 'length', 'min' => 9, 'max' => 10,),
            array('bank_number', 'length', 'max' => 13),
            array('bank_name', 'length', 'max' => 45),
            array('username', 'match', 'pattern' => '/^([a-z0-9_])+$/'),
            array('email, fullname, phone, company, dos_templates_template, dos_provinces_province_id, dos_bussiness_bussiness_id', 'required', 'on' => 'changeInfo'),
            array('activated, dos_provinces_province_id', 'numerical', 'integerOnly' => true),
            array('username, email, password, fullname', 'length', 'max' => 45),
            array('dos_bussiness_bussiness_id', 'checkChooseBusiness'),
            array('email', 'email'),
            array('phone, code', 'length', 'max' => 15),
            array('company, dos_bussiness_bussiness_id, choose_business', 'length', 'max' => 100),
            array('dos_templates_template', 'length', 'max' => 6),
            // The following rule is used by search().
            // Please remove those attributes that should not be searched.
            array('username, email, created, expired, fullname, phone, company, activated, dos_templates_template, dos_provinces_province_id, dos_bussiness_bussiness_id', 'safe', 'on' => 'search'),
        );
    }

    public function checkChooseBusiness($attribute) {
        if ($this->dos_bussiness_bussiness_id == 'root') {
            $this->addError($attribute, 'Vui lòng chọn một ngành nghề');
        }
    }

    /**
     * @return array relational rules.
     */
    public function relations() {
        // NOTE: you may need to adjust the relation name and the related
        // class name for the relations automatically generated below.
        return array(
            /* 'dosModuleAbouts' => array(self::HAS_MANY, 'DosModuleAbouts', 'dos_usernames_username'),
              'dosModuleAdvs' => array(self::HAS_MANY, 'DosModuleAdvs', 'dos_usernames_username'),
              'dosModuleBanners' => array(self::HAS_MANY, 'DosModuleBanners', 'dos_usernames_username'),
              'dosModuleContacts' => array(self::HAS_MANY, 'DosModuleContacts', 'dos_usernames_username'),
              'dosModuleMenuses' => array(self::HAS_MANY, 'DosModuleMenus', 'dos_usernames_username'),
              'dosModulePcounterSaves' => array(self::HAS_MANY, 'DosModulePcounterSave', 'dos_usernames_username'),
              'dosModulePcounterUsers' => array(self::HAS_MANY, 'DosModulePcounterUsers', 'dos_usernames_username'),
              'dosModuleProductsCats' => array(self::HAS_MANY, 'DosModuleProductsCat', 'dos_usernames_username'),
              'dosModuleServices' => array(self::HAS_MANY, 'DosModuleServices', 'dos_usernames_username'),
              'dosModuleSupports' => array(self::HAS_MANY, 'DosModuleSupports', 'dos_usernames_username'),
              'dosModuleWebs' => array(self::HAS_MANY, 'DosModuleWebs', 'dos_usernames_username'),
              'dosModules' => array(self::MANY_MANY, 'DosModules', 'dos_modules_has_dos_usernames(dos_usernames_username, dos_modules_module_id)'),
              'dosUserLangs' => array(self::HAS_MANY, 'DosUserLangs', 'dos_usernames_username'),
              'dosBussinessBussiness' => array(self::BELONGS_TO, 'DosBussiness', 'dos_bussiness_bussiness_id'),
              'dosTemplatesTemplate' => array(self::BELONGS_TO, 'DosTemplates', 'dos_templates_template'),
              'dosUsernamesHasDosModules' => array(self::HAS_MANY, 'DosUsernamesHasDosModules', 'dos_usernames_username'), */
            'Provinces' => array(self::BELONGS_TO, 'Provinces', 'dos_provinces_province_id'),
        );
    }

    /**
     * @return array customized attribute labels (name=>label)
     */
    public function attributeLabels() {
        return array(
            'username' => 'Tên đăng nhập',
            'email' => 'Email',
            'password' => 'Mật khẩu',
            'password2' => 'Xác nhận mật khẩu',
            //'created' => 'Created',
            'fullname' => 'Họ và tên',
            'phone' => 'Số điện thoại',
            'cmnd' => 'Số CMND',
            'bank_name' => 'Tên NH',
            'bank_number' => 'Số TK NH',
            'company' => 'Company',
            'code' => 'Code',
            'activated' => 'Activated',
            'dos_templates_template' => 'Dos Templates Template',
            'dos_provinces_province_id' => 'Dos Provinces Province',
            'dos_bussiness_bussiness_id' => 'Dos Bussiness Bussiness',
            'avartar' => 'Ảnh đại diện',
            'rule' => 'Quy định',
            'address' => 'Địa chỉ',
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

        $criteria->compare('username', $this->username, true);
        $criteria->compare('email', $this->email, true);
        $criteria->compare('password', $this->password, true);
        $criteria->compare('created', $this->created, true);
        $criteria->compare('expired', $this->expired, true);
        $criteria->compare('fullname', $this->fullname, true);
        $criteria->compare('phone', $this->phone, true);
        $criteria->compare('company', $this->company, true);
        $criteria->compare('activated', $this->activated);
        $criteria->compare('dos_templates_template', $this->dos_templates_template, true);
        $criteria->compare('dos_provinces_province_id', $this->dos_provinces_province_id);

        return new CActiveDataProvider($this, array(
                    'criteria' => $criteria,
                ));
    }

    public function beforeSave() {
        $purifier = new CHtmlPurifier();

        if ($this->isNewRecord) {
            $this->username = $purifier->purify(strtolower($this->username));
            $this->email = $purifier->purify(strtolower($this->email));
            $this->password = md5($this->password);
            $this->role = 'user';
            $this->language = 'vi';
            $this->activated = 1;
            $this->dos_bussiness_bussiness_id = 'bds-kien-truc-xay-dung';
            $this->dos_provinces_province_id = 19;
            $this->dos_templates_template = 'nhadat';
            $this->expired = date('Y-m-d', strtotime('now +30 days'));
        } else {
            //$this->username = Yii::app()->user->name;            
        }

        if (($_FILES[__CLASS__]['name']['avartar']) != '') {
            $link = YiiBase::getPathOfAlias('webroot') . '/public/userfiles/image/' . Yii::app()->user->name . '/image/' . Yii::app()->user->name . '.jpg';
            if (file_exists($link))
                unlink($link);
            Yii::import('ext.simpleImage.CSimpleImage');
            $file = new CSimpleImage();
            $this->avartar = $file->processUpload(
                    $_FILES[__CLASS__]['name']['avartar'], $_FILES[__CLASS__]['tmp_name']['avartar'], 100, 100, '/public/userfiles/image/' . $this->username . '/image', $this->username);
        }

        return parent::beforeSave();
    }

    public function updateInfo($data) {
        $purifier = new CHtmlPurifier();
        //update avatar
        if (($_FILES[__CLASS__]['name']['avartar']) != '') {
            $link = YiiBase::getPathOfAlias('webroot') . '/public/userfiles/image/' . Yii::app()->user->name . '/image/' . Yii::app()->user->name . '.jpg';
            if (file_exists($link))
                unlink($link);
            Yii::import('ext.simpleImage.CSimpleImage');
            $file = new CSimpleImage();
            $avartar = $file->processUpload($_FILES[__CLASS__]['name']['avartar'], $_FILES[__CLASS__]['tmp_name']['avartar'], 100, 100, '/public/userfiles/image/' . $this->username . '/image', $this->username);
            $this->updateByPk(Yii::app()->user->id, array('avartar' => $avartar));
        }

        if($data['password']!= '')
            $this->updateByPk(Yii::app()->user->id, array('password' => md5($data['password'])));
        
        $this->updateByPk(Yii::app()->user->id, array(
            'email' => $purifier->purify($data['email']),
            'fullname' => $purifier->purify($data['fullname']),
            'address' => $purifier->purify($data['address']),
            'cmnd' => $purifier->purify($data['cmnd']),
            'phone' => $purifier->purify($data['phone']),
            'bank_name' => $purifier->purify($data['bank_name']),
            'bank_number' => $purifier->purify($data['bank_number']),
                )
        );

    }

    public function listUsernames() {
        $criteria = new CDbCriteria();
        $criteria->order = 'created ASC';
        $criteria->condition = 'activated =1';
        $count = $this->model()->count($criteria);

        // elements per page
        $pages = new CPagination($count);
        $pages->pageSize = 10;
        $pages->applyLimit($criteria);

        return array('models' => $this->model()->findAll($criteria), 'pages' => $pages);
    }

    /**
     * Function for publish dành cho lấy User role(admin, administrator)
     * @return mixed
     */
    public function getUserByRole($role) {
        $command = Yii::app()->db->createCommand('SELECT username FROM ' . $this->tableName() . ' WHERE role=:role');
        $command->bindParam(":role", $role, PDO::PARAM_STR);
        return $command->queryScalar();
    }

    /**
     * Check exits user
     */
    public function checkExistUser($username) {
        $sql = "SELECT dos_templates_template FROM " . $this->tableName() . " WHERE username='" . $username . "'";
        $row = Yii::app()->db->createCommand($sql)->queryRow();
        if ($row) {
            $this->template = $row['dos_templates_template']; //coi lai, admin còn dùng, nếu sửa được thì bỏ luôn
            return true;
        } else {
            return false;
        }
    }

    /**
     * Function for publish
     * @param $username
     * @return mixed
     */
    public function infoUser($role) {
        $command = Yii::app()->db->createCommand('SELECT username, email, fullname, phone, company, language, expired, dos_templates_template, province_name FROM ' . $this->tableName() . ', dos_provinces WHERE dos_provinces.province_id = ' . $this->tableName() . '.dos_provinces_province_id AND role=:role');
        $command->bindParam(":role", $role, PDO::PARAM_STR);
        return $command->queryRow();
    }

    public function createFolderUser($user) {
        $path = '/public/userfiles/image/' . $user . '/image/';
        $common_class = new Common();
        $common_class->recursiveMkdir($path);
    }

    //Back end - Change info
    public function changeInfo($email, $fullname, $phone, $company, $template, $province, $business) {
        $purifier = new CHtmlPurifier();
        $email = $purifier->purify($email);
        $fullname = $purifier->purify($fullname);
        $phone = $purifier->purify($phone);
        $company = $purifier->purify($company);
        $template = $purifier->purify($template);
        $province = $purifier->purify($province);
        $business = $purifier->purify($business);

        $user = Yii::app()->user->id;
        $command = Yii::app()->db->createCommand('UPDATE ' . $this->tableName() . ' SET email=:email, fullname=:fullname, phone=:phone, company=:company, dos_templates_template=:template, dos_provinces_province_id=:province, dos_bussiness_bussiness_id=:business WHERE username=:user');
        $command->bindParam(":user", $user, PDO::PARAM_STR);
        $command->bindParam(":email", $email, PDO::PARAM_STR);
        $command->bindParam(":fullname", $fullname, PDO::PARAM_STR);
        $command->bindParam(":phone", $phone, PDO::PARAM_STR);
        $command->bindParam(":company", $company, PDO::PARAM_STR);
        $command->bindParam(":template", $template, PDO::PARAM_STR);
        $command->bindParam(":province", $province, PDO::PARAM_INT);
        $command->bindParam(":business", $business, PDO::PARAM_STR);
        $command->execute();
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

    private function createCode() {
        $activatecode = '';
        $base = 'ABCDEFGHKLMNOPQRSTWXYZabcdefghjkmnpqrstwxyz0123456789';
        $len = 6;
        $max = strlen($base) - 1;

        mt_srand((double) microtime() * 1000000);

        while (strlen($activatecode) < $len + 1) {
            $activatecode .= $base{mt_rand(0, $max)};
        }
        return $activatecode;
    }

    public function sendMailActive($username) {
        $code = 'REG-' . $this->createCode();
        Username::model()->updateByPk($username, array('code' => $code));
        Yii::import('application.extensions.phpmailer.JPhpMailer');
        $mail = new JPhpMailer;
        $html = 'Xin chào <b>' . $username . '</b>,<br /><br />Website của bạn đã được khởi tạo thành công. Email này giúp chúng tôi xác nhận bạn là chủ sỡ hữu web http://' . $username . '.dos.vn. Vui lòng click vào liên kết bên dưới để kích hoạt tài khoản của bạn.<br /><br />Liên kết: <a href="http://dos.vn/register/">http://dos.vn/activate/test@test.com/' . $code . '</a><br />Trân trọng<br />---<br />Dos.vn';
        $mail->sendMailSmtp('support@thuonghoi.com', $model->email, 'Dos.vn', $model->username, 'Thông tin tài khoản ' . $username . ' tại Dos.vn', $html);
    }

    //Back end - Get record to Edit
    public function loadEdit() {
        $this->_model = Username::model()->findByPk(Yii::app()->user->id);

        if ($this->_model === null) {
            throw new CHttpException(404, 'The requested page does not exist.');
        }
        return $this->_model;
    }

    //Back end - List item admin for Administrator
    public function listItemAdmin() {
        $criteria = new CDbCriteria();
        $criteria->order = 'created DESC';
        $criteria->condition = 'role !=:role';
        $criteria->params = array(':role' => 'administrator');
        $count = Username::model()->count($criteria);

        // elements per page
        $pages = new CPagination($count);
        $pages->pageSize = 15;
        $pages->applyLimit($criteria);

        return array('models' => Username::model()->findAll($criteria), 'pages' => $pages);
    }

    //Back end - Update Record for Administrator
    private function updateShowHidden($activated, $username) {
        $command = Yii::app()->db->createCommand('UPDATE ' . $this->tableName() . ' SET activated=:activated WHERE username=:username');
        $command->bindParam(":activated", $activated, PDO::PARAM_INT);
        $command->bindParam(":username", $username, PDO::PARAM_STR);
        return $command->execute();
    }

    //Back end - Delete record for Administrator
    private function deleteRecord($user) {
        //delete table: dos_modules_has_dos_usernames
        $moduleUsername = new ModuleUsername;
        $moduleUsername->deleteRecord($user);

        //delete counter table: dos_module_pcounter_save, dos_module_pcounter_users
        $command = Yii::app()->db->createCommand('DELETE FROM dos_module_pcounter_save WHERE dos_usernames_username=:user');
        $command->bindParam(":user", $user, PDO::PARAM_STR);
        $command->execute();
        $command = Yii::app()->db->createCommand('DELETE FROM dos_module_pcounter_users WHERE dos_usernames_username=:user');
        $command->bindParam(":user", $user, PDO::PARAM_STR);
        $command->execute();

        //delete table: dos_module_menus
        $menus = new Menus;
        $menus->deleteRecord($user);

        //delete table: dos_module_supports
        $supports = new Supports;
        $supports->deleteRecord($user);

        //delete about
        Yii::app()->getModule('about');
        About::model()->deleteAllByAttributes(array('dos_usernames_username' => $user));

        //delete advs
        Advs::model()->deleteAllByAttributes(array('dos_usernames_username' => $user));

        //delete banners
        Banner::model()->deleteAllByAttributes(array('dos_usernames_username' => $user));

        //delete contact
        Yii::app()->getModule('contact');
        Contact::model()->deleteAllByAttributes(array('dos_usernames_username' => $user));

        //delete services
        Yii::app()->getModule('services');
        Services::model()->deleteAllByAttributes(array('dos_usernames_username' => $user));

        //delete webs
        Web::model()->deleteAllByAttributes(array('dos_usernames_username' => $user));

        //delete user lang
        UserLangs::model()->deleteAllByAttributes(array('dos_usernames_username' => $user));

        //delete ProductsCat and products
        Yii::app()->getModule('products');
        $values = ProductsCat::model()->findAllByAttributes(array('dos_usernames_username' => $user));
        foreach ($values as $value) {
            Products::model()->deleteAllByAttributes(array('dos_module_item_cat_cat_id' => $value['cat_id'])); //delete products
        }
        ProductsCat::model()->deleteAllByAttributes(array('dos_usernames_username' => $user)); //delete ProductsCat
        //delete NewsCat and news
        Yii::app()->getModule('news');
        $values = NewsCat::model()->findAllByAttributes(array('dos_usernames_username' => $user));
        foreach ($values as $value) {
            News::model()->deleteAllByAttributes(array('dos_module_item_cat_cat_id' => $value['cat_id'])); //delete news
        }
        NewsCat::model()->deleteAllByAttributes(array('dos_usernames_username' => $user)); //delete NewsCat
        //delete VideoCat and video
        Yii::app()->getModule('video');
        $values = VideoCat::model()->findAllByAttributes(array('dos_usernames_username' => $user));
        foreach ($values as $value) {
            Video::model()->deleteAllByAttributes(array('dos_module_item_cat_cat_id' => $value['cat_id'])); //delete video
        }
        VideoCat::model()->deleteAllByAttributes(array('dos_usernames_username' => $user)); //delete VideoCat
        //delete table: dos_usernames
        Username::model()->findByPk($user)->delete();

        //delete forder
        $file = new File;
        $file->deleteFolderUser(YiiBase::getPathOfAlias('webroot') . '/public/userfiles/images/' . $user);
    }

    //Back end - Active Item
    public function activeItem($data) {
        $flag = $data->getPost('factive', 'disable');
        $ids = $data->getPost('ids', '');

        if (!empty($ids)) {
            if (!is_array($ids)) {
                $record_id[0] = $ids;
            } else {
                $record_id = $ids;
            }
            unset($ids);

            if ($flag) {
                //show or hidden
                $active = ($flag == "enable") ? 1 : 0;

                foreach ($record_id as $value) {
                    $id = strval($value);
                    if ($id) {
                        $this->updateShowHidden($active, $id);
                    }
                }
            } else {
                //delete
                foreach ($record_id as $value) {
                    $id = strval($value);
                    if ($id) {
                        $this->deleteRecord($id);
                    }
                }
            }
        }
    }

}