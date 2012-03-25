<?php

/**
 * This is the model class for table "dos_module_tables".
 *
 * The followings are the available columns in table 'dos_module_tables':
 * @property string $left_child
 * @property string $right_child
 * @property string $four_child
 * @property string $priority
 * @property string $upgrade_date
 * @property string $dos_module_usernames_username
 *
 * The followings are the available model relations:
 * @property User $dosModuleUsernamesUsername
 */
class Tables extends CActiveRecord {

    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

    public function tableName() {
        return 'dos_module_tables';
    }

    /**
     * @return array validation rules for model attributes.
     */
    public function rules() {
        // NOTE: you should only define rules for those attributes that
        // will receive user inputs.
        return array(
            array('dos_module_usernames_username', 'required'),
            array('left_child, right_child, priority, dos_module_usernames_username', 'length', 'max' => 45),
            array('four_child', 'length', 'max' => 180),
            array('upgrade_date', 'safe'),
        );
    }

    /**
     * @return array relational rules.
     */
    public function relations() {
        return array(
            'dosModuleUsernamesUsername' => array(self::BELONGS_TO, 'User', 'dos_module_usernames_username'),
        );
    }

    public function attributeLabels() {
        return array(
            'left_child' => 'Left Child',
            'right_child' => 'Right Child',
            'four_child' => 'Four Child',
            'priority' => 'Priority',
            'upgrade_date' => 'Upgrade Date',
            'dos_module_usernames_username' => 'Username',
        );
    }

    public function addItem($user) {
        $this->dos_module_usernames_username = $user;
        $this->left_child = $this->right_child = $this->four_child = '';
        $this->priority = 0;
        $this->save();
    }

    public function resetItem() {
        $this->left_child = $this->right_child = $this->four_child = '';
        $this->upgrade_date = date("Y-m-d H:i:s");
        $this->priority = 0;
        $this->save();
    }

    public function findTVdatchuanTop() {
        return $this->find('priority = (select min(priority) from ' . Tables::model()->tableName() . ' where left_child !="" and right_child != ""  and priority >0)');
    }

    public function updateChild($parent, $child) {
        $t = Tables::model()->findByPk($parent);
        if($t=== null){
            $this->addItem($parent);
            $t = Tables::model()->findByPk($parent);
        }
        if ($t->left_child == '')
            $t->left_child = $child;
        else {
            $t->right_child = $child;
            $t->upgrade_date = date("Y-m-d H:i:s");
            $t->priority = $this->getMaxPriority() + 1;
        }
        $t->save();
    }

    public function getMaxPriority() {
        $command = Yii::app()->db->createCommand('select max(priority) from ' . $this->tableName());
        return $command->queryScalar();
    }

}