<?php

class CustomersController extends HomeController {

	public function actionIndex() {
        $business_class = new Bussiness();
        $model_class = new Customers();

		$this->render('index', array('listBusiness' => $business_class->listCats(), 'items' => $model_class->listAllItem()));
	}

    public function actionCats($cid) {
        $business_class = new Bussiness();
        $model_class = new Customers();

        $this->render('cats', array('listBusiness' => $business_class->listCats(), 'infoCat' => $business_class->detailItem($cid), 'items' => $model_class->listItemByBusinessID($cid)));
    }

	public function actionView($id) {
        $business_class = new Bussiness();
        $model_class = new Customers();

        $this->render('view', array('listBusiness' => $business_class->listCats(), 'item' => $model_class->detailRecord($id)));
	}

}