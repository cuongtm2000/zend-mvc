<?php
set_include_path(implode(PATH_SEPARATOR, array(dirname(__FILE__) . '/framework', get_include_path(),)));
$config = dirname(__FILE__) . '/protected/config/main.php';

// remove the following lines when in production mode
defined('YII_DEBUG') or define('YII_DEBUG', true);
// specify how many levels of call stack should be shown in each log message
defined('YII_TRACE_LEVEL') or define('YII_TRACE_LEVEL', 3);

require_once('framework/yii.php');
Yii::createWebApplication($config)->run();