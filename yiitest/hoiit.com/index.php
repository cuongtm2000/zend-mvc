<?php

set_include_path(implode(PATH_SEPARATOR, array(dirname(__FILE__) . '/framework', get_include_path(),)));
$yii = 'framework/yii.php';

if ($_SERVER['HTTP_HOST'] == 'hoiit.com') {
    $config = dirname(__FILE__) . '/protected/config/public.php';
} else {
    $config = dirname(__FILE__) . '/protected/config/dev.php';
    defined('YII_DEBUG') or define('YII_DEBUG', true);
    defined('YII_TRACE_LEVEL') or define('YII_TRACE_LEVEL', 3);
}

require_once($yii);
Yii::createWebApplication($config)->run();