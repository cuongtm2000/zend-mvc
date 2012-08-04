<?php

/**
 * This is the model class for table "hoiit_module_poll_rows".
 *
 * The followings are the available columns in table 'hoiit_module_poll_rows':
 * @property integer $id
 * @property string $answer
 * @property string $url
 * @property integer $num_vote
 * @property integer $vote_id
 *
 * The followings are the available model relations:
 * @property HoiitModulePoll $vote
 */
class Answers extends CActiveRecord {

    /**
     * Returns the static model of the specified AR class.
     * @param string $className active record class name.
     * @return Answer the static model class
     */
    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

    /**
     * @return string the associated database table name
     */
    public function tableName() {
        return 'hoiit_module_poll_rows';
    }

    /**
     * @return array validation rules for model attributes.
     */
    public function rules() {
        // NOTE: you should only define rules for those attributes that
        // will receive user inputs.
        return array(
            array('answer, vote_id', 'required'),
            array('num_vote, vote_id', 'numerical', 'integerOnly' => true),
            array('answer, url', 'length', 'max' => 255),
            // The following rule is used by search().
            // Please remove those attributes that should not be searched.
            array('id, answer, url, num_vote, vote_id', 'safe', 'on' => 'search'),
        );
    }

    /**
     * @return array relational rules.
     */
    public function relations() {
        // NOTE: you may need to adjust the relation name and the related
        // class name for the relations automatically generated below.
        return array(
            'vote' => array(self::BELONGS_TO, 'HoiitModulePoll', 'vote_id'),
        );
    }

    /**
     * @return array customized attribute labels (name=>label)
     */
    public function attributeLabels() {
        return array(
            'id' => 'ID',
            'answer' => 'Answer',
            'url' => 'Url',
            'num_vote' => 'Num Vote',
            'vote_id' => 'Vote',
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

        $criteria->compare('id', $this->id);
        $criteria->compare('answer', $this->answer, true);
        $criteria->compare('url', $this->url, true);
        $criteria->compare('num_vote', $this->num_vote);
        $criteria->compare('vote_id', $this->vote_id);

        return new CActiveDataProvider($this, array(
                    'criteria' => $criteria,
                ));
    }

    public function countView($id) {
        $command = Yii::app()->db->createCommand('SELECT sum(num_vote) FROM ' . $this->tableName() . ' WHERE vote_id=:id');
        $command->bindParam(":id", $id, PDO::PARAM_INT);
        return $command->queryScalar();
    }

    public function getAnswer($vid) {
        $r = $this->findAll('vote_id= ' . $vid);
     //   var
        $tmp = null;
        if (count($r)) {
            foreach ($r as $value) {
                $tmp['answer'][] = $value['answer'];
                $tmp['url'][] = $value['url'];
                $tmp['ids'][] = $value['id'];
            }
        }
        return $tmp;
    }

}