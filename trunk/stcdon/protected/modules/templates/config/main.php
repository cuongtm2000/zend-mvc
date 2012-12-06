<?php
$module_name = basename(dirname(dirname(__FILE__)));

return array(
    'import' => array(
        'application.modules.' . $module_name . '.models.*',
    ),

    'modules' => array($module_name),
    'components' => array(
        'urlManager' => array(
            'rules' => array(
                'admin/templates/<action:\w+>/<id:\w+>' => 'templates/admin/<action>',
            ),
        ),
    ),
);