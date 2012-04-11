<?php
/**
 *
 * Export & import sql
 *
 * @author davidhhuan
 */
class DatabaseHelper {
	/**
	 * Export the sql to a file
	 *
	 * @author davidhhuan
	 * @param bool $withData: Whether to export the insert-data at the same time
	 * @param bool $dropTable: Add to drop the table or not
	 * @param string $saveName: the saved file name
	 * @param string $savePath
	 *
	 * @return mixed
	 */
	public static function export($withData = true, $dropTable = false, $saveName = null, $savePath = false) {
		$pdo = Yii::app()->db->pdoInstance;
		$mysql = '';
		$statments = $pdo->query("show tables");
		foreach ($statments as $value)
		{
			$tableName = $value[0];
			if ($dropTable === true) {
				$mysql .= "DROP TABLE IF EXISTS `$tableName`;\n";
			}
			$tableQuery = $pdo->query("show create table `$tableName`");
			$createSql = $tableQuery->fetch();
			$mysql .= $createSql['Create Table'] . ";\r\n\r\n";
			if ($withData != 0) {
				$itemsQuery = $pdo->query("select * from `$tableName`");
				$values = "";
				$items = "";
				while ($itemQuery = $itemsQuery->fetch(PDO::FETCH_ASSOC))
				{
					$itemNames = array_keys($itemQuery);
					$itemNames = array_map("addslashes", $itemNames);
					$items = join('`,`', $itemNames);
					$itemValues = array_values($itemQuery);
					$itemValues = array_map("addslashes", $itemValues);
					$valueString = join("','", $itemValues);
					$valueString = "('" . $valueString . "'),";
					$values .= "\n" . $valueString;
				}
				if ($values != "") {
					$insertSql = "INSERT INTO `$tableName` (`$items`) VALUES" . rtrim($values, ",") . ";\n\r";
					$mysql .= $insertSql;
				}
			}
			//$mysql.="/*-----------------------------------------------------*/\n\r";
		}

		ob_start();
		echo $mysql;
		$content = ob_get_contents();
		ob_end_clean();
		$content = gzencode($content, 9);

		if (is_null($saveName)) {
			$saveName = date('YmdHms') . ".sql.gz";
		}

		if ($savePath === false) {
			//header("Content-Type: application/force-download");
			//header("Content-Type: application/octet-stream");
			//header("Content-Type: application/download");
			//header("Content-Description: Download SQL Export");
			//header('Content-Disposition: attachment; filename='.$saveName);
			//echo $content;
			//die();
			$request = Yii::app()->getRequest();
			$request->sendFile($saveName, $content);
		}
		else
		{
			$filePath = $savePath ? $savePath . '/' . $saveName : $saveName;
			file_put_contents($filePath, $content);
			echo "Database file saved: " . $saveName;
		}
	}


	/**
	 * import sql from a *.sql file
	 *
	 * @author davidhhuan
	 * @param string $file: with the path and the file name
	 *
	 * @return mixed
	 */
	public static function import($file = '') {
		$pdo = Yii::app()->db->pdoInstance;
		try {
			if (file_exists($file)) {
				$sqlStream = file_get_contents($file);
				var_dump($sqlStream);
				/*$sqlStream = rtrim($sqlStream);
				$newStream = preg_replace_callback("/\((.*)\)/", create_function('$matches', 'return str_replace(";"," $$$ ",$matches[0]);'), $sqlStream);
				$sqlArray = explode(";", $newStream);
				foreach ($sqlArray as $value){
					if (!empty($value)) {
						$sql = str_replace(" $$$ ", ";", $value) . ";";
						$pdo->exec($sql);
					}
				}
				//echo "succeed to import the sql data!";
				return true;*/
			}
		}
		catch (PDOException $e) {
			echo $e->getMessage();
			exit;
		}
	}

