<?php

/**
 * This is the model class for table "dos_module_contacts".
 *
 * The followings are the available columns in table 'dos_module_contacts':
 * @property integer $record_id
 * @property string $title
 * @property string $titleen
 * @property string $content
 * @property string $contenten
 * @property string $create_date
 * @property integer $record_order
 * @property integer $hit
 * @property integer $hot
 * @property string $tag
 * @property string $tagen
 * @property string $description
 * @property string $descriptionen
 * @property string $enable
 * @property string $dos_usernames_username
 *
 * The followings are the available model relations:
 * @property DosUsernames $dosUsernamesUsername
 */
class Contact extends CActiveRecord {
    private $_model;
    private $_subdomain;
    public function init() {
        $this->_subdomain = Yii::app()->session['subdomain'];
    }
    /**
     * Returns the static model of the specified AR class.
     * @return Contacts the static model class
     */
    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

    /**
     * @return string the associated database table name
     */
    public function tableName() {
        return 'dos_module_contacts';
    }

    /**
     * @return array validation rules for model attributes.
     */
    public function rules() {
        // NOTE: you should only define rules for those attributes that
        // will receive user inputs.
        return array(
            array('title, content, tag', 'required'),
            array('record_order, hit, hot', 'numerical', 'integerOnly' => true),
            array('title, titleen, tag, tagen', 'length', 'max' => 100),
            array('tag, tagen', 'checkExistsTag'),
            array('description, descriptionen', 'length', 'max' => 250),
            array('enable, dos_usernames_username', 'length', 'max' => 45),
            array('contenten', 'safe'),
            // The following rule is used by search().
            // Please remove those attributes that should not be searched.
            array('record_id, title, titleen, content, contenten, create_date, record_order, hit, hot, tag, description, enable, dos_usernames_username', 'safe', 'on' => 'search'),
        );
    }
    public function checkExistsTag($attribute){
        if (GetTag::tag($this->tag, $this->record_id, $this->tableName())) {
            $this->addError($attribute, $attribute . ': <strong>' . $this->tag . '</strong> đã tồn tại, vui lòng chọn một liên kết khác');
        }
    }

    /**
     * @return array relational rules.
     */
    public function relations() {
        // NOTE: you may need to adjust the relation name and the related
        // class name for the relations automatically generated below.
        return array(
            //'dosUsernamesUsername' => array(self::BELONGS_TO, 'DosUsernames', 'dos_usernames_username'),
        );
    }

