<?php

function foldersize($path) {
    $total_size = 0;
    $files = scandir($path);
    foreach($files as $t) {
        if (is_dir(rtrim($path, '/') . '/' . $t)) {
            if ($t != "." && $t != "..") {
                $size = foldersize(rtrim($path, '/') . '/' . $t);
                $total_size += $size;
            }
        } else {
            $size = filesize(rtrim($path, '/') . '/' . $t);
            $total_size += $size;
        }   
    }
    return $total_size;
}

function format_size($size) {
    $mod = 1024;
    $units = explode(' ','B KB MB GB TB PB');

    for ($i = 0; $size > $mod; $i++) {
        $size /= $mod;
    }
    return round($size, 2) . ' ' . $units[$i];

}

$SIZE_LIMIT = 100000000; // 5 GB
$disk_used = foldersize("E:/xampp/htdocs/yii");

$disk_remaining = $SIZE_LIMIT - $disk_used;

print 'Name: E:/xampp/htdocs/yii<br>';
print 'diskspace used: ' . format_size($disk_used) . '<br>';
print 'diskspace left: ' . format_size($disk_remaining) . '<br><hr>';

?>