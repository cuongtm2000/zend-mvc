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
 * @property integer $activated
 * @property string $dos_usernames_username
 *
 * The followings are the available model relations:
 * @property DosUsernames $dosUsernamesUsername
 */
class About extends CActiveRecord{
    private $subdomain;
    
    public function init(){
        $this->subdomain = Yii::app()->session['subdomain'];
    }
	/**
	 * Returns the static model of the specified AR class.
	 * @return About the static model class
	 */
	public static function model($className=__CLASS__){
		return parent::model($className);
	}

	/**
	 * @return string the associated database table name
	 */
	public function tableName(){
		return 'dos_module_abouts';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules(){
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('title, content', 'required', 'message' => '<strong>{attribute}</strong> Khong duoc rong'),
			array('hit, record_order, hot, activated', 'numerical', 'integerOnly'=>true),
			array('title, titleen, tag', 'length', 'max'=>100),
			array('extra_field1, extra_field2, dos_usernames_username', 'length', 'max'=>45),
			array('contenten', 'safe'),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('record_id, title, titleen, content, contenten, hit, created, record_order, hot, extra_field1, extra_field2, tag, activated, dos_usernames_username', 'safe', 'on'=>'search'),
		);
	}

	/**
	 * @return array relational rules.
	 */
	public function relations(){
		// NOTE: you may need to adjust the relation name and the related
		// class name for the relations automatically generated below.
		return array(
			'dosUsernamesUsername' => array(self::BELONGS_TO, 'DosUsernames', 'dos_usernames_username'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels(){
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
			'activated' => 'Activated',
			'dos_usernames_username' => 'Dos Usernames Username',
		);
	}

	/**
	 * Retrieves a list of models based on the current search/filter conditions.
	 * @return CActiveDataProvider the data provider that can return the models based on the search/filter conditions.
	 */
	public function search(){
		// Warning: Please modify the following code to remove attributes that
		// should not be searched.

		$criteria=new CDbCriteria;

		$criteria->compare('record_id',$this->record_id);
		$criteria->compare('title',$this->title,true);
		$criteria->compare('titleen',$this->titleen,true);
		$criteria->compare('content',$this->content,true);
		$criteria->compare('contenten',$this->contenten,true);
		$criteria->compare('hit',$this->hit);
		$criteria->compare('created',$this->created,true);
		$criteria->compare('record_order',$this->record_order);
        $criteria->compare('hot',$this->hot);
		$criteria->compare('extra_field1',$this->extra_field1,true);
		$criteria->compare('extra_field2',$this->extra_field2,true);
        $criteria->compare('tag',$this->tag);
		$criteria->compare('activated',$this->activated);
		$criteria->compare('dos_usernames_username',$this->dos_usernames_username,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
    
    public function beforeSave() {
        $purifier = new CHtmlPurifier();
        $this->title = $purifier->purify($this->title);
        $this->content = $purifier->purify($this->content);
        $this->tag = $purifier->purify($this->tag);
     
        return parent::beforeSave();
    }
    
    public function listMenu(){
        $sql = 'SELECT record_id, title'.LANG.', tag FROM '.$this->tableName().' WHERE dos_usernames_username=:user ORDER BY record_order DESC, created DESC';
        $command = Yii::app()->db->createCommand($sql);
        $command->bindParam(":user", $this->subdomain, PDO::PARAM_STR);
        
		return $command->queryAll();
    }
    //Front end - Get home record
    public function homeRecord(){
        $sql = 'SELECT title'.LANG.', content'.LANG.' FROM '.$this->tableName().' WHERE hot=1 AND dos_usernames_username=:user ORDER BY record_order DESC, created DESC';
        $command = Yii::app()->db->createCommand($sql);
        $command->bindParam(":user", $this->subdomain, PDO::PARAM_STR);
        return $command->queryRow();
    }
    //Front end - Get first record
    public function firstRecord(){
        $sql = 'SELECT title'.LANG.', content'.LANG.' FROM '.$this->tableName().' WHERE dos_usernames_username=:user ORDER BY record_order DESC, created DESC';
        $command = Yii::app()->db->createCommand($sql);
        $command->bindParam(":user", $this->subdomain, PDO::PARAM_STR);
        return $command->queryRow();
    }
    //Front end - Get first record
    public function detailRecord($tag){
        $sql = 'SELECT title'.LANG.', content'.LANG.' FROM '.$this->tableName().' WHERE tag=:tag AND dos_usernames_username=:user';
        $command = Yii::app()->db->createCommand($sql);
        $command->bindParam(":tag", $tag, PDO::PARAM_STR);
        $command->bindParam(":user", $this->subdomain, PDO::PARAM_STR);
        return $command->queryRow();
    }
    //Back end - Update Record
    private function updateSort($order, $id){
        $sql = 'UPDATE '.$this->tableName().' SET record_order=:order WHERE record_id=:id';
        $command = Yii::app()->db->createCommand($sql);
        $command->bindParam(":order", $order, PDO::PARAM_INT);
        $command->bindParam(":id", $id, PDO::PARAM_INT);
        return $command->execute();
    }
    //Back end - Update Record
    private function updateShowHidden($activated, $id){
        $sql = 'UPDATE '.$this->tableName().' SET activated=:activated WHERE record_id=:id';
        $command = Yii::app()->db->createCommand($sql);
        $command->bindParam(":activated", $activated, PDO::PARAM_INT);
        $command->bindParam(":id", $id, PDO::PARAM_INT);
        return $command->execute();
    }
    //Back end - Delete Record
    private function deleteRecord($id){
        $sql = 'DELETE FROM '.$this->tableName().' WHERE record_id=:id';
        $command = Yii::app()->db->createCommand($sql);
        $command->bindParam(":id", $id);
        return $command->execute();
    }
    //Back end - Active Item
    public function activeItem($data){
        $flag = $data->getPost('factive', 'disable');
		$ids  = $data->getPost('ids', '');
		$orders = $data->getPost('orders', '');
		$sort = $data->getPost('sort', '');
        $syn = $data->getPost('syn', '');

		if($sort){
			if ( is_array($orders) ){
				while (list($id, $order) = each($orders)){
					$id		= intval($id);
					$order	= intval($order);
					if ( $id && $order ){					
						$this->updateSort($order, $id);
					}
				}
			}
		}else if($syn){

        }else{
			if ( !empty($ids) ){
				if ( !is_array($ids) ){
					$record_id[0] = $ids;
				}
				else{
					$record_id = $ids;
				}
				unset($ids);
				
				if($flag){
					//show or hidden
					$active	= ($flag == "enable") ? 1 : 0;
					
					foreach ($record_id as $value){
						$id = intval($value);
						if ($id){
                            $this->updateShowHidden($active, $id);
						}
					}
				}else{
					//delete
					foreach ($record_id as $value){
						$id = intval($value);
						if ($id){
                            $this->deleteRecord($id);
						}
					}
				}
			}
		}
    }
    
    public function maxRecordOrder(){
        $sql = 'SELECT max(record_order)+1 FROM '.$this->tableName().' WHERE dos_usernames_username=:user';
        $command = Yii::app()->db->createCommand($sql);
        $command->bindParam(":user", $this->subdomain, PDO::PARAM_STR);
        return $command->queryScalar();
    }
}