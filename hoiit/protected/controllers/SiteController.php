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
        $this->render('index', array('listRecordNew' => $model->listRecordNew(), 'listHitView' => $model->listHitView(), 'listNewUsers' => $user->listNewUsers(), 'listNewComment'=>$comment->listNewComment()));
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

}