<?php

/**
 * This is the model class for table "hoiit_module_poll".
 *
 * The followings are the available columns in table 'hoiit_module_poll':
 * @property integer $record_id
 * @property string $question
 * @property integer $begin_date
 * @property integer $end_date
 * @property integer $record_order
 * @property string $create_date
 * @property integer $enable
 *
 * The followings are the available model relations:
 * @property HoiitModulePollRows[] $hoiitModulePollRows
 */
class Poll extends CActiveRecord {

    public $answers;
    public $views;

    /**
     * Returns the static model of the specified AR class.
     * @param string $className active record class name.
     * @return Poll the static model class
     */
    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

    /**
     * @return string the associated database table name
     */
    public function tableName() {
        return 'hoiit_module_poll';
    }

    /**
     * @return array validation rules for model attributes.
     */
    public function rules() {
        // NOTE: you should only define rules for those attributes that
        // will receive user inputs.
        return array(
            array('question,answers,begin_date, end_date,enable', 'required'),
            //    array('begin_date, end_date, record_order, enable', 'numerical', 'integerOnly' => true),
            array('question', 'length', 'max' => 255),
            // The following rule is used by search().
            // Please remove those attributes that should not be searched.
            array('record_id, question, begin_date, end_date, record_order, create_date, enable', 'safe', 'on' => 'search'),
        );
    }

    /**
     * @return array relational rules.
     */
    public function relations() {
        // NOTE: you may need to adjust the relation name and the related
        // class name for the relations automatically generated below.
        return array(
            'Answers' => array(self::HAS_MANY, 'Answers', 'vote_id'),
        );
    }

    /**
     * @return array customized attribute labels (name=>label)
     */
    public function attributeLabels() {
        return array(
            'record_id' => 'Record',
            'question' => 'Câu hỏi',
            'begin_date' => 'Ngày bắt đầu',
            'end_date' => 'Ngày kết thúc',
            'record_order' => 'Record Order',
            'create_date' => 'Create Date',
            'enable' => 'Hiển thị',
            'answers' => 'Câu trả lời',
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
        $criteria->compare('question', $this->question, true);
        $criteria->compare('begin_date', $this->begin_date);
        $criteria->compare('end_date', $this->end_date);
        $criteria->compare('record_order', $this->record_order);
        $criteria->compare('create_date', $this->create_date, true);
        $criteria->compare('enable', $this->enable);

        return new CActiveDataProvider($this, array(
                    'criteria' => $criteria,
                ));
    }

    public function getFirstItem() {
        $criteria = new CDbCriteria();
        $criteria->with = array('Answers');

        $criteria->select = 'record_id, question';
        $criteria->condition = 'enable = 1 AND begin_date < :time AND end_date > :time ';
        $criteria->order = 'record_order ASC';
        $criteria->params = array(':time' => time());
        return $this->model()->find($criteria);
    }
    public function getDetail($id) {
        return $this->model()->findByPk($id);
    }

    //Back end - List item admin
    public function listItemAdmin() {
        $criteria = new CDbCriteria();
        //$criteria->with = array('Language', 'AboutLanguage');
        $criteria->order = 'record_order DESC, create_date DESC';
        $count = $this->model()->count($criteria);

        // elements per page
        $pages = new CPagination($count);
        $pages->pageSize = 15;
        $pages->applyLimit($criteria);

        $tmp = $this->model()->findAll($criteria);
        $ans = new Answers();
        foreach ($tmp as &$value) {
            $value['views'] = $ans->countView($value->record_id);
        }

        return array('models' => $tmp, 'pages' => $pages);
    }

    public function beforeSave() {
        $tmp = explode('-', $this->begin_date);
        $this->begin_date = mktime(0, 0, 0, $tmp[1], $tmp[0], $tmp[2]);
        $tmp = explode('-', $this->end_date);
        $this->end_date = mktime(23,59 , 59, $tmp[1], $tmp[0], $tmp[2]);
        return parent::beforeSave();
    }

    public function afterSave() {
        $answer = $this->answers['answer'];
        $url = $this->answers['url'];

        $size = count($answer);
        $ids = isset($this->answers['ids']) ? $this->answers['ids'] : array();
        for ($i = 0; $i < $size; $i++) {
            if ($answer[$i] != '') {
                $ans = isset($ids[$i]) ? Answers::model()->findByPk($ids[$i]) : new Answers();
                $ans->answer = $answer[$i];
                $ans->url = $url[$i];
                $ans->vote_id = $this->record_id;
                $ans->save();
            } else {
                if (isset($ids[$i]))
                    Answers::model()->deleteByPk($ids[$i]);
            }
        }
        return parent::afterSave();
    }

    public function loadEdit($id) {
        $tmp = $this->findByPk($id);
        $ans = new Answers();
        $tmp->answers = $ans->getAnswer($tmp['record_id']);
        $tmp['begin_date'] = date("d-m-Y", $tmp['begin_date']);
        $tmp['end_date'] = date("d-m-Y", $tmp['end_date']);
        return $tmp;
    }

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
                        $this->model()->updateByPk($id, array('record_order' => $order));
                    }
                }
            }
        } else if ($syn) {
            $criteria = new CDbCriteria();
            $criteria->order = 'record_order ASC, create_date ASC';
            $models = $this->model()->findAll($criteria);

            $i = 1;
            foreach ($models as $model) {
                $this->model()->updateByPk($model['record_id'], array('record_order' => $i));
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

                if ($flag) {                    //show or hidden
                    $active = ($flag == "enable") ? 1 : 0;
                    foreach ($record_id as $value) {
                        $id = intval($value);
                        if ($id)
                            $this->model()->updateByPk($id, array('enable' => $active));
                    }
                } else {                    //delete
                    foreach ($record_id as $value) {
                        $id = intval($value);
                        if ($id) {
                          //  AboutLanguage::model()->deleteRecord($id);
                            $this->model()->deleteByPk($id);
                        }
                    }
                }
            }
        }
    }

}