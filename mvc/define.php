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


define('REAL_PATH', realpath(dirname(__FILE__)));
define('IMAGES_PATH',  '/public/userfiles/images/');


define('PUBLIC_PATH', realpath(dirname(__FILE__) . '/public'));
define('TEMPLATE_PATH', PUBLIC_PATH .'/templates'. TEM_INDEX);
define('DEBUG_MODE',0);
define('DEBUG_MODE_IN_WEBADMIN', 0);