<?php

class DefaultController extends Controller {
	public $menu_news; //menu news

	public function actionIndex() {
		$news_cat_class = new NewsCat();
		$news_class = new News();

		$this->menu_news = $news_cat_class->listCats();

		$this->render('index', array('listItems' => $news_class->listItems()));
	}

	public function actionCats($cid, $page = 0) {
		$news_cat_class = new NewsCat();
		$news_class = new News();

		$this->menu_news = $news_cat_class->listCats();
		$info_cat = $news_cat_class->findCatByTag($cid); //find cat_id

		$this->render('cats', array('info_cat' => $info_cat, 'list_items' => $news_class->listItemByCat($info_cat['cat_id'])));
	}

	public function actionView($id) {
		$news_cat_class = new NewsCat();
		$model_class = new News();

		$this->menu_news = $news_cat_class->listCats();
		$data['item'] = $model_class->detailItem($id);

		$this->render('view', $data);
	}
}