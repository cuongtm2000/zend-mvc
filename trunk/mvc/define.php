<?php

defined('APPLICATION_PATH')	|| define('APPLICATION_PATH', realpath(dirname(__FILE__) . '/application'));

defined('APPLICATION_ENV')
    || define('APPLICATION_ENV',
              (getenv('APPLICATION_ENV') ? getenv('APPLICATION_ENV')
                                         : 'production'));
set_include_path(implode(PATH_SEPARATOR, array(
    dirname(__FILE__) . '/library',
    get_include_path(),
)));

define('TEMPLATE_DIR', '/public/templates');
define('TEM_INDEX', '/thanda'); //Template Front end
define('TEM_ADMIN', '/webadmin'); //Template Back end


//define('REAL_PATH', realpath(dirname(__FILE__)));
define('PUBLIC_PATH', realpath(dirname(__FILE__) . '/public'));
define('IMAGES_PATH',  '/public/userfiles/images/');
define('TEMPLATE_PATH', PUBLIC_PATH .'/templates'. TEM_INDEX);