    /**
     * @return array customized attribute labels (name=>label)
     */
    public function attributeLabels() {
        return array(
            //'record_id' => 'Record',
			'title' => Yii::app()->controller->lang['title'],
			'titleen' => Yii::app()->controller->lang['titleen'],
            'content' => Yii::app()->controller->lang['content'],
            'contenten' => Yii::app()->controller->lang['contenten'],
            //'create_date' => 'Create Date',
            //'record_order' => 'Record Order',
            //'hit' => 'Hit',
            'hot' => Yii::app()->controller->lang['hot'],
			'tag' => Yii::app()->controller->lang['tag'],
			'tagen' => Yii::app()->controller->lang['tagen'],
			'description' => Yii::app()->controller->lang['description'],
			'descriptionen' => Yii::app()->controller->lang['descriptionen'],
            'enable' => Yii::app()->controller->lang['show'],
            //'dos_usernames_username' => 'Dos Usernames Username',
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

        $criteria->compare('record_id', $this->record_id);
        $criteria->compare('title', $this->title, true);
        $criteria->compare('titleen', $this->titleen, true);
        $criteria->compare('content', $this->content, true);
        $criteria->compare('contenten', $this->contenten, true);
        $criteria->compare('create_date', $this->create_date, true);
        $criteria->compare('record_order', $this->record_order);
        $criteria->compare('hit', $this->hit);
        $criteria->compare('hot', $this->hot);
        $criteria->compare('tag', $this->tag, true);
		$criteria->compare('tagen', $this->tagen, true);
        $criteria->compare('description', $this->description, true);
		$criteria->compare('descriptionen', $this->descriptionen, true);
        $criteria->compare('enable', $this->enable, true);
        $criteria->compare('dos_usernames_username', $this->dos_usernames_username, true);

        return new CActiveDataProvider($this, array(
                    'criteria' => $criteria,
                ));
    }
    public function beforeSave() {
        $purifier = new CHtmlPurifier();
        $this->title = $purifier->purify(trim($this->title));
        $this->titleen = $purifier->purify(trim($this->titleen));
        $this->content = $purifier->purify(trim($this->content));
        $this->contenten = $purifier->purify(trim($this->contenten));
        $this->tag = $purifier->purify(trim($this->tag));
		$this->tagen = $purifier->purify(trim($this->tagen));
        $this->description = $purifier->purify(trim($this->description));
		$this->descriptionen = $purifier->purify(trim($this->descriptionen));

        if ($this->isNewRecord) {
            //Add new record
            $this->record_order = $this->maxRecordOrder();
            $this->dos_usernames_username = Yii::app()->user->id;
        }

        return parent::beforeSave();
    }
    //Front end - First record
    public function firstItem() {
        $command = Yii::app()->db->createCommand('SELECT title'.LANG.', content'.LANG.', description FROM ' . $this->tableName() . ' WHERE hot=0 AND enable=1 AND dos_usernames_username=:user ORDER BY record_order DESC, create_date DESC');
        $command->bindParam(":user", $this->_subdomain, PDO::PARAM_STR);
        return $command->queryRow();
    }
    //Back end - List item admin
    public function listItemAdmin() {
        $criteria = new CDbCriteria();
        $criteria->order = 'record_order DESC, create_date DESC';
        $criteria->condition = 'dos_usernames_username=:user';
        $criteria->params = array(':user' => Yii::app()->user->id);
        $count = Contact::model()->count($criteria);

        // elements per page
        $pages = new CPagination($count);
        $pages->pageSize = 15;
        $pages->applyLimit($criteria);

        return array('models' => Contact::model()->findAll($criteria), 'pages' => $pages);
    }

    //Back end - Update Record
    private function updateSort($order, $id) {
        $command = Yii::app()->db->createCommand('UPDATE ' . $this->tableName() . ' SET record_order=:order WHERE record_id=:id');
        $command->bindParam(":order", $order, PDO::PARAM_INT);
        $command->bindParam(":id", $id, PDO::PARAM_INT);
        return $command->execute();
    }

    //Back end - Update Record
    private function updateShowHidden($activated, $id) {
        $command = Yii::app()->db->createCommand('UPDATE ' . $this->tableName() . ' SET enable=:activated WHERE record_id=:id');
        $command->bindParam(":activated", $activated, PDO::PARAM_INT);
        $command->bindParam(":id", $id, PDO::PARAM_INT);
        return $command->execute();
    }

    //Back end - Delete Record
    private function deleteRecord($id) {
        $command = Yii::app()->db->createCommand('DELETE FROM ' . $this->tableName() . ' WHERE record_id=:id');
        $command->bindParam(":id", $id);
        return $command->execute();
    }

    //Back end - Active Item
    public function activeItem($data) {
        $flag = $data->getPost('factive', 'disable');
        $ids = $data->getPost('ids', '');
        $orders = $data->getPost('orders', '');
        $sort = $data->getPost('sort', '');
        $syn = $data->getPost('syn', '');

        if ($sort) {
            if (is_array($orders)) {
                while (list($id, $order) = each($orders)) {
                    $id = intval($id);
                    $order = intval($order);
                    if ($id && $order) {
                        $this->updateSort($order, $id);
                    }
                }
            }
        } else if ($syn) {
            $criteria = new CDbCriteria();
            $criteria->order = 'record_order ASC, create_date ASC';
            $criteria->condition = 'dos_usernames_username=:user';
            $criteria->params = array(':user' => Yii::app()->user->id);

            $models = Contact::model()->findAll($criteria);

            $i = 1;
            foreach ($models as $model) {
                Contact::model()->updateByPk($model['record_id'], array('record_order' => $i));
                $i++;
            }
        } else {
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
                        $id = intval($value);
                        if ($id) {
                            $this->updateShowHidden($active, $id);
                        }
                    }
                } else {
                    //delete
                    foreach ($record_id as $value) {
                        $id = intval($value);
                        if ($id) {
                            $this->deleteRecord($id);
                        }
                    }
                }
            }
        }
    }
    //Back end - Get max record
    public function maxRecordOrder() {
        $user = Yii::app()->user->id;
        $command = Yii::app()->db->createCommand('SELECT max(record_order) AS max FROM ' . $this->tableName() . ' WHERE dos_usernames_username=:user');
        $command->bindParam(":user", $user, PDO::PARAM_STR);
        return $command->queryScalar() + 1;
    }
    //Back end - Get record to Edit
    public function loadEdit($id) {
        $criteria = new CDbCriteria();
        $criteria->condition = 'dos_usernames_username=:user';
        $criteria->params = array(':user' => Yii::app()->user->id);

        $this->_model = Contact::model()->findByPk($id, $criteria);

        if ($this->_model === null) {
            throw new CHttpException(404, 'The requested page does not exist.');
        }
        return $this->_model;
    }
    //Back end - Count item by user post
    public function countItemByUser(){
        $user = Yii::app()->user->id;
        $command = Yii::app()->db->createCommand('SELECT COUNT(record_id) AS num FROM ' . $this->tableName() . ' WHERE dos_usernames_username=:user');
        $command->bindParam(":user", $user, PDO::PARAM_STR);
        return $command->queryScalar();
    }
}