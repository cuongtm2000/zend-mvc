<?php

// uncomment the following to define a path alias
// Yii::setPathOfAlias('local','path/to/local-folder');
// This is the main Web application configuration. Any writable
// CWebApplication properties can be configured here.
return array(
    'basePath' => dirname(__FILE__) . DIRECTORY_SEPARATOR . '..',
    'name' => 'Viptamnhinviet.com',
    'theme' => 'viptamnhinviet',
    // preloading 'log' component
    'preload' => array('log'),
    // autoloading model and component classes
    'import' => array(
        'application.models.*',
        'application.components.*',
    ),
    'modules' => array(
		'admin', 'about', 'products', 'contact',
    // uncomment the following to enable the Gii tool
    
      'gii'=>array(
      'class'=>'system.gii.GiiModule',
      'password'=>'aa',
      // If removed, Gii defaults to localhost only. Edit carefully to taste.
      'ipFilters'=>array('127.0.0.1','::1'),
      ),
     
    ),
    // application components
    'components' => array(
        'cache' => array(
            'class' => 'CFileCache',
        ),
        'user' => array(
            'allowAutoLogin' => true,
            'loginUrl' => array('login'),
        ),
        'urlManager' => array(
            'urlFormat' => 'path',
            'showScriptName' => false,
            'rules' => require(dirname(__FILE__) . '/routes.php'),
        ),
        'errorHandler' => array(
            // use 'site/error' action to display errors
            'errorAction' => 'site/error',
        ),
    ),
);