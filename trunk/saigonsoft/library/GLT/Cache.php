<?php
class GLT_Cache{
	public function loadCache() {
        $frontendOptions = array('lifetime' => 7200, // cache lifetime of 2 hours
            					 'automatic_serialization' => true);
        $backendOptions = array('cache_dir' => APPLICATION_PATH . '/cache/'); // getting a Zend_Cache_Core object
        return Zend_Cache::factory('Core', 'File', $frontendOptions, $backendOptions);
    }
}