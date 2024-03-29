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
    '<products:(san-pham)>/loai/<cid:[-a-z0-9]+>' => array('products/default/types'), //type
    '<products:(san-pham)>/<cid:[-a-z0-9]+>/<id:[-a-z0-9]+>' => array('products/default/view', 'urlSuffix' => '.html'), //view
    '<products:(dang-tin)>' => array('products/default/add'), //add
    '<products:(tin-da-dang)>' => array('products/default/list'), //
    '<products:(tim-kiem)>' => array('products/default/search'), //

    //services modules
    '<services:(dich-vu)>' => 'services/default/index', //index
    '<services:(dich-vu)>/<id:[-a-z0-9]+>' => array('services/default/view', 'urlSuffix' => '.html'), //view

    //news modules
    '<news:(tin-tuc)>/trang/<page:\d+>' => 'news/default/index', //index paging
    '<news:(tin-tuc)>' => 'news/default/index', //index
    '<news:(tin-tuc)>/<cid:[-a-z0-9]+>/trang/<page:\d+>' => array('news/default/cats'), //cat paging
    '<news:(tin-tuc)>/<cid:[-a-z0-9]+>' => array('news/default/cats'), //cat
    '<news:(tin-tuc)>/<cid:[-a-z0-9]+>/<id:[-a-z0-9]+>' => array('news/default/view', 'urlSuffix' => '.html'), //view

    //video modules
    '<video:(video)>/trang/<page:\d+>' => 'video/default/index', //index paging
    '<video:(video)>' => 'video/default/index', //index
    '<video:(video)>/<cid:[-a-z0-9]+>/trang/<page:\d+>' => array('video/default/cats'), //cat paging
    '<video:(video)>/<cid:[-a-z0-9]+>' => array('video/default/cats'), //cat

    //contact modules
    '<contact:(lien-he)>' => 'contact/default/index', //index

    //users modules
    '<users:(hoi-vien)>' => 'users/default/index', //index
    '<users:(thay-doi-thong-tin)>' => 'users/default/edit', //index

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

    //login modules
    '<login:(dang-nhap)>' => 'login/default', //index
    '<register:(dang-ky)>' => 'register', //index
    '<register:(dang-ky)>/thanh-cong' => 'register/default/success', //index
);