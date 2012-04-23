<?php

class SiteController extends Controller {

	public function actionSitemap() {
		header('Content-Type: application/xml');
		$this->renderPartial('sitemap');
	}

	public function actionIndex() {
		$model = new Posts;
		$user = new Usernames;
		$comment = new Comments;
		$this->render('index', array('listRecordTypeNew' => $model->listRecordTypeNew(1), 'listRecordNew' => $model->listRecordNew(), 'listHitView' => $model->listHitView(), 'listNewUsers' => $user->listNewUsers(), 'listNewComment' => $comment->listNewComment()));
	}

	public function actionError() {
		if ($error = Yii::app()->errorHandler->error) {
			if (Yii::app()->request->isAjaxRequest)
				echo $error['message'];
			else {
				$this->render('error', $error);
			}
		}
	}

}