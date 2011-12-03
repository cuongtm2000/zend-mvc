<?php

// uncomment the following to define a path alias
// Yii::setPathOfAlias('local','path/to/local-folder');

// This is the main Web application configuration. Any writable
// CWebApplication properties can be configured here.
return array(
	'basePath'=>dirname(__FILE__).DIRECTORY_SEPARATOR.'..',
	'name'=>'Dos.vn',
    'theme'=>'azweb',

	// preloading 'log' component
	'preload'=>array('log'),

	// autoloading model and component classes
	'import'=>array(
		'application.models.*',
		'application.components.*',
	),

	'modules'=>array(
		'about', 'default', 'admin',
		// uncomment the following to enable the Gii tool

		'gii'=>array(
			'class'=>'system.gii.GiiModule',
			'password'=>'123',
		 	// If removed, Gii defaults to localhost only. Edit carefully to taste.
			'ipFilters'=>array('127.0.0.1','::1'),
		),

	),

	// application components
	'components'=>array(
		'user'=>array(
			// enable cookie-based authentication
			'allowAutoLogin'=>true,
            'loginUrl'=>array('admin/login'),
		),
		// uncomment the following to enable URLs in path-format
		
		'urlManager'=>array(
			'urlFormat'=>'path',
			'showScriptName'=>false,
			'rules'=>array(
                'http://<subdomain:\w+>.thanhansoft.com/<language:(vi|en)>'=>'default/default',
                'http://<subdomain:\w+>.thanhansoft.com'=>'default/default',
                
                'http://<subdomain:\w+>.thanhansoft.com/<module:\w+>/<controller:\w+>'=>'<module>/<controller>/index',
                'http://<subdomain:\w+>.thanhansoft.com/<language:(vi|en)>/<module:\w+>/<controller:\w+>'=>'<module>/<controller>/index',
                
                'http://<subdomain:\w+>.thanhansoft.com/<language:(vi|en)>/<module:\w+>/<id:[-a-z0-9]+>'=>array('<module>/default/view', 'urlSuffix'=>'.html'),
                'http://<subdomain:\w+>.thanhansoft.com/<module:\w+>/<id:[-a-z0-9]+>'=>array('<module>/default/view', 'urlSuffix'=>'.html'),
                
                //modules
                '<language:(vi|en)>'=>'site/index',
				'<language:(vi|en)>/<module:\w+>/<controller:\w+>/<id:\d+>'=>'<module>/<controller>/view',
				'<language:(vi|en)>/<module:\w+>/<controller:\w+>/<action:\w+>/<id:\d+>'=>'<module>/<controller>/<action>',
				'<language:(vi|en)>/<module:\w+>/<controller:\w+>/<action:\w+>'=>'<module>/<controller>/<action>',
			),
		),
		
		// uncomment the following to use a MySQL database
		'db'=>array(
			'connectionString' => 'mysql:host=localhost;dbname=dos',
			'emulatePrepare' => true,
			'username' => 'root',
			'password' => '',
			'charset' => 'utf8',
		),

		'errorHandler'=>array(
			// use 'site/error' action to display errors
            'errorAction'=>'site/error',
        ),
		'log'=>array(
			'class'=>'CLogRouter',
			'routes'=>array(
				array(
					'class'=>'CFileLogRoute',
					'levels'=>'error, warning',
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
	'params'=>array(
		// this is used in contact page
		'adminEmail'=>'webmaster@example.com',
	),
);