<?php
date_default_timezone_set('Asia/Ho_Chi_Minh');
set_include_path(implode(PATH_SEPARATOR, array(
    dirname(__FILE__) . '/framework',
    get_include_path(),
)));

// change the following paths if necessary
$yii='framework/yii.php';
$mode = 'dev';

if ($mode == 'public') {
    $config = dirname(__FILE__) . '/protected/config/public.php';
} else {
    $config = dirname(__FILE__) . '/protected/config/dev.php';
    defined('YII_DEBUG') or define('YII_DEBUG', true);
    defined('YII_TRACE_LEVEL') or define('YII_TRACE_LEVEL', 3);
}

require_once($yii);
Yii::createWebApplication($config)->run();
