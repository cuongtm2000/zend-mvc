<?php

class TemplatesController extends HomeController {

	public function actionIndex() {
		$this->pageTitle = 'Thư viện mẫu website';
		$this->description = 'Danh sách mẫu website dùng cho việc tạo website trực tuyến, bạn hãy chọn mẫu, xem các tính năng, xem thử các website đã triển khai';

		$business_class = new Bussiness();
		$tempaltes_business_class = new TemplatesBussiness();

		$this->render('index', array('listBusiness' => $business_class->listCats(), 'templatesBusiness' => $tempaltes_business_class->listTempaltesByBusiness('root', 1)));
	}
	public function actionCats($cid) {
		$business_class = new Bussiness();
		$tempaltes_business_class = new TemplatesBussiness();

		$this->render('cats', array('listBusiness' => $business_class->listCats(), 'infoCat' => $business_class->detailItem($cid), 'templatesBusiness' => $tempaltes_business_class->listTempaltesByBusiness($cid, 1)));
	}
    public function actionView($id) {
        $business_class = new Bussiness();
        $template_class = new Templates();

        $this->render('view', array('listBusiness' => $business_class->listCats(), 'detail' => $template_class->loadEdit($id)));
    }
}