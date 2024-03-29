<?php

// uncomment the following to define a path alias
// Yii::setPathOfAlias('local','path/to/local-folder');
// This is the main Web application configuration. Any writable
// CWebApplication properties can be configured here.
return array(
    'basePath' => dirname(__FILE__) . DIRECTORY_SEPARATOR . '..',
	'defaultController'=>'default/default',
    'name' => ucfirst($_SERVER['HTTP_HOST']),
    //'theme' => '220312',
	//'language'=>'vi',
    // preloading 'log' component
    'preload' => array('log'),
    // autoloading model and component classes
    'import' => array(
        'application.models.*',
        'application.components.*',
    ),
    'modules' => array(
        'default', 'about', 'products', 'services', 'news', 'video', 'contact', 'search', 'admin', 'administrator',
        /*'gii' => array(
            'class' => 'system.gii.GiiModule',
            'password' => '123',
            // If removed, Gii defaults to localhost only. Edit carefully to taste.
            'ipFilters' => array('127.0.0.1', '::1'),
        ),*/
    ),
    // application components
    'components' => array(
        // UserCounter
        'counter' => array('class' => 'application.extensions.UserCounter',),
        'user' => array(
            'allowAutoLogin' => true,
            'loginUrl' => array('admin/login'),
        ),
        'cache'=>array(
            'class'=>'CFileCache',
        ),
        // uncomment the following to enable URLs in path-format

        'urlManager' => array(
            'urlFormat' => 'path',
            'showScriptName' => false,
            'rules'=> require(dirname(__FILE__) . '/routes.php'),
        ),
        'errorHandler' => array(
            // use 'site/error' action to display errors
            'errorAction' => 'site/error',
        ),
    ),
);