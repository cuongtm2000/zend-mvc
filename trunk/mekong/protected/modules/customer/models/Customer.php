<?php

/**
 * This is the model class for table "hoiit_module_customer".
 *
 * The followings are the available columns in table 'hoiit_module_customer':
 * @property integer $record_id
 * @property string $title
 * @property string $pic_thumb
 * @property string $pic_full
 * @property string $address
 * @property string $website
 * @property string $create_date
 * @property string $description
 * @property integer $record_order
 * @property integer $enable
 */
class Customer extends CActiveRecord {

    private $_oldImageThumb;
    private $_oldImageFull;

    /**
     * Returns the static model of the specified AR class.
     * @param string $className active record class name.
     * @return Customer the static model class
     */
    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

    /**
     * @return string the associated database table name
     */
    public function tableName() {
        return 'hoiit_module_customer';
    }

    /**
     * @return array validation rules for model attributes.
     */
    public function rules() {
        // NOTE: you should only define rules for those attributes that
        // will receive user inputs.
        return array(
            array('title, tag, address, description', 'required'),
            array('record_order, enable', 'numerical', 'integerOnly' => true),
            array('title, pic_thumb, pic_full', 'length', 'max' => 100),
            array('address', 'length', 'max' => 255),
            array('website', 'length', 'max' => 200),
            // The following rule is used by search().
            // Please remove those attributes that should not be searched.
            array('record_id, title, pic_thumb, pic_full, address, website, create_date, description, record_order, enable', 'safe', 'on' => 'search'),
        );
    }

    /**
     * @return array relational rules.
     */
    public function relations() {
        // NOTE: you may need to adjust the relation name and the related
        // class name for the relations automatically generated below.
        return array(
        );
    }

    /**
     * @return array customized attribute labels (name=>label)
     */
    public function attributeLabels() {
        return array(
            'title' => 'Tên khách hàng',
            'pic_thumb' => 'Hình nhỏ',
            'pic_full' => 'Hình lớn',
            'address' => 'Địa chỉ',
            'website' => 'Website',
            'create_date' => 'Create Date',
            'description' => 'Mô tả',
            'enable' => 'Hiển thị',
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
        $criteria->compare('pic_thumb', $this->pic_thumb, true);
        $criteria->compare('pic_full', $this->pic_full, true);
        $criteria->compare('address', $this->address, true);
        $criteria->compare('website', $this->website, true);
        $criteria->compare('create_date', $this->create_date, true);
        $criteria->compare('description', $this->description, true);
        $criteria->compare('record_order', $this->record_order);
        $criteria->compare('enable', $this->enable);

        return new CActiveDataProvider($this, array(
                    'criteria' => $criteria,
                ));
    }

    //Back end - List item admin
    public function listItemAdmin() {
        $criteria = new CDbCriteria();
        $criteria->order = 'record_order DESC, create_date DESC';
        $count = $this->count($criteria);

        // elements per page
        $pages = new CPagination($count);
        $pages->pageSize = 20;
        $pages->applyLimit($criteria);

        return array('models' => $this->findAll($criteria), 'pages' => $pages);
    }

    //Back end - Get record to Edit
    public function loadEdit($id) {
        $_model = $this->findByPk($id);
        if ($_model === null) {
            throw new CHttpException(404, 'The requested page does not exist.');
        }
        return $_model;
    }

    
    //Back end - Get record to Edit
    public function loadView($id) {
        $_model = $this->find('tag=\''.$id.'\'');
        if ($_model === null) {
            throw new CHttpException(404, 'The requested page does not exist.');
        }
        return $_model;
    }
    
    //Back end - Get max record
    private function maxRecordOrder() {
        $command = Yii::app()->db->createCommand('SELECT max(record_order) AS max FROM ' . $this->tableName());
        return $command->queryScalar() + 1;
    }

    public function beforeSave() {
        $purifier = new CHtmlPurifier();

        $this->title = $purifier->purify(trim($this->title));
        if(strpos($this->website,'http')===FALSE)
            $this->website='http://'.$this->website;
        
        if ($this->isNewRecord) {
            $this->record_order = $this->maxRecordOrder();
            if ($_FILES[__CLASS__]['name']['pic_thumb']) {
                Yii::import('ext.SimpleImage.CSimpleImage');
                $file = new CSimpleImage();
                $this->pic_thumb = $file->processUpload($_FILES[__CLASS__]['name']['pic_thumb'], $_FILES[__CLASS__]['tmp_name']['pic_thumb'], Config::getValue('customer_width'), Config::getValue('customer_height'), '/image/' . strtolower(__CLASS__), $this->title);
            }
            if ($_FILES[__CLASS__]['name']['pic_full']) {
                Yii::import('ext.SimpleImage.CSimpleImage');
                $file = new CSimpleImage();
                $this->pic_full = $file->processUpload($_FILES[__CLASS__]['name']['pic_full'], $_FILES[__CLASS__]['tmp_name']['pic_full'], 800, 800, '/image/' . strtolower(__CLASS__), $this->title);
            }
        } else {
            //check file old and upload
            if ($_FILES[__CLASS__]['name']['pic_thumb']) {
                Yii::import('ext.SimpleImage.CSimpleImage');
                $file = new CSimpleImage();
                $this->pic_thumb = $file->processUpload($_FILES[__CLASS__]['name']['pic_thumb'], $_FILES[__CLASS__]['tmp_name']['pic_thumb'], Config::getValue('customer_width'), Config::getValue('customer_height'), '/image/' . strtolower(__CLASS__), $this->title, $this->_oldImageThumb);
            } else {
                $this->pic_thumb = $this->_oldImageThumb;
            }
            if ($_FILES[__CLASS__]['name']['pic_full']) {
                Yii::import('ext.SimpleImage.CSimpleImage');
                $file = new CSimpleImage();
                $this->pic_full = $file->processUpload($_FILES[__CLASS__]['name']['pic_full'], $_FILES[__CLASS__]['tmp_name']['pic_full'], 800, 800, '/image/' . strtolower(__CLASS__), $this->title, $this->_oldImageFull);
            } else {
                $this->pic_full = $this->_oldImageFull;
            }
        }

        return parent::beforeSave();
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
                        $this->updateByPk($id, array('record_order' => $order));
                    }
                }
            }
        } else if ($syn) {
            $criteria = new CDbCriteria();
            $criteria->order = 'record_order ASC, create_date ASC';

            $models = $this->findAll($criteria);

            $i = 1;
            foreach ($models as $model) {
                $this->updateByPk($model['record_id'], array('record_order' => $i));
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
                            $this->updateByPk($id, array('enable' => $active));
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

    public function afterFind() {
        parent::afterFind();
        $this->_oldImageThumb = $this->pic_thumb;
        $this->_oldImageFull = $this->pic_full;
    }

}