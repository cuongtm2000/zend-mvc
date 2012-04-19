<?php

class TemplatesController extends HomeController {

	public function actionIndex() {
		$this->pageTitle = 'Thư viện mẫu website';
		$business_class = new Bussiness();
		$tempaltes_business_class = new TemplatesBussiness();

		$this->render('index', array('listBusiness' => $business_class->listCats(), 'templatesBusiness' => $tempaltes_business_class->listTempaltesByBusiness('root', 1)));
	}
}