<?php
/**
 * Created by Thanhansoft
 * Date: 6/29/12
 * Time: 8:25 AM
 */

$str = array();
$dirs = glob('./protected/modules/*', GLOB_ONLYDIR);

foreach ($dirs as $dir) {
    array_push($str, substr(strrchr($dir, "/"), 1));
}
return $str;