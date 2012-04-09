<?php

class ExportController extends AdministratorController {

	public function actionIndex() {
		if (Yii::app()->request->getIsPostRequest()) {
			$user = Yii::app()->request->getPost('user', '');
			if(isset($_POST['submit-data'])){
				Common::export(trim($user));
			}
		}

		//$zip = Yii::app()->zip;
		//$zip->makeZip('./public/userfiles/images/220312','./toto.zip'); // make an ZIP archive
		//var_dump(var_export($zip->infosZip('./toto.zip')));

		//$content = var_export($zip->infosZip('./toto.zip'), false);
		//$request = Yii::app()->getRequest();
		//$request->sendFile('sss.zip', $content);

		/*Yii::import('ext.EZipAn.EZipAn');
		EZipAn::test();*/
		$this->render('index');
	}
}