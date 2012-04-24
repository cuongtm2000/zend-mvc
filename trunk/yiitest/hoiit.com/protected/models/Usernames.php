<?php

/**
 * This is the model class for table "hoiit_usernames".
 *
 * The followings are the available columns in table 'hoiit_usernames':
 * @property string $username
 * @property string $email
 * @property string $password
 * @property string $picture
 * @property string $detail
 * @property string $phone
 * @property string $yahoo
 * @property string $skype
 * @property string $parent
 * @property string $group_code
 * @property string $reg_date
 * @property string $user_role
 * @property string $code
 * @property integer $enable
 * @property string $hoiit_templates_template_id
 * @property integer $hoiit_provinces_province_id
 *
 * The followings are the available model relations:
 * @property HoiitComments[] $hoiitComments
 * @property HoiitLogs[] $hoiitLogs
 * @property HoiitPosts[] $hoiitPosts
 * @property HoiitProvinces $hoiitProvincesProvince
 * @property HoiitTemplates $hoiitTemplatesTemplate
 */
class Usernames extends CActiveRecord {

	public $remove_pic;
	private $_model;
	private $_oldImage;

	public static function model($className = __CLASS__) {
		return parent::model($className);
	}

	/**
	 * @return string the associated database table name
	 */
	public function tableName() {
		return 'hoiit_usernames';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules() {
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('username, email, password, group_code, hoiit_provinces_province_id', 'required'),
			array('enable, hoiit_provinces_province_id', 'numerical', 'integerOnly' => true),
			array('username, email', 'unique'),
			array('username, parent', 'length', 'max' => 40),
			array('email, password, phone, yahoo, skype, group_code, user_role', 'length', 'max' => 45),
			array('picture', 'length', 'max' => 60),
			array('detail', 'length', 'max' => 1000),
			array('code', 'length', 'max' => 15),
			array('hoiit_templates_template_id', 'length', 'max' => 6),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('username, email, password, picture, detail, phone, yahoo, skype, parent, group_code, reg_date, user_role, code, enable, hoiit_templates_template_id, hoiit_provinces_province_id', 'safe', 'on' => 'search'),
		);
	}

	/*public function checkExistsUsernameInput($attribute) {
		if (Usernames::model()->findByPk($this->username)) {
			$this->addError($attribute, '<strong>' . $this->username . '</strong> ' . $attribute . ' already exists please choose another user');
		}
	}*/

	//Check email exits
	/*public function checkExistsEmail($attribute) {
		if (Usernames::model()->find('email=:email', array(':email' => $this->email))) {
			$this->addError($attribute, '<strong>' . $this->email . '</strong> ' . $attribute . ' already exists please choose another user');
		}
	}*/

