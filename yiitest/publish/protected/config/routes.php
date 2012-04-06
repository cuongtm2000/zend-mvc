<?php
return array(
	//about modules
	'<about:(gioi-thieu)>' => 'about/default/index', //index
	'<about:(gioi-thieu)>/<id:[-a-z0-9]+>' => array('about/default/view', 'urlSuffix' => '.html'), //view

	//products modules
	'<products:(san-pham)>' => 'products/default/index', //index
	'<products:(san-pham)>/<cid:[-a-z0-9]+>/trang/<page:\d+>' => array('products/default/cats'), //cat paging
	'<products:(san-pham)>/<cid:[-a-z0-9]+>' => array('products/default/cats'), //cat
	'<products:(san-pham)>/<cid:[-a-z0-9]+>/<id:[-a-z0-9]+>' => array('products/default/view', 'urlSuffix' => '.html'), //view

	//services modules
	'<services:(dich-vu)>' => 'services/default/index', //index
	'<services:(dich-vu)>/<id:[-a-z0-9]+>' => array('services/default/view', 'urlSuffix' => '.html'), //view

	//news modules
	'<news:(tin-tuc-su-kien)>/trang/<page:\d+>' => 'news/default/index', //index paging
	'<news:(tin-tuc-su-kien)>' => 'news/default/index', //index
	'<news:(tin-tuc-su-kien)>/<cid:[-a-z0-9]+>/trang/<page:\d+>' => array('news/default/cats'), //cat paging
	'<news:(tin-tuc-su-kien)>/<cid:[-a-z0-9]+>' => array('news/default/cats'), //cat
	'<news:(tin-tuc-su-kien)>/<cid:[-a-z0-9]+>/<id:[-a-z0-9]+>' => array('news/default/view', 'urlSuffix' => '.html'), //view

	//video modules
	'<video:(video)>/trang/<page:\d+>' => 'video/default/index', //index paging
	'<video:(video)>' => 'video/default/index', //index
	'<video:(video)>/<cid:[-a-z0-9]+>/trang/<page:\d+>' => array('video/default/cats'), //cat paging
	'<video:(video)>/<cid:[-a-z0-9]+>' => array('video/default/cats'), //cat

	//contact modules
	'<contact:(lien-he)>' => 'contact/default/index', //index

	'<language:(vi|en)>/<module:\w+>' => '<module>/default/index', //ex: en/about, en/products
	/*
		'http://<subdomain:\w+>.dos.vn/<language:(vi|en)>' => 'default/default', //ex: /en
		'http://<subdomain:\w+>.dos.vn' => 'default/default', //ex: /

		'http://<subdomain:\w+>.dos.vn/<language:(vi|en)>/<module:\w+>' => '<module>/default/index', //ex: en/about, en/products

		//'http://<subdomain:\w+>.dos.vn/<module:\w+>/<controller:\w+>' => '<module>/<controller>/index',
		//'http://<subdomain:\w+>.dos.vn/<language:(vi|en)>/<module:\w+>/<controller:\w+>' => '<module>/<controller>/index',

		'http://<subdomain:\w+>.dos.vn/<language:(vi|en)>/<module:\w+>/<cid:[-a-z0-9]+>/page/<page:\d+>' => array('<module>/default/cats'), //cat paging
		'http://<subdomain:\w+>.dos.vn/<language:(vi|en)>/<module:\w+>/<cid:[-a-z0-9]+>' => array('<module>/default/cats'), //cat

		//'http://<subdomain:\w+>.dos.vn/<module:\w+>/<cid:[-a-z0-9]+>/page/<page:\d+>' => array('<module>/default/cats'), //paging
		//'http://<subdomain:\w+>.dos.vn/<module:\w+>/<cid:[-a-z0-9]+>' => array('<module>/default/cats'),

		'http://<subdomain:\w+>.dos.vn/<language:(vi|en)>/<module:\w+>/<cid:[-a-z0-9]+>/<id:[-a-z0-9]+>' => array('<module>/default/view', 'urlSuffix' => '.html'), //for products
		'http://<subdomain:\w+>.dos.vn/<language:(vi|en)>/<module:\w+>/<id:[-a-z0-9]+>' => array('<module>/default/view', 'urlSuffix' => '.html'),
		//'http://<subdomain:\w+>.dos.vn/<module:\w+>/<id:[-a-z0-9]+>' => array('<module>/default/view', 'urlSuffix' => '.html'),

		'rss.xml' => 'site/rss',
		'read-rss' => 'site/readrss',
		'dang-ky|sign-up' => 'site/signup',
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
		'<language:(vi|en)>/<module:\w+>/<controller:\w+>/<action:\w+>' => '<module>/<controller>/<action>',        */

	//modules multi language
	'<language:(vi|en)>' => 'default/default',
);