<?php
return CMap::mergeArray(
    require(dirname(__FILE__) . '/main.php'),
    array(
        'components' => array(
            'db' => array(
                'connectionString' => 'mysql:host=localhost;dbname=nhaphodep_data',
                'emulatePrepare' => true,
                'username' => 'nhaphodep_user',
                'password' => 'cnbMx1bt',
                'charset' => 'utf8',
                'schemaCachingDuration' => 60 * 60,
            ),
            'log' => array(
                'class' => 'CLogRouter',
                'routes' => array(
                    array(
                        'class' => 'CFileLogRoute',
                        'levels' => 'error, warning',
                    ),
                ),
            ),
        ),
    )
);