<?php

class ExportController extends AdministratorController {

	public function actionIndex() {
		Common::export('220312');
		$this->render('index');
	}
}