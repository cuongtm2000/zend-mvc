<?php

/**
 * This is the model class for table "dos_module_abouts".
 *
 * The followings are the available columns in table 'dos_module_abouts':
 * @property integer $record_id
 * @property string $title
 * @property string $titleen
 * @property string $content
 * @property string $contenten
 * @property integer $hit
 * @property string $created
 * @property integer $record_order
 * @property integer $hot
 * @property string $extra_field1
 * @property string $extra_field2
 * @property string $tag
 * @property string $description
 * @property integer $activated
 *
 * The followings are the available model relations:
 * @property DosUsernames $dosUsernamesUsername
 */
class About extends CActiveRecord {

    private $_model;
    private $_subdomain;

    public function init() {
        $this->_subdomain = Yii::app()->session['subdomain'];
    }

    /**
     * Returns the static model of the specified AR class.
     * @return About the static model class
     */
    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

    /**
     * @return string the associated database table name
     */
    public function tableName() {
        return 'dos_module_abouts';
    }

    /**
     * @return array validation rules for model attributes.
     */
    public function rules() {
        // NOTE: you should only define rules for those attributes that
        // will receive user inputs.
        return array(
            array('title, content, tag, description', 'required', 'message' => '<strong>{attribute}</strong> Khong duoc rong'),
            array('hit, record_order, hot, activated', 'numerical', 'integerOnly' => true),
            array('title, titleen, tag', 'length', 'max' => 100),
            array('tag', 'checkExistsTag'),
            array('extra_field1, extra_field2', 'length', 'max' => 45),
            array('contenten', 'safe'),
            array('description', 'length', 'max' => 250),
            // The following rule is used by search().
            // Please remove those attributes that should not be searched.
            array('record_id, title, titleen, content, contenten, hit, created, record_order, hot, extra_field1, extra_field2, tag, activated', 'safe', 'on' => 'search'),
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
            'record_id' => 'Record',
            'title' => 'Title',
            'titleen' => 'Titleen',
            'content' => 'Content',
            'contenten' => 'Contenten',
            'hit' => 'Hit',
            'created' => 'Created',
            'record_order' => 'Record Order',
            'hot' => 'Hot',
            'extra_field1' => 'Extra Field1',
            'extra_field2' => 'Extra Field2',
            'tag' => 'Tag',
            'description' => 'Description',
            'activated' => 'Activated',
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
        $criteria->compare('hit', $this->hit);
        $criteria->compare('created', $this->created, true);
        $criteria->compare('record_order', $this->record_order);
        $criteria->compare('hot', $this->hot);
        $criteria->compare('extra_field1', $this->extra_field1, true);
        $criteria->compare('extra_field2', $this->extra_field2, true);
        $criteria->compare('tag', $this->tag);
        $criteria->compare('activated', $this->activated);

        return new CActiveDataProvider($this, array(
                    'criteria' => $criteria,
                ));
    }

    public function beforeSave() {
        $purifier = new CHtmlPurifier();
        $this->title = $purifier->purify($this->title);
        $this->content = $purifier->purify($this->content);
        $this->tag = $purifier->purify($this->tag);
        $this->description = $purifier->purify($this->description);

        if ($this->isNewRecord) {
            //Add new record
            $this->record_order = $this->maxRecordOrder();
        }

        return parent::beforeSave();
    }

    //Front end - get list Menu
    public function listMenu() {
        $command = Yii::app()->db->createCommand('SELECT record_id, title' . LANG . ', tag FROM ' . $this->tableName() . ' WHERE dos_usernames_username=:user ORDER BY record_order DESC, created DESC');
        $command->bindParam(":user", $this->_subdomain, PDO::PARAM_STR);
        return $command->queryAll();
    }

    //Front end - Get home record
    public function homeRecord() {
        $command = Yii::app()->db->createCommand('SELECT record_id, title' . LANG . ', content' . LANG . ', hit FROM ' . $this->tableName() . ' WHERE hot=1 AND dos_usernames_username=:user ORDER BY record_order DESC, created DESC');
        $command->bindParam(":user", $this->_subdomain, PDO::PARAM_STR);
        $row = $command->queryRow();
        if ($row) {
            //Update hit
            $this->updateHit($row['hit'] + 1, $row['record_id']);
            return $row;
        }
    }

    //Front end - Get first record
    public function firstRecord() {
        $command = Yii::app()->db->createCommand('SELECT record_id, title' . LANG . ', content' . LANG . ', hit, description FROM ' . $this->tableName() . ' WHERE dos_usernames_username=:user ORDER BY record_order DESC, created DESC');
        $command->bindParam(":user", $this->_subdomain, PDO::PARAM_STR);
        $row = $command->queryRow();
        if ($row) {
            //Update hit
            $this->updateHit($row['hit'] + 1, $row['record_id']);
            return $row;
        }
    }

    //Front end - Get detail record
    public function detailRecord($tag) {
        $command = Yii::app()->db->createCommand('SELECT record_id, title' . LANG . ', content' . LANG . ', hit FROM ' . $this->tableName() . ' WHERE tag=:tag AND dos_usernames_username=:user');
        $command->bindParam(":tag", $tag, PDO::PARAM_STR);
        $command->bindParam(":user", $this->_subdomain, PDO::PARAM_STR);
        $row = $command->queryRow();
        if ($row) {
            //Update hit
            $this->updateHit($row['hit'] + 1, $row['record_id']);
            return $row;
        }
    }

    //Front end - update hit view
    private function updateHit($hit, $id) {
        $command = Yii::app()->db->createCommand('UPDATE ' . $this->tableName() . ' SET hit=:hit WHERE record_id=:id');
        $command->bindParam(":hit", $hit, PDO::PARAM_INT);
        $command->bindParam(":id", $id, PDO::PARAM_INT);
        $command->execute();
    }

    //Back end - List item admin
    public function listItemAdmin() {
        $criteria = new CDbCriteria();
        $criteria->order = 'record_order DESC, created DESC';
        $count = About::model()->count($criteria);

        // elements per page
        $pages = new CPagination($count);
        $pages->pageSize = 15;
        $pages->applyLimit($criteria);

        return array('models' => About::model()->findAll($criteria), 'pages' => $pages);
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
        $command = Yii::app()->db->createCommand('UPDATE ' . $this->tableName() . ' SET activated=:activated WHERE record_id=:id');
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
            $criteria->order = 'record_order ASC, created ASC';

            $models = About::model()->findAll($criteria);

            $i = 1;
            foreach ($models as $model) {
                About::model()->updateByPk($model['record_id'], array('record_order' => $i));
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
        $this->_model = About::model()->findByPk($id);

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