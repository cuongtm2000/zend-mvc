<?php
return array(
	'lien-he' => array('site/contact', 'urlSuffix' => '.html'),

	'(gioi-thieu)' => 'about/default/index',
	'(gioi-thieu)/<id:[-a-z0-9]+>' => array('about/default/view', 'urlSuffix' => '.html'),
);