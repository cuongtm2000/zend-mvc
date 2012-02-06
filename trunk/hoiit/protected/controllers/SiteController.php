<?php

class SiteController extends Controller {

    /**
     * This is the default 'index' action that is invoked
     * when an action is not explicitly requested by users.
     */
    public function actionIndex() {
        $model = new Posts;
        $user = new Usernames;
        $comment = new Comments;
        $this->render('index', array('listRecordNew' => $model->listRecordNew(), 'listHitView' => $model->listHitView(), 'listNewUsers' => $user->listNewUsers(), 'listNewComment' => $comment->listNewComment()));
    }

    /**
     * This is the action to handle external exceptions.
     */
    public function actionError() {
        if ($error = Yii::app()->errorHandler->error) {
            if (Yii::app()->request->isAjaxRequest)
                echo $error['message'];
            else
                $this->render('error', $error);
        }
    }

    public function actionFeed() {
        Yii::import('application.vendors.*');
        require_once('Zend/Feed.php');
        require_once('Zend/Feed/Rss.php');

        // retrieve the latest 20 posts
        $posts = Posts::model()->findAll(array(
            'order' => 'post_create DESC',
            'limit' => 20,
                ));
        // convert to the format needed by Zend_Feed
        $entries = array();
        foreach ($posts as $post) {
            $entries[] = array(
                'title' => $post->post_title,
                'link' => $this->createAbsoluteUrl('post/show', array('id' => $post->post_id)),
                'description' => $post->post_detail,
                //'lastUpdate' => $post->createTime,
            );
        }
        // generate and render RSS feed
        $feed = Zend_Feed::importArray(array(
                    'title' => 'My Post Feed',
                    'link' => $this->createUrl(''),
                    'charset' => 'UTF-8',
                    'entries' => $entries,
                        ), 'rss');
        $feed->send();
    }

}