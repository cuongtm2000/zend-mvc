<?php

return array(
    '<module:(dashboard|administrator)>/<controller:\w+>/<action:\w+>/<id:\d+>' => '<module>/<controller>/<action>',
    '<module:(dashboard|administrator)>/<controller:\w+>/<action:\w+>/page/<page:\d+>' => '<module>/<controller>/<action>', //paging dashboard
    '<module:(dashboard|administrator)>/<controller:\w+>/<action:\w+>' => '<module>/<controller>/<action>',
    '<module:(dashboard|administrator)>/<controller:\w+>' => '<module>/<controller>',
    '<module:(dashboard|administrator)>' => '<module>/default',
    
    'register/<action:\w+>' => 'register/<action>',
    'forgot-password' => 'login/forgot', //forgot password
    'reset-password/<email:.*?>/<code:[A-Za-z0-9]+>' => 'login/reset', //forgot password
    'activate/<email:.*?>/<code:[A-Za-z0-9]+>' => 'activate/index', //activate user
    'report/<action:\w+>' => 'report/<action>', //report controller

    '<controller:\w+>/page/<page:\d+>' => array('<controller>/index'), //paging index
    '<controller:\w+>/<cid:[-a-z0-9]+>/page/<page:\d+>' => array('<controller>/cats'), //paging cats
    '<controller:\w+>/<cid:[-a-z0-9]+>' => array('<controller>/cats'),
    '<controller:\w+>/<cid:[-a-z0-9]+>/<id:[-a-z0-9]+>' => array('<controller>/view', 'urlSuffix' => '.html'),
    
    'posts' => array('posts/index'),
    'templates' => array('templates/index'),
	'sitemap.xml'=>'site/sitemap',

    //multi language
    '<language:(vn|en)>' => 'site/index',
);