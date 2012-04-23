<?php

/**
 * This is the model class for table "dos_templates".
 *
 * The followings are the available columns in table 'dos_templates':
 * @property string $template
 * @property string $template_name
 * @property string $created
 * @property string $description
 *
 * The followings are the available model relations:
 * @property DosConfigs[] $dosConfigs
 * @property DosTemplatesHasDosModules[] $dosTemplatesHasDosModules
 * @property DosUsernames[] $dosUsernames
 */
class Templates extends CActiveRecord {

	private $_model;
	public $fileupload;
	public $choose_business;

	/**
	 * Returns the static model of the specified AR class.
	 * @return Templates the static model class
	 */
	public static function model($className = __CLASS__) {
		return parent::model($className);
	}

	/**
	 * @return string the associated database table name
	 */
	public function tableName() {
		return 'dos_templates';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules() {
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('template, template_name, choose_business', 'required'),
			array('template', 'length', 'max' => 6),
			array('template_name, fileupload', 'length', 'max' => 45),
			array('description', 'length', 'max' => 1000),
			array('fileupload', 'file', 'types' => 'gif,png,jpg,jpeg,icon', 'allowEmpty' => false, 'maxSize' => 1024 * 1024 * 5, 'on' => 'add'),
			array('fileupload', 'file', 'types' => 'gif,png,jpg,jpeg,icon', 'allowEmpty' => true, 'maxSize' => 1024 * 1024 * 5, 'on' => 'edit'),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('template, template_name, created, description', 'safe', 'on' => 'search'),
		);
	}

	/**
	 * @return array relational rules.
	 */
	public function relations() {
		// NOTE: you may need to adjust the relation name and the related
		// class name for the relations automatically generated below.
		return array(
			'commentCount' => array(self::STAT, 'Username', 'dos_templates_template'),
			//'dosConfigs' => array(self::HAS_MANY, 'DosConfigs', 'dos_templates_template'),
			//'dosTemplatesHasDosModules' => array(self::HAS_MANY, 'DosTemplatesHasDosModules', 'dos_templates_template'),
			//'dosUsernames' => array(self::HAS_MANY, 'DosUsernames', 'dos_templates_template'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels() {
		return array(
			'template' => 'Template',
			'template_name' => 'Template Name',
			'created' => 'Created',
			'description' => 'Description',
			'fileupload' => 'File images'
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

		$criteria->compare('template', $this->template, true);
		$criteria->compare('template_name', $this->template_name, true);
		$criteria->compare('created', $this->created, true);
		$criteria->compare('description', $this->description, true);

		return new CActiveDataProvider($this, array(
			'criteria' => $criteria,
		));
	}

	public function beforeSave() {
		$purifier = new CHtmlPurifier();
		$this->template = $purifier->purify($this->template);
		$this->template_name = $purifier->purify($this->template_name);
		$this->description = $purifier->purify($this->description);

		if ($this->isNewRecord) {
			if ($_FILES[ucfirst(Yii::app()->controller->id)]['name']['fileupload']) {
				//import class upload images
				Yii::import('ext.EUploadedImage.EUploadedImage');
				EUploadedImage::getInstance($this, 'fileupload')->processUpload(260, 182, '/themes/' . $this->template . '/images', 'tiny');
			}
		} else {
			//check file old and upload
			if ($_FILES[ucfirst(Yii::app()->controller->id)]['name']['fileupload']) {
				//import class upload images
				Yii::import('ext.EUploadedImage.EUploadedImage');
				EUploadedImage::getInstance($this, 'fileupload')->processUpload(260, 182, '/themes/' . $this->template . '/images', 'tiny', 'tiny.png');
			}
		}

		return parent::beforeSave();
	}

	/**
	 * @param int $type, nếu ($type = 1) => phân trang
	 * @return mixed
	 */
	public function listTemplates($type = 0) {
		$command = Yii::app()->db->createCommand('SELECT template, template_name, description FROM ' . $this->tableName() . ' ORDER BY created DESC');
		if($type == 1){
			$criteria = new CDbCriteria();
			$criteria->order = 'created DESC';
			$count = $this::model()->count($criteria);

			// elements per page
			$pages = new CPagination($count);
			$pages->pageSize = 6;
			$pages->applyLimit($criteria);

			return array('models' => $this::model()->findAll($criteria), 'pages' => $pages);
		}
		return $command->queryAll();
	}

	//Back end - List item admin
	public function listItemAdmin() {
		$criteria = new CDbCriteria();
		$criteria->order = 'created DESC';
		$count = Templates::model()->count($criteria);

		// elements per page
		$pages = new CPagination($count);
		$pages->pageSize = 15;
		$pages->applyLimit($criteria);

		return array('models' => Templates::model()->findAll($criteria), 'pages' => $pages);
	}

	//Back end - Get record to Edit
	public function loadEdit($id) {
		$this->_model = Templates::model()->findByPk($id);

		if ($this->_model === null) {
			throw new CHttpException(404, 'The requested page does not exist.');
		}
		return $this->_model;
	}

	//Back end - Delete record for Administrator
	private function deleteRecord($template) {
		//delete dos_configs
		Configs::model()->deleteAllByAttributes(array('dos_templates_template' => $template));

		//delete dos_loadfiles
		Loadfiles::model()->deleteAllByAttributes(array('dos_templates_template' => $template));

		//delete dos_templates_has_dos_modules
		TemplateModule::model()->deleteAllByAttributes(array('dos_templates_template' => $template));

		//delete dos_templates_has_dos_bussiness
		TemplatesBussiness::model()->deleteAllByAttributes(array('dos_templates_template' => $template));

		//delete dos_templates
		Templates::model()->deleteAllByAttributes(array('template' => $template));

		//delete forder
		$file = new File;
		$file->deleteFolderUser(YiiBase::getPathOfAlias('webroot') . '/themes/' . $template);
	}

	//Back end - Active Item for Administrator
	public function activeItem($data) {
		$ids = $data->getPost('ids', '');

		if (!empty($ids)) {
			if (!is_array($ids)) {
				$record_id[0] = $ids;
			} else {
				$record_id = $ids;
			}
			unset($ids);


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