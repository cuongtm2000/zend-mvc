<?php
return array(
	'dang-ky-thanh-vien' => array('register', 'urlSuffix' => '.html'),
	'dang-nhap' => array('login', 'urlSuffix' => '.html'),

	'lien-he' => array('contact/default/index', 'urlSuffix' => '.html'),

	'(gioi-thieu)' => 'about/default/index',
	'(gioi-thieu)/<id:[-a-z0-9]+>' => array('about/default/view', 'urlSuffix' => '.html'),

	'san-pham' => array('products/default/index'), //index
	'san-pham/danh-sach/page/<page:\d+>' => array('products/default/list'), //index paging
	'san-pham/danh-sach' => array('products/default/list'), //list item
	'san-pham/dang-san-pham' => array('products/default/add'), //add item
	'san-pham/<cid:[-a-z0-9]+>/page/<page:\d+>' => array('products/default/cats'), //paging cats
	'san-pham/<cid:[-a-z0-9]+>' => array('products/default/cats'), //cats
	'san-pham/<cid:[-a-z0-9]+>/<id:[-a-z0-9]+>' => array('products/default/view', 'urlSuffix' => '.html'), //view

	'tin-tuc/page/<page:\d+>' => array('news/default/index'), //index paging
	'tin-tuc' => array('news/default/index'), //index
	'tin-tuc/<cid:[-a-z0-9]+>/page/<page:\d+>' => array('news/default/cats'), //paging cats
	'tin-tuc/<cid:[-a-z0-9]+>' => array('news/default/cats'), //cats

	'video/<cid:[-a-z0-9]+>/page/<page:\d+>' => array('video/default/cats'), //paging cats
	'video/<cid:[-a-z0-9]+>' => array('video/default/cats'), //cats
);