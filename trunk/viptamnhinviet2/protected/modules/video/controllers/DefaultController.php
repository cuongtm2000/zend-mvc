<?php

class DefaultController extends Controller {
	public $menu_video; //menu video

	public function action(){
		echo 123;
	}

	public function actionIndex() {
		$video_cat_class = new VideoCat();
		$this->menu_video = $video_cat_class->listCats();

		$this->render('index', array('items' => $video_cat_class->listItem(0)));
	}

	public function actionCats($cid, $page = 0) {
		$video_cat_class = new VideoCat();
		$video_class = new Video();

		$this->menu_video = $video_cat_class->listCats();
		$info_cat = $video_cat_class->findCatByTag($cid); //find cat_id
		$this->render('cats', array('info_cat' => $info_cat, 'list_sub_cats' => $video_cat_class->listItem($info_cat['cat_id']), 'list_items' => $video_class->listItemByCat($info_cat['cat_id'])));
	}
}