<?php

class Username extends CActiveRecord {

    private $_model;
    public $choose_modules;
    public $choose_feature;
    public $template = '';
    public $choose_business;
    public $pass_old; //for change password
    public $pass_new; //for change password
    public $pass_new_compare; //for change password

    /**
     * Returns the static model of the specified AR class.
     * @return Username the static model class
     */
    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

    /**
     * @return string the associated database table name
     */
    public function tableName() {
        return 'dos_usernames';
    }

    /**
     * @return array validation rules for model attributes.
     */
    public function rules() {
        // NOTE: you should only define rules for those attributes that
        // will receive user inputs.
        return array(
            array('username, email, password, agent_sale, dos_templates_template, dos_provinces_province_id, dos_bussiness_bussiness_id, choose_modules, choose_feature', 'required', 'on' => 'register'),
            array('username, dos_bussiness_bussiness_id', 'required', 'on' => 'import'),
            array('dos_templates_template', 'required', 'on' => 'templates'),
            array('email, fullname, phone, dos_templates_template, dos_provinces_province_id, expired, dos_bussiness_bussiness_id', 'required', 'on' => 'changeInfo'),
            array('import, activated, dos_provinces_province_id', 'numerical', 'integerOnly' => true),
            array('username, email, password, fullname', 'length', 'max' => 45),
            array('username', 'unique', 'on' => 'register', 'message' => '<strong>{value}</strong> {attribute} already exists please choose another user'),
            array('dos_bussiness_bussiness_id', 'checkChooseBusiness', 'on' => 'register'),
            array('agent_sale', 'checkExistsAgents', 'on' => 'register'),
            array('email', 'email'),
            array('phone, code', 'length', 'max' => 15),
            array('company, dos_bussiness_bussiness_id, choose_business', 'length', 'max' => 100),
            array('agent_sale, agent_tech', 'length', 'max' => 8),
            array('dos_templates_template', 'length', 'max' => 6),

            //rules for change old password
            array('pass_old, pass_new, pass_new_compare', 'required', 'on' => 'changeOldPass'),
            array('pass_old', 'checkPassOld', 'on' => 'changeOldPass'),

            //rules for change password
            array('pass_new, pass_new_compare', 'required', 'on' => 'changePass'),
            array('pass_new, pass_new_compare', 'length', 'min' => 6, 'max' => 45),
            array('pass_new', 'compare', 'compareAttribute' => 'pass_new_compare'),
            // The following rule is used by search().
            // Please remove those attributes that should not be searched.
            array('username, email, created, expired, import, agent_sale, agent_tech, fullname, phone, company, activated, dos_templates_template, dos_provinces_province_id, dos_bussiness_bussiness_id', 'safe', 'on' => 'search'),
        );
    }

    public function checkChooseBusiness($attribute) {
        if ($this->dos_bussiness_bussiness_id == 'root') {
            $this->addError($attribute, 'Vui lòng chọn một ngành nghề');
        }
    }

    public function checkExistsAgents($attribute) {
        if (!Agents::model()->checkAgents($this->agent_sale)) {
            $this->addError($attribute, 'Mã số đại lý không đúng');
        }
    }

    public function checkPassOld($attribute) {
        if (!Username::model()->find('username=:username AND password=:password', array(':username' => Yii::app()->user->id, ':password' => md5($this->pass_old)))) {
            $this->addError($attribute, 'Password: <strong>' . $this->pass_old . '</strong> is incorrect');
        }
    }

    /*public function checkExistsUsername($attribute) {
          if (Username::model()->findByPk($this->username)) {
              $this->addError($attribute, '<strong>' . $this->username . '</strong> ' . $attribute . ' already exists please choose another user');
          }
      }*/

