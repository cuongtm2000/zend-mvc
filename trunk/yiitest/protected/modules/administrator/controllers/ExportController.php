<?php

class ExportController extends AdministratorController {

	public function actionIndex() {
		$this::export('220312');
		$this->render('index');
	}

	public static function export($user) {
		$user_class = new Username();
		if($user_class->checkExistUser($user)){
			$pdo = Yii::app()->db->pdoInstance;
			$sql = '';

			$arr[] = array('dos_bussiness', 'SELECT * FROM dos_bussiness');
			$arr[] = array('dos_templates', 'SELECT * FROM dos_templates');
			$arr[] = array('dos_configs', 'SELECT * FROM dos_configs WHERE dos_templates_template = \''.$user_class->template.'\'');
			$arr[] = array('dos_features', 'SELECT * FROM dos_features');
			$arr[] = array('dos_langs', 'SELECT * FROM dos_langs');
			$arr[] = array('dos_modules', 'SELECT * FROM dos_modules');

			foreach ($arr as $value) {
				$itemsQuery = $pdo->query($value[1]);
				$values = "";
				$items = "";
				while ($itemQuery = $itemsQuery->fetch(PDO::FETCH_ASSOC)) {
					$itemNames = array_keys($itemQuery);
					$itemNames = array_map("addslashes", $itemNames);
					$items = join('`,`', $itemNames);

					$itemValues = array_values($itemQuery);
					//$itemValues = array_map("addslashes", $itemValues);
					$itemValues = str_replace("'", "''", $itemValues);
					$valueString = join("','", $itemValues);
					$valueString = "('" . $valueString . "'),";
					$values .= "\n" . $valueString;
				}
				if ($values != "") {
					$insertSql = "INSERT INTO `$value[0]` (`$items`) VALUES" . rtrim($values, ",") . ";\n\r";
					$sql .= $insertSql;
				}
			}
			ob_start();
			echo $sql;
			$content = ob_get_contents();
			ob_end_clean();
			$content = gzencode($content, 9);

			$saveName = date($user . '-d-m-Y') . ".sql.gz";

			$request = Yii::app()->getRequest();
			$request->sendFile($saveName, $content);
		}
	}
}