	/**
	 * @return array relational rules.
	 */
	public function relations() {
		// NOTE: you may need to adjust the relation name and the related
		// class name for the relations automatically generated below.
		return array(
			//'hoiitComments' => array(self::HAS_MANY, 'HoiitComments', 'hoiit_usernames_username'),
			//'hoiitLogs' => array(self::HAS_MANY, 'HoiitLogs', 'hoiit_usernames_username'),
			//'hoiitPosts' => array(self::HAS_MANY, 'HoiitPosts', 'hoiit_usernames_username'),
			//'hoiitProvincesProvince' => array(self::BELONGS_TO, 'HoiitProvinces', 'hoiit_provinces_province_id'),
			//'hoiitTemplatesTemplate' => array(self::BELONGS_TO, 'HoiitTemplates', 'hoiit_templates_template_id'),
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
			'picture' => 'Picture',
			'detail' => 'Detail',
			'phone' => 'Phone',
			'yahoo' => 'Yahoo',
			'skype' => 'Skype',
			'parent' => 'Who introduced',
			'group_code' => 'Group Code',
			'reg_date' => 'Reg Date',
			'user_role' => 'User Role',
			'enable' => 'Enable',
			'hoiit_templates_template_id' => 'Hoiit Templates Template',
			'hoiit_provinces_province_id' => 'Province',
			'remove_pic' => 'Remove picture',
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
		$criteria->compare('picture', $this->picture, true);
		$criteria->compare('detail', $this->detail, true);
		$criteria->compare('phone', $this->phone, true);
		$criteria->compare('yahoo', $this->yahoo, true);
		$criteria->compare('skype', $this->skype, true);
		$criteria->compare('parent', $this->parent, true);
		$criteria->compare('group_code', $this->group_code, true);
		$criteria->compare('reg_date', $this->reg_date, true);
		$criteria->compare('user_role', $this->user_role, true);
		$criteria->compare('enable', $this->enable);
		$criteria->compare('hoiit_templates_template_id', $this->hoiit_templates_template_id, true);
		$criteria->compare('hoiit_provinces_province_id', $this->hoiit_provinces_province_id);

		return new CActiveDataProvider($this, array(
			'criteria' => $criteria,
		));
	}

	public function afterFind() {
		parent::afterFind();
		$this->_oldImage = $this->picture;
	}

	public function beforeSave() {
		$purifier = new CHtmlPurifier();
		$this->username = $purifier->purify($this->username);
		$this->email = $purifier->purify($this->email);
		$this->detail = $purifier->purify($this->detail);
		$this->phone = $purifier->purify($this->phone);
		$this->yahoo = $purifier->purify($this->yahoo);
		$this->skype = $purifier->purify($this->skype);
		$this->parent = $purifier->purify($this->parent);
		$this->group_code = $purifier->purify($this->group_code);
		$this->user_role = 'user';
		$this->enable = 1;
		$this->hoiit_templates_template_id = '111111';
		$this->hoiit_provinces_province_id = $purifier->purify($this->hoiit_provinces_province_id);

		if ($this->isNewRecord) {
			$this->password = $purifier->purify(md5($this->password));

			//Add new record
			if ($_FILES[__CLASS__]['name']['picture']) {
				//import class upload images
				Yii::import('ext.EUploadedImage.EUploadedImage');
				$this->picture = EUploadedImage::getInstance($this, 'picture')->processUpload(120, 120, '/public/userfiles/image/usernames', $this->username);
			}
		} else {
			//check file old and upload
			if ($_FILES[__CLASS__]['name']['picture']) {
				//import class upload images
				Yii::import('ext.EUploadedImage.EUploadedImage');
				$this->picture = EUploadedImage::getInstance($this, 'picture')->processUpload(120, 120, '/public/userfiles/image/usernames', $this->username, $this->_oldImage);
			} else {
				//remove picture
				if (isset($_POST[__CLASS__]['remove_pic']) && $_POST[__CLASS__]['remove_pic'] == 1) {
					$common_class = new Common();
					$common_class->removePic($this->_oldImage, 'usernames');
					$this->picture = '';
				} else {
					$this->picture = $this->_oldImage;
				}
			}
		}

		return parent::beforeSave();
	}

	//Front end - list record new
	public function listTopPostUsers() {
		$command = Yii::app()->db->createCommand('SELECT count(post_id) AS num, username, picture FROM ' . $this->tableName() . ', hoiit_posts WHERE ' . $this->tableName() . '.username = hoiit_posts.hoiit_usernames_username AND enable=1 ORDER BY num DESC LIMIT 0, 12');
		return $command->queryAll();
	}

	//Front end - list record new
	public function listNewUsers() {
		$command = Yii::app()->db->createCommand('SELECT username FROM ' . $this->tableName() . ' WHERE enable=1 ORDER BY reg_date DESC LIMIT 0, 7');
		return $command->queryAll();
	}

	//Front end - get Username for activate
	public function getUsername($email, $code_user) {
		$command = Yii::app()->db->createCommand('SELECT username, code, enable FROM ' . $this->tableName() . ' WHERE email=:email');
		$command->bindParam(':email', $email, PDO::PARAM_STR);
		$row = $command->queryRow();
		if ($row) {
			//enable == 1, user has activated
			if ($row['enable'] == 1) {
				return true;
			}
			//enable == 0
			$code = explode('-', $row['code']);
			if (($code[0] == 'REG') && $code_user == $code[1]) {
				//update enable = 1
				Usernames::model()->updateByPk($row['username'], array('code' => NULL, 'enable' => 1));
				return true;
			}
		}
		return false;
	}

	//Font end - Create code for register user
	public function createCode() {
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

	//Back end - Get record to Edit
	public function loadEdit($id) {
		$criteria = new CDbCriteria();
		$this->_model = $this::model()->findByPk($id, $criteria);

		if ($this->_model === null) {
			throw new CHttpException(404, 'The requested page does not exist.');
		}
		return $this->_model;
	}
}