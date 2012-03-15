<?php

class Common {

    /*public static function menuMultiLevel($data, $models, $link) {
        $rowsize = count($data);
        $model = new $models();
        $row = $model->findCatByTag(Yii::app()->request->getQuery('cname')); //find cat_id
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
                echo '<li><a href="' . Yii::app()->request->baseUrl . LANGURL . '/' . $link . '/' . $data[$i]['tag'] . '" title="' . $data[$i]['cat_title' . LANG] . '">' . $data[$i]['cat_title' . LANG] . '</a>';
                //Sub categories
                if ($parent_id && ($parent_id == $data[$i]['cat_id'])) {
                    for ($j = 0; $j < $rowsize; $j++) {
                        if ($data[$j]['cat_parent_id'] == $data[$i]['cat_id']) {
                            echo '<ul>';
                            for ($j = 0; $j < $rowsize; $j++) {
                                if ($data[$j]['cat_parent_id'] == $data[$i]['cat_id']) {
                                    echo '<li><a href="' . Yii::app()->request->baseUrl . LANGURL . '/' . $link . '/' . $data[$j]['tag'] . '" title="' . $data[$j]['cat_title' . LANG] . '">' . $data[$j]['cat_title' . LANG] . '</a></li>';
                                }
                            }
                            echo '</ul>';
                        }
                    }
                }
                echo '</li>';
            }
        }
    }*/

    /**
	 * @param $item - Tập tin cần remove
	 * @param int $type - gồm 1 ảnh hay nhiều ảnh
	 * @param int $path - phân biệt Sản phẩm hay Danh mục (0: Sản phẩm, 1: Danh mục)
	 */
    public function removePic($item, $type = 0, $path = 0) {
        //$path = ($path == 1) ? YiiBase::getPathOfAlias('webroot') . '/public/userfiles/images/' . Yii::app()->user->id . '/images' . '/' . Yii::app()->controller->id . '/' : YiiBase::getPathOfAlias('webroot') . USERFILES . '/' . Yii::app()->controller->id . '/';
		$path = ($path == 1) ? YiiBase::getPathOfAlias('webroot') . USERFILES . '/' . Yii::app()->controller->id . 'Cat/' : YiiBase::getPathOfAlias('webroot') . USERFILES . '/' . Yii::app()->controller->id . '/';

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
	/*public static function setLanguage(){
		if(isset($_GET['language']) && ($_GET['language'] != 'vi')){
			Yii::app()->language = $_GET['language'];
			define('LANG', $_GET['language']);
			define('LANGURL', '/' . $_GET['language']);
		}else{
			Yii::app()->language = 'vi';
			define('LANG', '');
			define('LANGURL', '');
			//Yii::app()->session['language'] = ''; nen dung
		}
	}*/
}