<?php
return array(
	'dang-ky-thanh-vien' => array('register', 'urlSuffix' => '.html'),
	'dang-nhap' => array('login', 'urlSuffix' => '.html'),

	'lien-he' => array('contact/default/index', 'urlSuffix' => '.html'),

	'(gioi-thieu)' => 'about/default/index',
	'(gioi-thieu)/<id:[-a-z0-9]+>' => array('about/default/view', 'urlSuffix' => '.html'),

	'san-pham' => array('products/default/index'), //index
	'san-pham/danh-sach/page/<page:\d+>' => array('products/default/list'), //index paging
	'san-pham/danh-sach' => array('products/default/list'), //index
	'san-pham/dang-san-pham' => array('products/default/add'), //index
	'san-pham/<cid:[-a-z0-9]+>/page/<page:\d+>' => array('products/default/cats'), //paging cats
	'san-pham/<cid:[-a-z0-9]+>' => array('products/default/cats'), //cats
	'san-pham/<cid:[-a-z0-9]+>/<id:[-a-z0-9]+>' => array('products/default/view', 'urlSuffix' => '.html'), //view
);