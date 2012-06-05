<?php

class TutorialController extends HomeController {

	public function actionIndex() {
		$this->pageTitle = Yii::t('main', 'tutorial-pageTitle');

		$models_cat_class = new TutorialCat();
		$models_class = new Tutorial();
		$this->render('index', array('articles_menu' => $models_cat_class->listCats(), 'listItems' => $models_class->listItems()));
	}

	public function actionCats($cid) {
		$models_cat_class = new TutorialCat();
		$models_class = new Tutorial();
		$this->render('cats', array('articles_menu' => $models_cat_class->listCats(), 'infoCat' => $models_cat_class->infoCat($cid), 'listItemByCat' => $models_class->listItemByCat($cid)));
	}
	public function actionView($id) {
		$models_cat_class = new TutorialCat();
		$articles_class = new Tutorial();

		$this->render('view', array('articles_menu' => $models_cat_class->listCats(), 'item' => $articles_class->loadEdit($articles_class->getIDbyTag($id))));
	}

}