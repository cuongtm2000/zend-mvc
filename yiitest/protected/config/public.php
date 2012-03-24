<?php
return CMap::mergeArray(
    require(dirname(__FILE__) . '/main.php'),
    array(
        'components' => array(
            'db' => array(
                'connectionString' => 'mysql:host=localhost;dbname=azweb_dos',
                'emulatePrepare' => true,
                'username' => 'azweb_dos',
                'password' => 'OejzTB6G',
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