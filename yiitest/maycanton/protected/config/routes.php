<?php
return array(
    //about modules
    '<about:(gioi-thieu)>' => 'about/default/index', //index
    '<about:(gioi-thieu)>/<id:[-a-z0-9]+>' => array('about/default/view', 'urlSuffix' => '.html'), //view

    //products modules
    '<products:(san-pham)>' => 'products/default/index', //index
    '<products:(san-pham)>/<cid:(dat-hang)>/<id:[-a-z0-9]+>' => array('products/default/order'), //order
    '<products:(san-pham)>/<cid:(gio-hang)>' => array('products/default/cartitem'), //Cart item
    '<products:(san-pham)>/<cid:(xoa-gio-hang)>' => array('products/default/delallcart'), //Delete all cart
    '<products:(san-pham)>/<cid:(thong-tin-dat-hang)>' => array('products/default/ordering'), //purchase
    '<products:(san-pham)>/<cid:[-a-z0-9]+>/trang/<page:\d+>' => array('products/default/cats'), //cat paging
    '<products:(san-pham)>/<cid:[-a-z0-9]+>' => array('products/default/cats'), //cat
    '<products:(san-pham)>/<cid:[-a-z0-9]+>/<id:[-a-z0-9]+>' => array('products/default/view', 'urlSuffix' => '.html'), //view

    //forms modules
    '<forms:(bien-dang)>' => 'forms/default/index', //index
    '<forms:(bien-dang)>/<id:[-a-z0-9]+>' => array('forms/default/view', 'urlSuffix' => '.html'), //view

    //forms modules
    '<catalogue:(catalogue)>' => 'catalogue/default/index', //index
    '<catalogue:(catalogue)>/<id:[-a-z0-9]+>' => array('catalogue/default/view', 'urlSuffix' => '.html'), //view

    //news modules
    '<customers:(khach-hang)>/trang/<page:\d+>' => 'customers/default/index', //index paging
    '<customers:(khach-hang)>' => 'customers/default/index', //index
    '<customers:(khach-hang)>/<cid:[-a-z0-9]+>/trang/<page:\d+>' => array('customers/default/cats'), //cat paging
    '<customers:(khach-hang)>/<cid:[-a-z0-9]+>' => array('customers/default/cats'), //cat
    '<customers:(khach-hang)>/<cid:[-a-z0-9]+>/<id:[-a-z0-9]+>' => array('customers/default/view', 'urlSuffix' => '.html'), //view

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
    '<video:(video)>/<cid:[-a-z0-9]+>/<id:[-a-z0-9]+>' => array('video/default/view', 'urlSuffix' => '.html'), //view

    //contact modules
    '<contact:(lien-he)>' => 'contact/default/index', //index

    //For multi language
    '<language:(vi|en)>/<module:\w+>/<cid:(order)>/<id:[-a-z0-9]+>' => array('<module>/default/order'), //order for products
    '<language:(vi|en)>/<module:\w+>/<cid:(cart-item)>' => array('<module>/default/cartitem'), //Cart item for products
    '<language:(vi|en)>/<module:\w+>/<cid:(del-all-cart)>' => array('<module>/default/delallcart'), //Delete all cart for products
    '<language:(vi|en)>/<module:\w+>/<cid:(purchase)>' => array('<module>/default/ordering'), //purchase for products

    '<language:(vi|en)>/<module:\w+>/<cid:[-a-z0-9]+>/page/<page:\d+>' => array('<module>/default/cats'), //cat paging
    '<language:(vi|en)>/<module:\w+>/<cid:[-a-z0-9]+>' => array('<module>/default/cats'), //cat

    '<language:(vi|en)>/<module:\w+>/<cid:[-a-z0-9]+>/<id:[-a-z0-9]+>' => array('<module>/default/view', 'urlSuffix' => '.html'), //for products
    '<language:(vi|en)>/<module:\w+>/<id:[-a-z0-9]+>' => array('<module>/default/view', 'urlSuffix' => '.html'),

    '<language:(vi|en)>/<module:\w+>' => '<module>/default/index', //ex: en/about, en/products
    '<language:(vi|en)>' => 'default/default',
);