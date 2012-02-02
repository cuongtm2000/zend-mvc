<?php

// uncomment the following to define a path alias
// Yii::setPathOfAlias('local','path/to/local-folder');
// This is the main Web application configuration. Any writable
// CWebApplication properties can be configured here.
return array(
    'basePath' => dirname(__FILE__) . DIRECTORY_SEPARATOR . '..',
    'name' => 'Dos.vn',
    'theme' => 'azweb',
    // preloading 'log' component
    'preload' => array('log'),
    // autoloading model and component classes
    'import' => array(
        'application.models.*',
        'application.components.*',
    ),
    'modules' => array(
        'default', 'about', 'products', 'services', 'contact', 'banner', 'admin',
        // uncomment the following to enable the Gii tool

        'gii' => array(
            'class' => 'system.gii.GiiModule',
            'password' => '123',
            // If removed, Gii defaults to localhost only. Edit carefully to taste.
            'ipFilters' => array('127.0.0.1', '::1'),
        ),
    ),
    // application components
    'components' => array(
        // UserCounter
        'counter' => array('class' => 'application.extensions.UserCounter',),
        //'simpleImage'=>array('class' => 'application.extensions.CSimpleImage',),
        'user' => array(
            // enable cookie-based authentication
            'allowAutoLogin' => true,
            'loginUrl' => array('admin/login'),
        ),
        'cache' => array(
            'class' => 'CFileCache',
        ),
        // uncomment the following to enable URLs in path-format

        'urlManager' => array(
            'urlFormat' => 'path',
            'showScriptName' => false,
            'rules' => array(
                'http://<subdomain:\w+>.dos.vn/<language:(vi|en)>' => 'default/default',
                'http://<subdomain:\w+>.dos.vn' => 'default/default',
                'http://<subdomain:\w+>.dos.vn/<language:(vi|en)>/<module:\w+>' => '<module>/default/index',
                'http://<subdomain:\w+>.dos.vn/<module:\w+>/<controller:\w+>' => '<module>/<controller>/index',
                'http://<subdomain:\w+>.dos.vn/<language:(vi|en)>/<module:\w+>/<controller:\w+>' => '<module>/<controller>/index',
                'http://<subdomain:\w+>.dos.vn/<language:(vi|en)>/<module:\w+>/<cname:[-a-z0-9]+>/page/<page:\d+>' => array('<module>/default/cats'), //paging
                'http://<subdomain:\w+>.dos.vn/<language:(vi|en)>/<module:\w+>/<cname:[-a-z0-9]+>' => array('<module>/default/cats'),
                'http://<subdomain:\w+>.dos.vn/<module:\w+>/<cname:[-a-z0-9]+>/page/<page:\d+>' => array('<module>/default/cats'), //paging
                'http://<subdomain:\w+>.dos.vn/<module:\w+>/<cname:[-a-z0-9]+>' => array('<module>/default/cats'),
                'http://<subdomain:\w+>.dos.vn/<language:(vi|en)>/<module:\w+>/<id:[-a-z0-9]+>' => array('<module>/default/view', 'urlSuffix' => '.html'),
                'http://<subdomain:\w+>.dos.vn/<module:\w+>/<id:[-a-z0-9]+>' => array('<module>/default/view', 'urlSuffix' => '.html'),
                //modules
                '<language:(vi|en)>' => 'site/index',
                '<language:(vi|en)>/<module:\w+>/<controller:\w+>/<id:\d+>' => '<module>/<controller>/view',
                '<language:(vi|en)>/<module:\w+>/<controller:\w+>/<action:\w+>/<id:\d+>' => '<module>/<controller>/<action>',
                '<language:(vi|en)>/<module:\w+>/<controller:\w+>/<action:\w+>' => '<module>/<controller>/<action>',
            ),
        ),
        // uncomment the following to use a MySQL database
        'db' => array(
            'connectionString' => 'mysql:host=localhost;dbname=dos',
            'emulatePrepare' => true,
            'username' => 'root',
            'password' => '',
            'charset' => 'utf8',
            'enableProfiling' => true,
            'enableParamLogging' => true,
        //'schemaCachingDuration'=>60*60,
        ),
        'errorHandler' => array(
            // use 'site/error' action to display errors
            'errorAction' => 'site/error',
        ),
        'log' => array(
            'class' => 'CLogRouter',
            'routes' => array(
                array(
                    'class' => 'CFileLogRoute',
                    'levels' => 'error, warning',
                //'levels'=>'trace, info, error, warning',
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
    /* 'adminEmail'=>'webmaster@example.com', */
    ),
);