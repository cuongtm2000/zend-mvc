<?php

/**
 * This is the model class for table "dos_agents".
 *
 * The followings are the available columns in table 'dos_agents':
 * @property string $agent_id
 * @property string $email
 * @property string $password
 * @property string $created_date
 * @property string $fullname
 * @property string $phone
 * @property string $company
 * @property string $website
 * @property string $picture
 * @property string $address
 * @property string $yahoo
 * @property string $skype
 * @property string $content
 * @property string $point
 * @property string $bonus
 * @property string $type
 * @property string $parent_id
 * @property integer $enable
 * @property integer $dos_provinces_province_id
 *
 * The followings are the available model relations:
 * @property DosProvinces $dosProvincesProvince
 */
class Agents extends CActiveRecord {
    private $_model;
    public $pass_new; //for change password
    public $pass_new_compare; //for change password

    /**
     * Returns the static model of the specified AR class.
     * @param string $className active record class name.
     * @return Agents the static model class
     */
    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

    /**
     * @return string the associated database table name
     */
    public function tableName() {
        return 'dos_agents';
    }

    /**
     * @return array validation rules for model attributes.
     */
    public function rules() {
        // NOTE: you should only define rules for those attributes that
        // will receive user inputs.
        return array(
            array('agent_id, email, password, fullname, phone, address, parent_id, enable, dos_provinces_province_id', 'required', 'on' => 'add'),
            array('agent_id, email, fullname, phone, address, parent_id, enable, dos_provinces_province_id', 'required', 'on' => 'edit'),
            array('enable, dos_provinces_province_id', 'numerical', 'integerOnly' => true),
            array('agent_id, parent_id', 'length', 'min' => 8, 'max' => 20),
            array('agent_id, parent_id', 'numerical', 'integerOnly' => true),
            array('email, password, fullname, yahoo, skype, content, type', 'length', 'max' => 45),
            array('phone', 'length', 'max' => 30),
            array('company, address', 'length', 'max' => 100),
            array('website, picture', 'length', 'max' => 60),
            array('point, bonus', 'length', 'max' => 15),
            array('parent_id', 'exist', 'className' => 'Agents', 'attributeName' => 'agent_id'),

            //rules for change password
            array('pass_new, pass_new_compare', 'required', 'on' => 'changePass'),
            array('pass_new, pass_new_compare', 'length', 'min' => 6, 'max' => 45),
            array('pass_new', 'compare', 'compareAttribute' => 'pass_new_compare'),

            // The following rule is used by search().
            // Please remove those attributes that should not be searched.
            array('agent_id, email, password, created_date, fullname, phone, company, website, picture, address, yahoo, skype, content, point, bonus, type, parent_id, enable, dos_provinces_province_id', 'safe', 'on' => 'search'),
        );
    }

    /**
     * @return array relational rules.
     */
    public function relations() {
        // NOTE: you may need to adjust the relation name and the related
        // class name for the relations automatically generated below.
        return array(
            'Provinces' => array(self::BELONGS_TO, 'Provinces', 'dos_provinces_province_id'),
        );
    }

    /**
     * @return array customized attribute labels (name=>label)
     */
    public function attributeLabels() {
        return array(
            'agent_id' => 'Agent',
            'email' => 'Email',
            'password' => 'Password',
            'created_date' => 'Created Date',
            'fullname' => 'Fullname',
            'phone' => 'Phone',
            'company' => 'Company',
            'website' => 'Website',
            'picture' => 'Picture',
            'address' => 'Address',
            'yahoo' => 'Yahoo',
            'skype' => 'Skype',
            'content' => 'Content',
            'point' => 'Point',
            'bonus' => 'Bonus',
            'type' => 'Type',
            'parent_id' => 'Parent',
            'enable' => 'Enable',
            'dos_provinces_province_id' => 'Province',
            'pass_new' => 'Mật khẩu mới',
            'pass_new_compare' => 'Nhập lại',
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

        $criteria->compare('agent_id', $this->agent_id, true);
        $criteria->compare('email', $this->email, true);
        $criteria->compare('password', $this->password, true);
        $criteria->compare('created_date', $this->created_date, true);
        $criteria->compare('fullname', $this->fullname, true);
        $criteria->compare('phone', $this->phone, true);
        $criteria->compare('company', $this->company, true);
        $criteria->compare('website', $this->website, true);
        $criteria->compare('picture', $this->picture, true);
        $criteria->compare('address', $this->address, true);
        $criteria->compare('yahoo', $this->yahoo, true);
        $criteria->compare('skype', $this->skype, true);
        $criteria->compare('content', $this->content, true);
        $criteria->compare('point', $this->point, true);
        $criteria->compare('bonus', $this->bonus, true);
        $criteria->compare('type', $this->type, true);
        $criteria->compare('parent_id', $this->parent_id, true);
        $criteria->compare('enable', $this->enable);
        $criteria->compare('dos_provinces_province_id', $this->dos_provinces_province_id);

        return new CActiveDataProvider($this, array(
            'criteria' => $criteria,
        ));
    }

    public function beforeSave() {
        $purifier = new CHtmlPurifier();

        if ($this->isNewRecord) {
            $this->password = $purifier->purify(md5(trim($this->password)));
        }
        return parent::beforeSave();
    }

    public function listAgentsByProvince($province_id) {
        $command = Yii::app()->db->createCommand('SELECT agent_id, email, fullname, phone, company, address FROM ' . $this->tableName() . ' WHERE enable=1 AND dos_provinces_province_id=:province_id');
        $command->bindParam(":province_id", $province_id, PDO::PARAM_INT);
        return $command->queryAll();
    }

    public function checkAgents($agent_id) {
        $command = Yii::app()->db->createCommand('SELECT agent_id FROM ' . $this->tableName() . ' WHERE agent_id=:agent_id');
        $command->bindParam(":agent_id", $agent_id, PDO::PARAM_STR);
        return $command->queryScalar();
    }

    //Back end - List item user for Administrator
    public function listItemAdmin() {
        $criteria = new CDbCriteria();
        $criteria->order = 'created_date DESC';
        $count = $this::model()->count($criteria);

        // elements per page
        $pages = new CPagination($count);
        $pages->pageSize = 15;
        $pages->applyLimit($criteria);

        return array('models' => $this::model()->findAll($criteria), 'pages' => $pages);
    }

    //Back end - Update Record for Administrator
    private function updateShowHidden($activated, $agent_id) {
        $command = Yii::app()->db->createCommand('UPDATE ' . $this->tableName() . ' SET enable=:enable WHERE agent_id=:agent_id');
        $command->bindParam(":enable", $activated, PDO::PARAM_INT);
        $command->bindParam(":agent_id", $agent_id, PDO::PARAM_STR);
        return $command->execute();
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
                //delete not used
                foreach ($record_id as $value) {
                    $id = strval($value);
                    if ($id) {
                        $this->deleteRecord($id);
                    }
                }
            }
        }
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

    //Back end - Change password
    public function changePass($password, $agent_id) {
        $purifier = new CHtmlPurifier();
        $password = $purifier->purify(md5(trim($password)));

        $command = Yii::app()->db->createCommand('UPDATE ' . $this->tableName() . ' SET password=:password WHERE agent_id=:agent_id');
        $command->bindParam(":agent_id", $agent_id, PDO::PARAM_STR);
        $command->bindParam(":password", $password, PDO::PARAM_STR);
        $command->execute();
    }
}