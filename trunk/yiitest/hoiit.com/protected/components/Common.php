<?php

class Common {

	public function recursiveMkdir($path, $mode = 0777) {
		$dirs = explode('/', $path);
		$count = count($dirs);

		$location = '/';
		for ($i = 1; $i < ($count - 1); ++$i) {
			$location .= $dirs[$i] . '/';
			if (!is_dir(YiiBase::getPathOfAlias('webroot') . $location)) {
				mkdir(YiiBase::getPathOfAlias('webroot') . $location, 0777);
				chmod(YiiBase::getPathOfAlias('webroot') . $location, 0777);
			}
		}
	}

}