	public function importDataSample($userExport, $userImport) {
		$user_class = new Username();
		if ($user_class->checkExistUser($userExport)) {
			//dos_module_abouts
			$str[] = "INSERT INTO `dos_module_abouts` (title, titleen, content, contenten, hit, record_order, hot, extra_field1, extra_field2, tag, tagen, description, descriptionen, activated, dos_usernames_username) SELECT title, titleen, content, contenten, hit, record_order, hot, extra_field1, extra_field2, tag, tagen, description, descriptionen, activated, '" . $userImport . "' FROM `dos_module_abouts` WHERE dos_usernames_username = '" . $userExport . "'";
			//dos_module_services
			$str[] = "INSERT INTO `dos_module_services` (title, titleen, content, contenten, hit, record_order, hot, extra_field1, extra_field2, tag, tagen, description, descriptionen, activated, dos_usernames_username) SELECT title, titleen, content, contenten, hit, record_order, hot, extra_field1, extra_field2, tag, tagen, description, descriptionen, activated, '" . $userImport . "' FROM `dos_module_services` WHERE dos_usernames_username = '" . $userExport . "'";
			//dos_module_contacts
			$str[] = "INSERT INTO `dos_module_contacts` (title, titleen, content, contenten, record_order, hit, hot, tag, tagen, description, descriptionen, enable, dos_usernames_username) SELECT title, titleen, content, contenten, record_order, hit, hot, tag, tagen, description, descriptionen, enable, '" . $userImport . "' FROM `dos_module_contacts` WHERE dos_usernames_username = '" . $userExport . "'";
			//dos_module_supports
			$str[] = "INSERT INTO `dos_module_supports` (support_name, support_nameen, support_phone, support_value, support_order, support_type, dos_usernames_username) SELECT support_name, support_nameen, support_phone, support_value, support_order, support_type, '" . $userImport . "' FROM `dos_module_supports` WHERE dos_usernames_username = '" . $userExport . "'";
			//dos_module_webs
			$str[] = "INSERT INTO `dos_module_webs` (web_name, web_value, dos_usernames_username) SELECT web_name, web_value, '" . $userImport . "' FROM `dos_module_webs` WHERE dos_usernames_username = '" . $userExport . "'";
			//dos_user_langs
			$str[] = "INSERT INTO `dos_user_langs` (lang_name, lang, langen, dos_usernames_username) SELECT lang_name, lang, langen, '" . $userImport . "' FROM `dos_user_langs` WHERE dos_usernames_username = '" . $userExport . "'";
			//dos_module_advs
			$str[] = "INSERT INTO `dos_module_advs` (title, titleen, pic_thumb, url, start_date, end_date, hits, record_order, position, type, enable, dos_usernames_username) SELECT title, titleen, pic_thumb, url, start_date, end_date, hits, record_order, position, type, enable, '" . $userImport . "' FROM `dos_module_advs` WHERE dos_usernames_username = '" . $userExport . "'";
			//dos_module_banners
			$str[] = "INSERT INTO `dos_module_banners` (banner_name, banner_url, banner_link, banner_order, banner_type, position, enable, dos_usernames_username) SELECT banner_name, banner_url, banner_link, banner_order, banner_type, position, enable, '" . $userImport . "' FROM `dos_module_banners` WHERE dos_usernames_username = '" . $userExport . "'";
			//dos_module_news_cat
			$str[] = "INSERT INTO `dos_module_news_cat` (cat_parent_id, cat_title, cat_titleen, preview, previewen, tag, tagen, description, descriptionen, pic_full, cat_order, cat_extra1, cat_extra2, cat_enable, dos_usernames_username) SELECT cat_parent_id, cat_title, cat_titleen, preview, previewen, tag, tagen, description, descriptionen, pic_full, cat_order, cat_extra1, cat_extra2, cat_enable, '" . $userImport . "' FROM `dos_module_news_cat` WHERE dos_usernames_username = '" . $userExport . "'";

			$str[] = "INSERT INTO `dos_module_advs` (title, titleen, pic_thumb, url, start_date, end_date, hits, record_order, position, type, enable, dos_usernames_username) SELECT title, titleen, pic_thumb, url, start_date, end_date, hits, record_order, position, type, enable, '" . $userImport . "' FROM `dos_module_advs` WHERE dos_usernames_username = '" . $userExport . "'";
			//$str[] = "INSERT INTO `dos_module_advs` (title, titleen, pic_thumb, url, start_date, end_date, hits, record_order, position, type, enable, dos_usernames_username) SELECT title, titleen, pic_thumb, url, start_date, end_date, hits, record_order, position, type, enable, '" . $userImport . "' FROM `dos_module_advs` WHERE dos_usernames_username = '" . $userExport . "'";

			foreach($str as $value){
				$this->sqlQuery($value);
			}
			//copy file
			$myfile = Yii::app()->file->set('public/userfiles/images/'.$userExport, true);
			$myfile->copy($userImport);
		}
	}

	private function sqlQuery($str) {
		$pdo = Yii::app()->db->pdoInstance;
		try {
			$newStream = preg_replace_callback("/\((.*)\)/", create_function('$matches', 'return str_replace(";"," $$$ ",$matches[0]);'), $str);
			$sqlArray = explode(";", $newStream);
			foreach ($sqlArray as $value) {
				if (!empty($value)) {
					$sql = str_replace(" $$$ ", ";", $value) . ";";
					$pdo->exec($sql);
				}
			}
			//echo "succeed to import the sql data!";
			return true;
		} catch (PDOException $e) {
			echo $e->getMessage();
			exit;
		}
	}
}
