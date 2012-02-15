<?php
defined('DS') or define('DS',DIRECTORY_SEPARATOR);
// change the following paths if necessary
$yii = dirname(__FILE__) . '/../../framework/yii.php';

if ($_SERVER['HTTP_HOST'] == 'hoiit.com') {
    $config = dirname(__FILE__) . '/protected/config/public.php';
} else {
    $config = dirname(__FILE__).'/protected/config/dev.php';
    defined('YII_DEBUG') or define('YII_DEBUG',true);
    defined('YII_TRACE_LEVEL') or define('YII_TRACE_LEVEL', 3);
}

require_once($yii);
Yii::createWebApplication($config)->run();