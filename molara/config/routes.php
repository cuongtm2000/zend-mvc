<?php
return array(
	//about modules
	'http://<subdomain:\w+>.dos.vn/<about:(gioi-thieu)>' => 'about/default/index',
	'http://<subdomain:\w+>.dos.vn/<about:(gioi-thieu)>/<id:[-a-z0-9]+>' => array('about/default/view', 'urlSuffix' => '.html'),

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

    'rss.xml' => 'site/rss',
    'read-rss' => 'site/readrss',
    'signup' => 'site/signup',
    '<language:(vi|en)>/signup' => 'site/signup',
    
    'activate/<email:.*?>/<code:[A-Za-z0-9]+>' => 'activate/index', //activate user

	'<language:(vi|en)>/<articles:(articles|bai-viet)>/page/<page:\d+>' => array('articles/index'), //paging index
	'<articles:(articles|bai-viet)>/page/<page:\d+>' => array('articles/index'), //paging index
	'<language:(vi|en)>/<articles:(articles|bai-viet)>' => array('articles/index'), //index
	'<articles:(articles|bai-viet)>' => array('articles/index'), //index
	'<language:(vi|en)>/<articles:(articles|bai-viet)>/<cid:[-a-z0-9]+>/page/<page:\d+>' => array('articles/cats'), //paging cats
	'<articles:(articles|bai-viet)>/<cid:[-a-z0-9]+>/page/<page:\d+>' => array('articles/cats'), //paging cats
	'<language:(vi|en)>/<articles:(articles|bai-viet)>/<cid:[-a-z0-9]+>' => array('articles/cats'),
	'<articles:(articles|bai-viet)>/<cid:[-a-z0-9]+>' => array('articles/cats'),
	'<language:(vi|en)>/<articles:(articles|bai-viet)>/<cid:[-a-z0-9]+>/<id:[-a-z0-9]+>' => array('articles/view', 'urlSuffix' => '.html'),
	'<articles:(articles|bai-viet)>/<cid:[-a-z0-9]+>/<id:[-a-z0-9]+>' => array('articles/view', 'urlSuffix' => '.html'),
    
    //modules multi language
    '<language:(vi|en)>' => 'site/index',
    '<language:(vi|en)>/<module:\w+>/<controller:\w+>/<id:\d+>' => '<module>/<controller>/view',
    '<language:(vi|en)>/<module:\w+>/<controller:\w+>/<action:\w+>/<id:\d+>' => '<module>/<controller>/<action>',
    '<language:(vi|en)>/<module:\w+>/<controller:\w+>/<action:\w+>' => '<module>/<controller>/<action>',
);