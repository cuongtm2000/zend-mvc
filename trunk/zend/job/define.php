<?php
defined('APPLICATION_PATH')	|| define('APPLICATION_PATH', realpath(dirname(__FILE__) . '/application'));
defined('APPLICATION_ENV') || define('APPLICATION_ENV', (getenv('APPLICATION_ENV') ? getenv('APPLICATION_ENV') : 'production'));
set_include_path(implode(PATH_SEPARATOR, array(
    dirname(__FILE__) . '/library',
    get_include_path(),
)));

define('PUBLIC_PATH', realpath(dirname(__FILE__) . '/public'));

define('TEMPLATE_DIR', '/public/templates');
define('TEM_INDEX', '/adsense'); //Template default

define('TEMPLATE_PATH', PUBLIC_PATH . '/templates'.TEM_INDEX);