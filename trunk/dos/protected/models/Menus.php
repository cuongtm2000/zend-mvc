<?php

/**
 * This is the model class for table "dos_module_menus".
 *
 * The followings are the available columns in table 'dos_module_menus':
 * @property string $menu
 * @property string $menuen
 * @property string $url
 * @property string $target
 * @property integer $position
 * @property string $dos_usernames_username
 *
 * The followings are the available model relations:
 * @property DosUsernames $dosUsernamesUsername
 */
class Menus extends CActiveRecord {

    /**
     * Returns the static model of the specified AR class.
     * @return Menus the static model class
     */
    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

    /**
     * @return string the associated database table name
     */
    public function tableName() {
        return 'dos_module_menus';
    }

    /**
     * @return array validation rules for model attributes.
     */
    public function rules() {
        // NOTE: you should only define rules for those attributes that
        // will receive user inputs.
        return array(
            array('menu, dos_usernames_username', 'required'),
            array('position', 'numerical', 'integerOnly' => true),
            array('menu, menuen', 'length', 'max' => 50),
            array('url', 'length', 'max' => 100),
            array('target', 'length', 'max' => 20),
            array('dos_usernames_username', 'length', 'max' => 45),
            // The following rule is used by search().
            // Please remove those attributes that should not be searched.
            array('menu, menuen, url, target, position, dos_usernames_username', 'safe', 'on' => 'search'),
        );
    }

    /**
     * @return array relational rules.
     */
    public function relations() {
        // NOTE: you may need to adjust the relation name and the related
        // class name for the relations automatically generated below.
        return array(
            'dosUsernamesUsername' => array(self::BELONGS_TO, 'DosUsernames', 'dos_usernames_username'),
        );
    }

    /**
     * @return array customized attribute labels (name=>label)
     */
    public function attributeLabels() {
        return array(
            'menu' => 'Menu',
            'menuen' => 'Menuen',
            'url' => 'Url',
            'target' => 'Target',
            'position' => 'Position',
            'dos_usernames_username' => 'Dos Usernames Username',
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

        $criteria->compare('menu', $this->menu, true);
        $criteria->compare('menuen', $this->menuen, true);
        $criteria->compare('url', $this->url, true);
        $criteria->compare('target', $this->target, true);
        $criteria->compare('position', $this->position);
        $criteria->compare('dos_usernames_username', $this->dos_usernames_username, true);

        return new CActiveDataProvider($this, array(
                    'criteria' => $criteria,
                ));
    }
    public function listMenuByAdmin() {
        $user = Yii::app()->user->id;
        $command = Yii::app()->db->createCommand('SELECT menu, menuen, url, target, position FROM ' . $this->tableName() . ' WHERE dos_usernames_username=:user ORDER BY position ASC');
        $command->bindParam(":user", $user, PDO::PARAM_STR);
        return $command->queryAll();
    }
    //Back end - Add item
    public function addItem($data = NULL) {
        $this->deleteItem(); //delete

        $menu = $data->getPost('menu', '');
        $menuen = $data->getPost('menuen', '');
        $url = $data->getPost('url', '');
        $target = $data->getPost('target', '');
        $position = $data->getPost('position', '');

        for ($i = 0; $i < 10; $i++) {
            if (!empty($menu[$i]) && !empty($url[$i])) {
                $this->insertItem($menu[$i], $menuen[$i], $url[$i], $target[$i], $position[$i]);
            }
        }
    }

    //Back end - insert item
    private function insertItem($menu, $menuen, $url, $target, $position) {
        $user = Yii::app()->user->id;
        $command = Yii::app()->db->createCommand('INSERT INTO ' . $this->tableName() . ' (`menu`, `menuen`, `url`, `target`, `position`, `dos_usernames_username`) VALUES (:menu, :menuen, :url, :target, :position, :user)');
        $command->bindParam(":menu", $menu, PDO::PARAM_STR);
        $command->bindParam(":menuen", $menuen, PDO::PARAM_STR);
        $command->bindParam(":url", $url, PDO::PARAM_STR);
        $command->bindParam(":target", $target, PDO::PARAM_STR);
        $command->bindParam(":position", $position, PDO::PARAM_INT);
        $command->bindParam(":user", $user, PDO::PARAM_STR);
        $command->execute();
    }

    //Back end - delete item
    private function deleteItem() {
        $user = Yii::app()->user->id;
        $command = Yii::app()->db->createCommand('DELETE FROM ' . $this->tableName() . ' WHERE dos_usernames_username=:user');
        $command->bindParam(":user", $user, PDO::PARAM_STR);
        $command->execute();
    }
}