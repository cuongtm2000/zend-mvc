<?php

class SiteController extends Controller {

	public function actionSitemap() {
		$cats = Cats::model()->findAll(array('order' => 'cat_sort ASC'));
		$posts = Posts::model()->findAll(array('order' => 'post_sort DESC, post_create DESC', 'condition' => 'post_enable=1'));

		header('Content-Type: application/xml');
		$this->renderPartial('sitemap', array('cats' => $cats, 'posts' => $posts));
	}

	public function actionIndex() {
		$model = new Posts;
		$user = new Usernames;
		$comment = new Comments;
		$this->render('index', array('listRecordNew' => $model->listRecordNew(), 'listHitView' => $model->listHitView(), 'listNewUsers' => $user->listNewUsers(), 'listNewComment' => $comment->listNewComment()));
	}

	public function actionError() {
		if ($error = Yii::app()->errorHandler->error) {
			if (Yii::app()->request->isAjaxRequest)
				echo $error['message'];
			else{
				$this->render('error', $error);
			}
		}
	}

}