<?php

Yii::setPathOfAlias('filePathUpload', '/public/userfiles');
$config = array(
    'basePath' => dirname(__FILE__) . DIRECTORY_SEPARATOR . '..',
    'name' => 'stc.dongnai.gov.vn',
    'defaultController' => 'default',

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
		'memberLands' => array(
            'class' => 'CWebUser',
            'allowAutoLogin' => true,
            'loginUrl' => array('san-giao-dich/dang-nhap'),
            'stateKeyPrefix' => 'memberLands',
        ),

        /*'cache' => array(
            'class' => 'CDbCache',
            'class'=>'CFileCache',
        ),*/

        'urlManager' => array(
            'class' => 'UrlManager',
            'urlFormat' => 'path',
            'showScriptName' => false,
            'rules' => array(
                //'<controller:\w+>/<id:\d+>' => '<controller>/view',
                //'<controller:\w+>/<action:\w+>/<id:\d+>' => '<controller>/<action>',
                //'<controller:\w+>/<action:\w+>' => '<controller>/<action>',

                '<lang:[a-z]{2}>/<module:\w+>/<controller:\w+>/<id:\d+>' => '<module>/<controller>/view',
                '<lang:[a-z]{2}>/<module:\w+>/<controller:\w+>/<action:\w+>/<id:\d+>' => '<module>/<controller>/<action>',
                '<lang:[a-z]{2}>/<module:\w+>/<controller:\w+>/<action:\w+>' => '<module>/<controller>/<action>',
                '<lang:[a-z]{2}>/<module:\w+>' => '<module>',

                '<lang:[a-z]{2}>/<controller:\w+>/<action:\w+>/page/<page:\d+>' => '<controller>/<action>',
                '<lang:[a-z]{2}>/<controller:\w+>/<id:\d+>' => '<controller>/view',
                '<lang:[a-z]{2}>/<controller:\w+>/<action:\w+>/<id:\d+>' => '<controller>/<action>',
                '<lang:[a-z]{2}>/<controller:\w+>/<action:\w+>' => '<controller>/<action>',
                '<lang:[a-z]{2}>' => '/',

                //admin rules
                'admin/<action:(rank|logout)>' => 'admin/<action>',
                'admin/<module:\w+>/<action:\w+>/<id:\w+>' => '<module>/admin/<action>',
              //  'admin/<module:\w+>/<action:\w+>/<username:\w>' => '<module>/admin/<action>',
                'admin/<module:\w+>/<action:\w+>' => '<module>/admin/<action>',
                'admin/<module:\w+>' => '<module>/admin',
            ),
        ),

        'db' => array(
            'connectionString' => 'mysql:host=localhost;dbname=sotaichinh',
            //'schemaCachingDuration' => 3600,
            'emulatePrepare' => true,
            'username' => 'root',
            'password' => '',
            'charset' => 'utf8',
            'tablePrefix' => 'hoiit_',
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
                //array(
					//'class'=>'CWebLogRoute',
                //),
            ),
        ),
    ),

    // application-level parameters that can be accessed
    // using Yii::app()->params['paramName']
    'params' => array(
        // this is used in contact page
        'default_language' => 'vi'
    ),
);

require(dirname(__FILE__) . '/LoadModules.php');

/*$modules_dir = dirname(dirname(__FILE__)) . DIRECTORY_SEPARATOR . 'modules' . DIRECTORY_SEPARATOR;
$handle = opendir($modules_dir);
while (false !== ($file = readdir($handle))) {
    if ($file != "." && $file != ".." && is_dir($modules_dir . $file)) {
        $path = $modules_dir . $file . DIRECTORY_SEPARATOR . 'config' . DIRECTORY_SEPARATOR . 'main.php';
        if (file_exists($path)) {
            $config = CMap::mergeArray($config, require($path));
        }
    }
}
closedir($handle);*/

return $config;