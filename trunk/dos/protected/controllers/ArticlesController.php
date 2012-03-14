<?php

class ArticlesController extends HomeController {

	public function actionIndex() {
		$models_cat_class = new ArticlesCat();
		$models_class = new Articles();
		$this->render('index', array('articles_menu' => $models_cat_class->listCats(), 'listItems' => $models_class->listItems()));
	}

	public function actionCats($cid) {
		$models_cat_class = new ArticlesCat();
		$models_class = new Articles();
		$this->render('cats', array('articles_menu' => $models_cat_class->listCats(), 'infoCat' => $models_cat_class->infoCat($cid), 'listItemByCat' => $models_class->listItemByCat($cid)));
	}
	public function actionView($id) {
		$this->render('view');
	}

}