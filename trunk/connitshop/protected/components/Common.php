<?php
class Common {
    public static function setLanguage() {
        $langDefault = Yii::app()->controller->setting['default_language'];
        $languages = array();
        foreach (Yii::app()->controller->listLanguage as $key => $value) {
            $languages[] = $key;
        }

        if (isset($_GET['lang']) && in_array($_GET['lang'], $languages)) {
            Yii::app()->language = $_GET['lang']; //Set language query
        } else {
            Yii::app()->language = $langDefault; //Set language default
        }
    }

    public static function removePic($item, $path, $type = 0) {
        $path = YiiBase::getPathOfAlias('webroot') . Yii::getPathOfAlias('filePathUpload') . $path . '/';

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
    public static function recursiveMakeDir($path, $mode = 0777) {
        $dirs = explode('/', $path);
        $count = count($dirs);

        $path_system = YiiBase::getPathOfAlias('webroot');
        $location = '/';
        for ($i = 1; $i < ($count - 1); ++$i) {
            $location .= $dirs[$i] . '/';
            if (!is_dir($path_system . $location)) {
                mkdir($path_system . $location, $mode);
                chmod($path_system . $location, $mode);
            }
        }
    }

    //Front end - Create folder and Chmod
    public function recursiveMkdir($path, $mode = 0777) {
        $dirs = explode('/', $path);
        $count = count($dirs);

        $path_system = YiiBase::getPathOfAlias('webroot') . Yii::getPathOfAlias('filePathUpload');
        $location = '/';
        for ($i = 1; $i < ($count - 1); ++$i) {
            $location .= $dirs[$i] . '/';
            if (!is_dir($path_system . $location)) {
                mkdir($path_system . $location, 0777);
                chmod($path_system . $location, 0777);
            }
        }
    }
	
	public function deleteFolderUser($directory, $empty = false) {
        if (substr($directory, -1) == "/") {
            $directory = substr($directory, 0, -1);
        }

        if (!file_exists($directory) || !is_dir($directory)) {
            return false;
        } elseif (!is_readable($directory)) {
            return false;
        } else {
            $directoryHandle = opendir($directory);

            while ($contents = readdir($directoryHandle)) {
                if ($contents != '.' && $contents != '..') {
                    $path = $directory . "/" . $contents;

                    if (is_dir($path)) {
                        $this->deleteFolderUser($path);
                    } else {
                        unlink($path);
                    }
                }
            }

            closedir($directoryHandle);

            if ($empty == false) {
                if (!rmdir($directory)) {
                    return false;
                }
            }

            return true;
        }
    }

    public static function getPrice($price) {
        $str = '';
        if (is_numeric($price)) {
            $str = number_format($price, 0, '', '.');
        } else {
            if ($price) {
                $str = $price;
            } else {
                $str = Yii::app()->controller->lang['contact'];
            }
        }
        return $str;
    }
}