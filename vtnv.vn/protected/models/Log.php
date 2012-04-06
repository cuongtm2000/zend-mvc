<?php

/**
 * This is the model class for table "dos_module_log".
 *
 * The followings are the available columns in table 'dos_module_log':
 * @property integer $record_id
 * @property string $log_type
 * @property string $detail
 * @property string $time
 * @property string $sender
 * @property string $receiver
 * @property double $value
 * 
 *  @property User $receive_user
 */
class Log extends CActiveRecord {

    /**
     * Returns the static model of the specified AR class.
     * @param string $className active record class name.
     * @return Log the static model class
     */
    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

    public function tableName() {
        return 'dos_module_log';
    }

    /**
     * @return array validation rules for model attributes.
     */
    public function rules() {
        return array(
            array('record_id, log_type, detail, time, sender, receiver, value', 'safe', 'on' => 'search'),
        );
    }

    public function relations() {
        return array(
            'receive_user' => array(self::BELONGS_TO, 'User', 'receiver'),
        );
    }

    public function attributeLabels() {
        return array(
            'record_id' => 'ID',
            'log_type' => 'Loại GD',
            'detail' => 'Chi tiết',
            'time' => 'Thời gian',
            'sender' => 'Người gửi',
            'receiver' => 'Người nhận',
            'value' => 'Số tiền',
        );
    }

    public function addItem($detail, $sender, $receiver, $value, $type) {
        $this->detail = $detail;
        $this->sender = $sender;
        $this->receiver = $receiver;
        $this->value = $value;
        $this->log_type = $type;
        $this->save();
    }

    public function countByUser($user, $type) {
        return $this->count('receiver=:r and log_type=:t', array(':r' => $user, ':t' => $type));
    }

    public function getLogByReceiver($user) {
        $criteria = new CDbCriteria();
        $criteria->select = 'log_type, detail, time, sender, receiver, value';
        $criteria->order = 'time DESC';
        $criteria->condition = 'receiver=:user or sender=:user';
        $criteria->params = array(':user' => $user);

        $count = Log::model()->count($criteria);

        // elements per page
        $pages = new CPagination($count);
        $pages->pageSize = 25;
        $pages->applyLimit($criteria);

        return array('models' => Log::model()->findAll($criteria), 'pages' => $pages);
    }
}