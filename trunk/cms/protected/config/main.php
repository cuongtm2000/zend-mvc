<?php

// uncomment the following to define a path alias
// Yii::setPathOfAlias('local','path/to/local-folder');

$config = array(
    'basePath' => dirname(__FILE__) . DIRECTORY_SEPARATOR . '..',
    'name' => 'My Web Application',
    'defaultController' => 'default',
    'language' => 'vi',

    // preloading 'log' component
    'preload' => array('log'),

    // autoloading model and component classes
    'import' => array(
        'application.models.*',
        'application.components.*',
    ),

    //'modules' => require(dirname(__FILE__) . '/LoadModules.php'),

    'modules' => array(
        'gii' => array(
            'class' => 'system.gii.GiiModule',
            'password' => '123',
            // If removed, Gii defaults to localhost only. Edit carefully to taste.
            'ipFilters' => array('127.0.0.1', '::1'),
        ),
    ),

    'components' => array(
        'user' => array(
            // enable cookie-based authentication
            'allowAutoLogin' => true,
            'loginUrl' => array('login')
        ),
        // uncomment the following to enable URLs in path-format

        'urlManager' => array(
            'class' => 'ext.urlManager.LangUrlManager',
            'languages' => array('vi', 'en'),
            'langParam' => 'lang',
            'urlFormat' => 'path',
            'showScriptName' => false,
            'rules' => array(
                /*'<controller:\w+>/<id:\d+>' => '<controller>/view',
                '<controller:\w+>/<action:\w+>/<id:\d+>' => '<controller>/<action>',
                '<controller:\w+>/<action:\w+>' => '<controller>/<action>',*/

                //admin rules
                '<lang:[a-z]{2}>' => 'default/default',
                '<lang:[a-z]{2}>/<controller:\w+>/<action:\w+>/page/<page:\d+>'=>'<controller>/<action>',
                '<lang:[a-z]{2}>/<controller:\w+>/<id:\d+>'=>'<controller>/view',
                '<lang:[a-z]{2}>/<controller:\w+>/<action:\w+>/<id:\d+>'=>'<controller>/<action>',
                '<lang:[a-z]{2}>/<controller:\w+>/<action:\w+>'=>'<controller>/<action>',
                'admin/<action:(dashboard|forgot|logout)>' => 'admin/<action>',
                'admin/<module:\w+>/<action:\w+>/<id:\d+>' => '<module>/admin/<action>',
                'admin/<module:\w+>/<action:\w+>' => '<module>/admin/<action>',
                'admin/<module:\w+>' => '<module>/admin',
            ),
        ),

        'db' => array(
            'connectionString' => 'mysql:host=localhost;dbname=cms',
            'emulatePrepare' => true,
            'username' => 'root',
            'password' => '',
            'charset' => 'utf8',
            //'enableProfiling' => true,
            //'enableParamLogging' => true,
        ),

        'errorHandler' => array(
            'errorAction' => 'error',
        ),
        'log' => array(
            'class' => 'CLogRouter',
            'routes' => array(
                array(
                    'class' => 'CFileLogRoute',
                    'levels' => 'error, warning',
                ),
                // uncomment the following to show log messages on web pages
                /*
                array(
                    'class'=>'CWebLogRoute',
                ),
                */
            ),
        ),
    ),

    // application-level parameters that can be accessed
    // using Yii::app()->params['paramName']
    'params' => array(
        // this is used in contact page
        'adminEmail' => 'webmaster@example.com',
    ),
);

$modules_dir = dirname(dirname(__FILE__)) . DIRECTORY_SEPARATOR . 'modules' . DIRECTORY_SEPARATOR;
$handle = opendir($modules_dir);
while (false !== ($file = readdir($handle))) {
    if ($file != "." && $file != ".." && is_dir($modules_dir . $file)) {
        //var_dump($modules_dir.$file.DIRECTORY_SEPARATOR);
        $config = CMap::mergeArray($config, require($modules_dir . $file . DIRECTORY_SEPARATOR . 'config' . DIRECTORY_SEPARATOR . 'main.php'));
    }
}
closedir($handle);

return $config;