<?php

class CustomersController extends HomeController {

	public function actionIndex() {
        $model_class = new Customers();

		$this->render('index', array('items' => $model_class->listAllItem()));
	}

    public function actionCats($cid) {
        $business_class = new Bussiness();
        $model_class = new Customers();

        $this->render('cats', array('infoCat' => $business_class->detailItem($cid), 'items' => $model_class->listItemByBusinessID($cid)));
    }

	public function actionView($id) {
        $model_class = new Customers();

        $this->render('view', array('item' => $model_class->detailRecord($id)));
	}

}