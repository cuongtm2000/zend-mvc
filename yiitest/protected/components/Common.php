<?php

class Common {

	public static function menuMultiLevel($data, $models, $link) {
		$rowsize = count($data);
		$model = new $models();
		$row = $model->findCatByTag(Yii::app()->request->getQuery('cid')); //find cat_id
		$cat_id = $row['cat_id'];

		//Find parent_id
		$parent_id = $cat_id;
		if ($cat_id) {
			foreach ($data as $value) {
				if ($cat_id == $value['cat_id']) {
					if ($value['cat_parent_id']) {
						$parent_id = $value['cat_parent_id'];
					}
					break;
				}
			}
		}

		//Display cat menu
		for ($i = 0; $i < $rowsize; $i++) {
			if ($data[$i]['cat_parent_id'] == 0) {
				//Parent categories
				echo '<li><a href="' . Yii::app()->request->baseUrl . LANGURL . '/' . $link . '/' . $data[$i]['tag' . Yii::app()->session['lang']] . '" title="' . $data[$i]['cat_title' . LANG] . '">' . $data[$i]['cat_title' . LANG] . '</a>';
				//Sub categories
				if ($parent_id && ($parent_id == $data[$i]['cat_id'])) {
					for ($j = 0; $j < $rowsize; $j++) {
						if ($data[$j]['cat_parent_id'] == $data[$i]['cat_id']) {
							echo '<ul>';
							for ($j = 0; $j < $rowsize; $j++) {
								if ($data[$j]['cat_parent_id'] == $data[$i]['cat_id']) {
									echo '<li><a href="' . Yii::app()->request->baseUrl . LANGURL . '/' . $link . '/' . $data[$j]['tag' . Yii::app()->session['lang']] . '" title="' . $data[$j]['cat_title' . LANG] . '">' . $data[$j]['cat_title' . LANG] . '</a></li>';
								}
							}
							echo '</ul>';
						}
					}
				}
				echo '</li>';
			}
		}
	}

	/**
	 * @param $item - item sẽ bị remove
	 * @param int $type - (0 = pic_full, 1 = pic_desc)
	 * @param int $path
	 * @param int $cat - Danh mục
	 */
	public function removePic($item, $type = 0, $path = 0, $cat = '') {
		$path = ($path == 1) ? YiiBase::getPathOfAlias('webroot') . '/public/userfiles/images/' . Yii::app()->user->id . '/images' . '/' . Yii::app()->controller->id . $cat . '/' : YiiBase::getPathOfAlias('webroot') . USERFILES . '/' . Yii::app()->controller->id . $cat . '/';
		if ($type == 0) {
			if ($item && file_exists($path . $item)) {
				unlink($path . $item);
			}
		} else {
			if ($item) {
				$str = explode('|', $item);
				foreach ($str as $value) {
					if (file_exists($path . $value)) {
						unlink($path . $value);
					}
				}
			}
		}
		echo $path . $item;
	}

	//Front end - Create folder and Chmod
	public function recursiveMkdir($path, $mode = 0777) {
		$dirs = explode('/', $path);
		$count = count($dirs);

		$location = '/';
		for ($i = 1; $i < ($count - 1); ++$i) {
			$location .= $dirs[$i] . '/';
			if (!is_dir(YiiBase::getPathOfAlias('webroot') . $location)) {
				mkdir(YiiBase::getPathOfAlias('webroot') . $location, 0777);
				chmod(YiiBase::getPathOfAlias('webroot') . $location, 0777);
			}
		}
	}

	public static function setLanguage() {
		if (isset($_GET['language']) && ($_GET['language'] != 'vi')) {
			Yii::app()->language = $_GET['language'];
			define('LANG', $_GET['language']); //coi lai
			define('LANGURL', '/' . $_GET['language']); //coi lai
			Yii::app()->session['lang'] = $_GET['language'];
			Yii::app()->session['langUrl'] = '/' . $_GET['language'];
		} else {
			Yii::app()->language = 'vi';
			define('LANG', ''); //coi lai
			define('LANGURL', ''); //coi lai
			Yii::app()->session['lang'] = '';
			Yii::app()->session['langUrl'] = '';
		}
	}

