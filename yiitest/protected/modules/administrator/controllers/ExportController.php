<?php

class ExportController extends AdministratorController {

	public function actionIndex() {
		if (Yii::app()->request->getIsPostRequest()) {
			$common_class = new Common();
			$user = Yii::app()->request->getPost('user', '');
			if (isset($_POST['submit-data'])) {
				Common::export(trim($user));
			}
			if (isset($_POST['submit-file'])) {
				$common_class->recursiveMkdir('/assets/tmp/public/userfiles/images/220312/'); //create folder 'tmp'
				$myfile = Yii::app()->file->set('public/userfiles/images/220312', true);
				$myfile->copy('../../../assets/tmp/public/userfiles/images/220312/');
			}
		}

		$this->render('index');
	}
}