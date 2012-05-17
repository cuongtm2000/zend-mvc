<?php

return array(
    'dashboard/<controller:\w+>/<action:\w+>/<id:\d+>' => 'dashboard/<controller>/<action>',
    'dashboard/<controller:\w+>/<action:\w+>/page/<page:\d+>' => 'dashboard/<controller>/<action>', //paging dashboard
    'dashboard/<controller:\w+>/<action:\w+>' => 'dashboard/<controller>/<action>',
    'dashboard/<controller:\w+>' => 'dashboard/<controller>',
    'dashboard' => 'dashboard/default',
    
    'register/<action:\w+>' => 'register/<action>',
    'forgot-password' => 'login/forgot', //forgot password
    'reset-password/<email:.*?>/<code:[A-Za-z0-9]+>' => 'login/reset', //forgot password
    'activate/<email:.*?>/<code:[A-Za-z0-9]+>' => 'activate/index', //activate user

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