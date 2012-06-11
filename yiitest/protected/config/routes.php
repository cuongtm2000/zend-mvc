<?php
return array(
	//about modules
	'http://<subdomain:\w+>.dos.vn/<about:(gioi-thieu)>' => 'about/default/index', //index
	'http://<subdomain:\w+>.dos.vn/<about:(gioi-thieu)>/<id:[-a-z0-9]+>' => array('about/default/view', 'urlSuffix' => '.html'), //view

	//products modules
	'http://<subdomain:\w+>.dos.vn/<products:(san-pham)>' => 'products/default/index', //index
    'http://<subdomain:\w+>.dos.vn/<products:(san-pham)>/<cid:(dat-hang)>/<id:[-a-z0-9]+>' => array('products/default/order'), //order
    'http://<subdomain:\w+>.dos.vn/<products:(san-pham)>/<cid:(gio-hang)>' => array('products/default/cartitem'), //Cart item
    'http://<subdomain:\w+>.dos.vn/<products:(san-pham)>/<cid:(xoa-gio-hang)>' => array('products/default/delallcart'), //Delete all cart
    'http://<subdomain:\w+>.dos.vn/<products:(san-pham)>/<cid:(thong-tin-dat-hang)>' => array('products/default/ordering'), //purchase
    'http://<subdomain:\w+>.dos.vn/<products:(san-pham)>/<cid:[-a-z0-9]+>/trang/<page:\d+>' => array('products/default/cats'), //cat paging
	'http://<subdomain:\w+>.dos.vn/<products:(san-pham)>/<cid:[-a-z0-9]+>' => array('products/default/cats'), //cat
    'http://<subdomain:\w+>.dos.vn/<products:(san-pham)>/<cid:[-a-z0-9]+>/<id:[-a-z0-9]+>' => array('products/default/view', 'urlSuffix' => '.html'), //view

	//services modules
	'http://<subdomain:\w+>.dos.vn/<services:(dich-vu)>' => 'services/default/index', //index
	'http://<subdomain:\w+>.dos.vn/<services:(dich-vu)>/<id:[-a-z0-9]+>' => array('services/default/view', 'urlSuffix' => '.html'), //view

	//news modules
	'http://<subdomain:\w+>.dos.vn/<news:(tin-tuc-su-kien)>/trang/<page:\d+>' => 'news/default/index', //index paging
	'http://<subdomain:\w+>.dos.vn/<news:(tin-tuc-su-kien)>' => 'news/default/index', //index
	'http://<subdomain:\w+>.dos.vn/<news:(tin-tuc-su-kien)>/<cid:[-a-z0-9]+>/trang/<page:\d+>' => array('news/default/cats'), //cat paging
	'http://<subdomain:\w+>.dos.vn/<news:(tin-tuc-su-kien)>/<cid:[-a-z0-9]+>' => array('news/default/cats'), //cat
	'http://<subdomain:\w+>.dos.vn/<news:(tin-tuc-su-kien)>/<cid:[-a-z0-9]+>/<id:[-a-z0-9]+>' => array('news/default/view', 'urlSuffix' => '.html'), //view

	//video modules
	'http://<subdomain:\w+>.dos.vn/<video:(video)>/trang/<page:\d+>' => 'video/default/index', //index paging
	'http://<subdomain:\w+>.dos.vn/<video:(video)>' => 'video/default/index', //index
	'http://<subdomain:\w+>.dos.vn/<video:(video)>/<cid:[-a-z0-9]+>/trang/<page:\d+>' => array('video/default/cats'), //cat paging
	'http://<subdomain:\w+>.dos.vn/<video:(video)>/<cid:[-a-z0-9]+>' => array('video/default/cats'), //cat

	//contact modules
	'http://<subdomain:\w+>.dos.vn/<contact:(lien-he)>' => 'contact/default/index', //index

    'http://<subdomain:\w+>.dos.vn/<language:(vi|en)>' => 'default/default', //ex: /en
    'http://<subdomain:\w+>.dos.vn' => 'default/default', //ex: /

    'http://<subdomain:\w+>.dos.vn/<language:(vi|en)>/<module:\w+>' => '<module>/default/index', //ex: en/about, en/products

    'http://<subdomain:\w+>.dos.vn/<language:(vi|en)>/<module:\w+>/<cid:(order)>/<id:[-a-z0-9]+>' => array('<module>/default/order'), //order for products
    'http://<subdomain:\w+>.dos.vn/<language:(vi|en)>/<module:\w+>/<cid:(cart-item)>' => array('<module>/default/cartitem'), //Cart item for products
    'http://<subdomain:\w+>.dos.vn/<language:(vi|en)>/<module:\w+>/<cid:(del-all-cart)>' => array('<module>/default/delallcart'), //Delete all cart for products
    'http://<subdomain:\w+>.dos.vn/<language:(vi|en)>/<module:\w+>/<cid:(purchase)>' => array('<module>/default/ordering'), //purchase for products

    'http://<subdomain:\w+>.dos.vn/<language:(vi|en)>/<module:\w+>/<cid:[-a-z0-9]+>/page/<page:\d+>' => array('<module>/default/cats'), //cat paging
    'http://<subdomain:\w+>.dos.vn/<language:(vi|en)>/<module:\w+>/<cid:[-a-z0-9]+>' => array('<module>/default/cats'), //cat

	'http://<subdomain:\w+>.dos.vn/<language:(vi|en)>/<module:\w+>/<cid:[-a-z0-9]+>/<id:[-a-z0-9]+>' => array('<module>/default/view', 'urlSuffix' => '.html'), //for products
	'http://<subdomain:\w+>.dos.vn/<language:(vi|en)>/<module:\w+>/<id:[-a-z0-9]+>' => array('<module>/default/view', 'urlSuffix' => '.html'),

    'rss.xml' => 'site/rss',
    'read-rss' => 'site/readrss',
	'(thoat|logout)' => 'site/logout',
	'(chen-du-lieu-mau)' => 'site/import',
	'(tao-web-thanh-cong)' => 'site/success',
	'report-error/<code:.*>' => array('site/msgerror'),

    'dang-ky' => 'site/signup',
    '<language:(vi|en)>/signup' => 'site/signup',
	'lien-he' => 'site/contact',
	'<language:(vi|en)>/contact-us' => 'site/contact',
    
    'activate/<email:.*?>/<code:[A-Za-z0-9]+>' => 'activate/index', //activate user

	'<templates:(mau-website)>/trang/<page:\d+>' => array('templates/index'), //paging index
	'<templates:(mau-website)>' => array('templates/index'), //index
	'<templates:(mau-website)>/<cid:[-a-z0-9]+>' => array('templates/cats'),
    '<templates:(mau-website)>/<cid:[-a-z0-9]+>/<id:[-a-z0-9]+>' => array('templates/view', 'urlSuffix' => '.html'),

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

    '<language:(vi|en)>/<tutorial:(user-guide|huong-dan)>/page/<page:\d+>' => array('tutorial/index'), //paging index
    '<tutorial:(user-guide|huong-dan)>/page/<page:\d+>' => array('tutorial/index'), //paging index
    '<language:(vi|en)>/<tutorial:(user-guide|huong-dan)>' => array('tutorial/index'), //index
    '<tutorial:(user-guide|huong-dan)>' => array('tutorial/index'), //index
    '<language:(vi|en)>/<tutorial:(user-guide|huong-dan)>/<cid:[-a-z0-9]+>/page/<page:\d+>' => array('tutorial/cats'), //paging cats
    '<tutorial:(user-guide|huong-dan)>/<cid:[-a-z0-9]+>/page/<page:\d+>' => array('tutorial/cats'), //paging cats
    '<language:(vi|en)>/<tutorial:(user-guide|huong-dan)>/<cid:[-a-z0-9]+>' => array('tutorial/cats'),
    '<tutorial:(user-guide|huong-dan)>/<cid:[-a-z0-9]+>' => array('tutorial/cats'),
    '<language:(vi|en)>/<tutorial:(user-guide|huong-dan)>/<cid:[-a-z0-9]+>/<id:[-a-z0-9]+>' => array('tutorial/view', 'urlSuffix' => '.html'),
    '<tutorial:(user-guide|huong-dan)>/<cid:[-a-z0-9]+>/<id:[-a-z0-9]+>' => array('tutorial/view', 'urlSuffix' => '.html'),

	//aboutus controller
	'<language:(vi|en)>/<aboutus:(about-us)>' => array('aboutus/index'), //index
	'<aboutus:(gioi-thieu)>' => array('aboutus/index'), //index
	'<language:(vi|en)>/<aboutus:(about-us)>/<id:[-a-z0-9]+>' => array('aboutus/view', 'urlSuffix' => '.html'), //view
	'<aboutus:(gioi-thieu)>/<id:[-a-z0-9]+>' => array('aboutus/view', 'urlSuffix' => '.html'), //view

    //services controller
    '<servicesus:(dich-vu-quang-cao)>' => array('servicesus/index'), //index
    '<servicesus:(dich-vu-quang-cao)>/<id:[-a-z0-9]+>' => array('servicesus/view', 'urlSuffix' => '.html'), //view

    //features controller
    '<language:(vi|en)>/<features:(features)>' => array('features/index'), //index
    '<features:(tinh-nang)>' => array('features/index'), //index
    '<language:(vi|en)>/<features:(features)>/<id:[-a-z0-9]+>' => array('features/view', 'urlSuffix' => '.html'), //view
    '<features:(tinh-nang)>/<id:[-a-z0-9]+>' => array('features/view', 'urlSuffix' => '.html'), //view
    
    //modules multi language
    '<language:(vi|en)>' => 'site/index',
    '<language:(vi|en)>/<module:\w+>/<controller:\w+>/<id:\d+>' => '<module>/<controller>/view',
    '<language:(vi|en)>/<module:\w+>/<controller:\w+>/<action:\w+>/<id:\d+>' => '<module>/<controller>/<action>',
    '<language:(vi|en)>/<module:\w+>/<controller:\w+>/<action:\w+>' => '<module>/<controller>/<action>',
);