    /**
     * @return array relational rules.
     */
    public function relations() {
        // NOTE: you may need to adjust the relation name and the related
        // class name for the relations automatically generated below.
        return array(
            /*'dosModuleAbouts' => array(self::HAS_MANY, 'DosModuleAbouts', 'dos_usernames_username'),
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
                        'dosUsernamesHasDosModules' => array(self::HAS_MANY, 'DosUsernamesHasDosModules', 'dos_usernames_username'),*/
            'Provinces' => array(self::BELONGS_TO, 'Provinces', 'dos_provinces_province_id'),
        );
    }

    /**
     * @return array customized attribute labels (name=>label)
     */
    public function attributeLabels() {
        return array(
            'username' => 'Username',
            'email' => 'Email',
            'password' => 'Password',
            'created' => 'Created',
            'fullname' => 'Họ và tên',
            'phone' => 'Điện thoại',
            'company' => 'Tên công ty',
            'code' => 'Code',
            'import' => 'Import',
            'agent_sale' => 'Chọn đại lý',
            'agent_tech' => 'Agent Tech',
            'activated' => 'Activated',
            'dos_templates_template' => 'Dos Templates Template',
            'dos_provinces_province_id' => 'Tỉnh thành',
            'dos_bussiness_bussiness_id' => 'Ngành nghề kinh doanh',
            'pass_old' => 'Mật khẩu cũ',
            'pass_new' => 'Mật khẩu mới',
            'pass_new_compare' => 'Nhập lại mật khẩu',
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
        $criteria->compare('import', $this->import);
        $criteria->compare('agent_sale', $this->agent_sale, true);
        $criteria->compare('agent_tech', $this->agent_tech, true);
        $criteria->compare('activated', $this->activated);
        $criteria->compare('dos_templates_template', $this->dos_templates_template, true);
        $criteria->compare('dos_provinces_province_id', $this->dos_provinces_province_id);

        return new CActiveDataProvider($this, array(
            'criteria' => $criteria,
        ));
    }

    public function beforeSave() {
        $purifier = new CHtmlPurifier();
        $this->username = $purifier->purify(strtolower(trim($this->username)));
        $this->email = $purifier->purify(strtolower(trim($this->email)));
        $this->password = md5(trim($this->password));
        $this->phone = $purifier->purify(trim($this->phone));
        $this->role = 'user';
        $this->language = 'vi';
        $this->activated = 1;
        $this->dos_bussiness_bussiness_id = $purifier->purify($this->dos_bussiness_bussiness_id);

        if ($this->isNewRecord) {
            $this->expired = date('Y-m-d', strtotime('now +90 days'));
        } else {
            //update
        }

        return parent::beforeSave();
    }

    public function listUserNewCreated() {
        $command = Yii::app()->db->createCommand('SELECT username FROM ' . $this->tableName() . ' WHERE username != \'dos\' AND activated=1 ORDER BY created DESC LIMIT 0, 7');
        return $command->queryAll();
    }

    public function listUserImport() {
        $command = Yii::app()->db->createCommand('SELECT username FROM ' . $this->tableName() . ' WHERE import = 1 AND activated=1 ORDER BY created DESC LIMIT 0, 7');
        return $command->queryAll();
    }

    public function listUserByImport($businessId) {
        $command = Yii::app()->db->createCommand('SELECT username FROM ' . $this->tableName() . ' WHERE import = 1 AND activated=1 AND dos_bussiness_bussiness_id=:business ORDER BY created ASC');
        $command->bindParam(":business", $businessId, PDO::PARAM_STR);
        return $command->queryAll();
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

    public function infoUser($username) {
        $command = Yii::app()->db->createCommand('SELECT email, fullname, phone, company, language, expired, dos_templates_template, province_name FROM ' . $this->tableName() . ', dos_provinces WHERE dos_provinces.province_id = ' . $this->tableName() . '.dos_provinces_province_id AND username=:user');
        $command->bindParam(":user", $username, PDO::PARAM_STR);
        return $command->queryRow();
    }

    public function createFolderUser($user) {
        $path = '/public/userfiles/image/' . $user . '/image/';
        $common_class = new Common();
        $common_class->recursiveMkdir($path);
    }

    public function checkExpired($user) {
        $command = Yii::app()->db->createCommand("SELECT DATEDIFF(CURDATE(), (SELECT expired FROM " . $this->tableName() . " WHERE username = '" . $user . "'))");
        return $command->queryScalar();
    }

    //Back end - Change info
    public function changeInfo($email, $fullname, $phone, $company, $province, $business, $user, $expired = NULL) {
        $purifier = new CHtmlPurifier();
        $email = $purifier->purify($email);
        $fullname = $purifier->purify($fullname);
        $phone = $purifier->purify($phone);
        $company = $purifier->purify($company);
        $province = $purifier->purify($province);
        $business = $purifier->purify($business);

        if ($expired == NULL) {
            $command = Yii::app()->db->createCommand('UPDATE ' . $this->tableName() . ' SET email=:email, fullname=:fullname, phone=:phone, company=:company, dos_provinces_province_id=:province, dos_bussiness_bussiness_id=:business WHERE username=:user');
        } else {
            $command = Yii::app()->db->createCommand('UPDATE ' . $this->tableName() . ' SET email=:email, fullname=:fullname, phone=:phone, company=:company, expired=:expired, dos_provinces_province_id=:province, dos_bussiness_bussiness_id=:business WHERE username=:user');
            $command->bindParam(":expired", $expired, PDO::PARAM_STR);
        }

        $command->bindParam(":user", $user, PDO::PARAM_STR);
        $command->bindParam(":email", $email, PDO::PARAM_STR);
        $command->bindParam(":fullname", $fullname, PDO::PARAM_STR);
        $command->bindParam(":phone", $phone, PDO::PARAM_STR);
        $command->bindParam(":company", $company, PDO::PARAM_STR);
        $command->bindParam(":province", $province, PDO::PARAM_INT);
        $command->bindParam(":business", $business, PDO::PARAM_STR);
        $command->execute();
    }

    //Back end - Change password
    public function changePass($password, $user) {
        $purifier = new CHtmlPurifier();
        $password = md5($purifier->purify($password));

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

        mt_srand((double)microtime() * 1000000);

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
    public function loadEdit($id) {
        $this->_model = Username::model()->findByPk($id);

        if ($this->_model === null) {
            throw new CHttpException(404, 'The requested page does not exist.');
        }
        return $this->_model;
    }

    //Back end - List item user for Administrator
    public function listItemAdmin() {
        $criteria = new CDbCriteria();
        $criteria->order = 'created DESC';
        $criteria->condition = 'role !=:role';
        $criteria->params = array(':role' => 'administrator');
        $count = $this::model()->count($criteria);

        // elements per page
        $pages = new CPagination($count);
        $pages->pageSize = 15;
        $pages->applyLimit($criteria);

        return array('models' => $this::model()->findAll($criteria), 'pages' => $pages);
    }

    //Back end - List item user for Agent
    public function listItemAgent($type = NULL, $agent_id = NULL) {
        $criteria = new CDbCriteria();
        $criteria->order = 'created DESC';
        if ($type == 0) {
            $criteria->condition = 'role !=:role AND agent_sale =:agent';
            $criteria->params = array(':role' => 'administrator', ':agent' => $agent_id);
        } else if ($type == 1) {
            $criteria->condition = 'role !=:role AND agent_tech =:agent';
            $criteria->params = array(':role' => 'administrator', ':agent' => $agent_id);
        }
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
        $file->deleteFolderUser(YiiBase::getPathOfAlias('webroot') . '/public/userfiles/image/' . $user);
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
                if ($flag == 'export') {
                    foreach ($record_id as $value) {
                        $id = strval($value);
                        if ($id) {
                            DatabaseHelper::export(trim($id), 'user');
                        }
                    }
                } else {
                    //show or hidden
                    $active = ($flag == "enable") ? 1 : 0;

                    foreach ($record_id as $value) {
                        $id = strval($value);
                        if ($id) {
                            $this->updateShowHidden($active, $id);
                        }
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