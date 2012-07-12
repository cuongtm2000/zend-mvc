<?php
/**
 * Created by Thanhansoft
 * Date: 6/29/12
 * Time: 8:25 AM
 */

/*$str = array();
$dirs = glob('./protected/modules/*', GLOB_ONLYDIR);

foreach ($dirs as $dir) {
    array_push($str, substr(strrchr($dir, "/"), 1));
}
return $str;*/

$modules_dir = dirname(dirname(__FILE__)) . DIRECTORY_SEPARATOR . 'modules' . DIRECTORY_SEPARATOR;
$handle = opendir($modules_dir);
while (false !== ($file = readdir($handle))) {
    if ($file != "." && $file != ".." && is_dir($modules_dir . $file)) {
        $path = $modules_dir . $file . DIRECTORY_SEPARATOR . 'config' . DIRECTORY_SEPARATOR . 'main.php';
        if (file_exists($path)) {
            $config = CMap::mergeArray($config, require($path));
        }
    }
}
closedir($handle);