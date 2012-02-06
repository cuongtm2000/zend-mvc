<?php

/**
 * This is the model class for table "hoiit_comments".
 *
 * The followings are the available columns in table 'hoiit_comments':
 * @property integer $comment_id
 * @property string $comment_title
 * @property string $comment_content
 * @property integer $comment_enable
 * @property string $comment_date
 * @property string $hoiit_usernames_username
 * @property integer $hoiit_posts_post_id
 *
 * The followings are the available model relations:
 * @property HoiitPosts $hoiitPostsPost
 * @property HoiitUsernames $hoiitUsernamesUsername
 */
class Comments extends CActiveRecord {

    /**
     * Returns the static model of the specified AR class.
     * @param string $className active record class name.
     * @return Comments the static model class
     */
    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

    /**
     * @return string the associated database table name
     */
    public function tableName() {
        return 'hoiit_comments';
    }

    /**
     * @return array validation rules for model attributes.
     */
    public function rules() {
        // NOTE: you should only define rules for those attributes that
        // will receive user inputs.
        return array(
            array('comment_title, comment_content', 'required'),
            array('comment_enable, hoiit_posts_post_id', 'numerical', 'integerOnly' => true),
            array('comment_title', 'length', 'max' => 100),
            array('comment_content', 'length', 'max' => 500),
            array('hoiit_usernames_username', 'length', 'max' => 40),
            // The following rule is used by search().
            // Please remove those attributes that should not be searched.
            array('comment_id, comment_title, comment_content, comment_enable, comment_date, hoiit_usernames_username, hoiit_posts_post_id', 'safe', 'on' => 'search'),
        );
    }

    /**
     * @return array relational rules.
     */
    public function relations() {
        // NOTE: you may need to adjust the relation name and the related
        // class name for the relations automatically generated below.
        return array(
            'hoiitPostsPost' => array(self::BELONGS_TO, 'HoiitPosts', 'hoiit_posts_post_id'),
            'hoiitUsernamesUsername' => array(self::BELONGS_TO, 'HoiitUsernames', 'hoiit_usernames_username'),
        );
    }

    /**
     * @return array customized attribute labels (name=>label)
     */
    public function attributeLabels() {
        return array(
            'comment_id' => 'Comment',
            'comment_title' => 'Comment Title',
            'comment_content' => 'Comment Content',
            'comment_enable' => 'Comment Enable',
            'comment_date' => 'Comment Date',
            'hoiit_usernames_username' => 'Hoiit Usernames Username',
            'hoiit_posts_post_id' => 'Hoiit Posts Post',
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

        $criteria->compare('comment_id', $this->comment_id);
        $criteria->compare('comment_title', $this->comment_title, true);
        $criteria->compare('comment_content', $this->comment_content, true);
        $criteria->compare('comment_enable', $this->comment_enable);
        $criteria->compare('comment_date', $this->comment_date, true);
        $criteria->compare('hoiit_usernames_username', $this->hoiit_usernames_username, true);
        $criteria->compare('hoiit_posts_post_id', $this->hoiit_posts_post_id);

        return new CActiveDataProvider($this, array(
                    'criteria' => $criteria,
                ));
    }
    public function beforeSave() {
        $posts = new Posts;
        $purifier = new CHtmlPurifier();
        $this->comment_title = $purifier->purify(trim($this->comment_title));
        $this->comment_content = $purifier->purify(trim($this->comment_content));
        $this->hoiit_usernames_username = Yii::app()->user->id;
        $this->hoiit_posts_post_id = $posts->getIdByLink(Yii::app()->request->getQuery('id'));
        return parent::beforeSave();
    }
    //Front end - list Comment
    public function listNewComment() {
        $command = Yii::app()->db->createCommand('SELECT comment_id, comment_title, hoiit_posts.hoiit_usernames_username AS username, post_link, cat_name FROM ' . $this->tableName() . ', hoiit_posts, hoiit_cats WHERE ' . $this->tableName() . '.hoiit_posts_post_id = hoiit_posts.post_id AND hoiit_posts.hoiit_cats_cat_id = hoiit_cats.cat_id AND comment_enable=1 ORDER BY comment_date DESC LIMIT 0, 10');
        return $command->queryAll();
    }
    //Front end - list Comment
    public function listCommentByPost($link) {
        $post = new Posts;
        $id = $post->getIdByLink($link);
        $command = Yii::app()->db->createCommand('SELECT comment_id, comment_title, comment_content, comment_date, hoiit_usernames_username FROM ' . $this->tableName() . ' WHERE comment_enable=1 AND hoiit_posts_post_id=:postid ORDER BY comment_date ASC');
        $command->bindParam(':postid', $id, PDO::PARAM_INT);
        return $command->queryAll();
    }
    //Back end - delete comment
    public function deleteRecordByPostID($post_id){
        $command = Yii::app()->db->createCommand('DELETE FROM ' . $this->tableName() . ' WHERE hoiit_posts_post_id=:post_id');
        $command->bindParam(':post_id', $post_id, PDO::PARAM_INT);
        $command->execute();
    }
}