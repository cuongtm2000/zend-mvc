<?php

class DefaultController extends Controller {
	public $menu_news; //menu news

	public function actionIndex() {
		$news_cat_class = new NewsCat();
		$news_class = new News();

		$this->menu_news = $news_cat_class->listCats();
		$this->render('index', array('listItems' => $news_class->listItems()));
	}

	public function actionCats() {

	}
}