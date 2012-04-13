<?php

class ExportController extends AdministratorController {

	public function actionIndex() {
		/*if (Yii::app()->request->getIsPostRequest()) {
			$common_class = new Common();
			$user = Yii::app()->request->getPost('user', '');

			if (isset($_POST['submit-data'])) {
				DatabaseHelper::export(trim($user));
			}
			if (isset($_POST['submit-file'])) {
				$common_class->recursiveMkdir('/assets/tmp/public/userfiles/images/220312/'); //create folder 'tmp'
				$myfile = Yii::app()->file->set('public/userfiles/images/220312', true);
				$myfile->copy('../../../assets/tmp/public/userfiles/images/220312/');
			}

		}

		$this->render('index');*/

		$userImport = 'thanhansoft';

		$str = "SELECT cat_id, cat_parent_id, cat_title, cat_titleen, preview, previewen, tag, tagen, description, descriptionen, pic_full, cat_order, cat_extra1, cat_extra2, cat_enable FROM `dos_module_news_cat` WHERE dos_usernames_username = 'dos'";

		$command = Yii::app()->db->createCommand($str);
		$rows = $command->queryAll();
		foreach($rows as $row){
			$sql = "INSERT INTO `dos_module_news_cat` (cat_parent_id, cat_title, cat_titleen, preview, previewen, tag, tagen, description, descriptionen, pic_full, cat_order, cat_extra1, cat_extra2, cat_enable, dos_usernames_username) VALUE('".$row['cat_parent_id']."', '".$row['cat_title']."', '".$row['cat_titleen']."', '".$row['preview']."', '".$row['previewen']."', '".$row['tag']."', '".$row['tagen']."', '".$row['description']."', '".$row['descriptionen']."', '".$row['pic_full']."', '".$row['cat_order']."', '".$row['cat_extra1']."', '".$row['cat_extra2']."', '".$row['cat_enable']."', '".$userImport."')";
			$data = new DatabaseHelper();
			$data->sqlQuery($sql);
			//echo Yii::app()->db->getLastInsertId();

			$str = "INSERT INTO `dos_module_news` (title, titleen, pic_thumb, preview, previewen, content, contenten, tag, tagen, description, descriptionen, hits, record_order, hot, extra_field1, extra_field2, enable, dos_module_item_cat_cat_id) SELECT title, titleen, pic_thumb, preview, previewen, content, contenten, tag, tagen, description, descriptionen, hits, record_order, hot, extra_field1, extra_field2, enable, ".Yii::app()->db->getLastInsertId()." FROM `dos_module_news` WHERE dos_module_item_cat_cat_id = ".$row['cat_id'];
			$data->sqlQuery($str);
		}
	}
}