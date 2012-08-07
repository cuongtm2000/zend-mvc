<?php
$module_name = basename(dirname(dirname(__FILE__)));

return array(
    'import' => array(
        'application.modules.' . $module_name . '.models.*',
    ),

    'modules' => array($module_name)
);