	public static function export($user) {
		$user_class = new Username();
		if ($user_class->checkExistUser($user)) {
			$pdo = Yii::app()->db->pdoInstance;
			$sql = '';

			$arr[] = array('dos_bussiness', 'SELECT * FROM dos_bussiness');
			$arr[] = array('dos_templates', 'SELECT * FROM dos_templates');
			$arr[] = array('dos_configs', 'SELECT * FROM dos_configs WHERE dos_templates_template = \'' . $user_class->template . '\'');
			$arr[] = array('dos_features', 'SELECT * FROM dos_features');
			$arr[] = array('dos_langs', 'SELECT * FROM dos_langs');
			$arr[] = array('dos_modules', 'SELECT * FROM dos_modules');
			$arr[] = array('dos_values', 'SELECT * FROM dos_values');
			$arr[] = array('dos_nationals', 'SELECT * FROM dos_nationals');
			$arr[] = array('dos_provinces', 'SELECT * FROM dos_provinces');
			$arr[] = array('dos_usernames', 'SELECT * FROM dos_usernames WHERE username=\'' . $user . '\'');
			$arr[] = array('dos_loadfiles', 'SELECT * FROM dos_loadfiles WHERE dos_templates_template = \'' . $user_class->template . '\'');
			$arr[] = array('dos_modules_has_dos_usernames', 'SELECT * FROM dos_modules_has_dos_usernames WHERE dos_usernames_username=\'' . $user . '\'');
			$arr[] = array('dos_module_webs', 'SELECT * FROM dos_module_webs WHERE dos_usernames_username=\'' . $user . '\'');
			$arr[] = array('dos_templates_has_dos_bussiness', 'SELECT * FROM dos_templates_has_dos_bussiness WHERE dos_templates_template=\'' . $user_class->template . '\'');
			$arr[] = array('dos_templates_has_dos_features', 'SELECT * FROM dos_templates_has_dos_features WHERE dos_templates_template=\'' . $user_class->template . '\'');
			$arr[] = array('dos_templates_has_dos_modules', 'SELECT * FROM dos_templates_has_dos_modules WHERE dos_templates_template=\'' . $user_class->template . '\'');
			$arr[] = array('dos_usernames_has_dos_modules', 'SELECT * FROM dos_usernames_has_dos_modules WHERE dos_usernames_username=\'' . $user . '\'');
			$arr[] = array('dos_user_langs', 'SELECT * FROM dos_user_langs WHERE dos_usernames_username=\'' . $user . '\'');

			$arr[] = array('dos_module_abouts', 'SELECT * FROM dos_module_abouts WHERE dos_usernames_username=\'' . $user . '\'');
			$arr[] = array('dos_module_advs', 'SELECT * FROM dos_module_advs WHERE dos_usernames_username=\'' . $user . '\'');
			$arr[] = array('dos_module_banners', 'SELECT * FROM dos_module_banners WHERE dos_usernames_username=\'' . $user . '\'');
			$arr[] = array('dos_module_contacts', 'SELECT * FROM dos_module_contacts WHERE dos_usernames_username=\'' . $user . '\'');
			$arr[] = array('dos_module_menus', 'SELECT * FROM dos_module_menus WHERE dos_usernames_username=\'' . $user . '\'');
			$arr[] = array('dos_module_services', 'SELECT * FROM dos_module_services WHERE dos_usernames_username=\'' . $user . '\'');
			$arr[] = array('dos_module_supports', 'SELECT * FROM dos_module_supports WHERE dos_usernames_username=\'' . $user . '\'');
			$arr[] = array('dos_module_news_cat', 'SELECT * FROM dos_module_news_cat WHERE dos_usernames_username=\'' . $user . '\'');
			$arr[] = array('dos_module_news', 'SELECT `record_id`, `title`, `titleen`, `postdate`, `pic_thumb`, dos_module_news.`preview`, dos_module_news.`previewen`, `content`, `contenten`, dos_module_news.`tag`, dos_module_news.`tagen`, dos_module_news.`description`, dos_module_news.`descriptionen`, `hits`, `record_order`, `hot`, `extra_field1`, `extra_field2`, `enable`, `dos_module_item_cat_cat_id` FROM dos_module_news, dos_module_news_cat WHERE dos_module_news.dos_module_item_cat_cat_id = dos_module_news_cat.cat_id AND dos_usernames_username=\'' . $user . '\'');
			$arr[] = array('dos_module_products_cat', 'SELECT * FROM dos_module_products_cat WHERE dos_usernames_username=\'' . $user . '\'');
			$arr[] = array('dos_module_products', 'SELECT `record_id`, `title`, `titleen`, `postdate`, `pic_thumb`, dos_module_products.`pic_full`, dos_module_products.`pic_desc`, dos_module_products.`preview`, dos_module_products.`previewen`, `content`, `contenten`, dos_module_products.`tag`, dos_module_products.`tagen`, dos_module_products.`description`, dos_module_products.`descriptionen`, `hits`, `record_order`, `unit`, `hot`, `specials`, `extra_field1`, `extra_field2`, `extra_field3`, `extra_field4`, `enable`, `dos_module_item_cat_cat_id` FROM dos_module_products, dos_module_products_cat WHERE dos_module_products.dos_module_item_cat_cat_id = dos_module_products_cat.cat_id AND dos_usernames_username=\'' . $user . '\'');
			$arr[] = array('dos_module_video_cat', 'SELECT * FROM dos_module_video_cat WHERE dos_usernames_username=\'' . $user . '\'');
			$arr[] = array('dos_module_video', 'SELECT `record_id`, `title`, `titleen`, `postdate`, dos_module_video.`tag`, dos_module_video.`tagen`, dos_module_video.`description`, dos_module_video.`descriptionen`, dos_module_video.`pic_thumb`, `url`, `record_order`, `hits`, `extra_field1`, `extra_field2`, `hot`, `enable`, `dos_module_item_cat_cat_id` FROM dos_module_video, dos_module_video_cat WHERE dos_module_video.dos_module_item_cat_cat_id = dos_module_video_cat.cat_id AND dos_usernames_username=\'' . $user . '\'');

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