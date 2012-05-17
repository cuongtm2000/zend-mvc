<?php

class Common {

    /**
     * @param $item - item sẽ bị remove
     * @param int $type (usernames, posts)
     */
    public function removePic($item, $type = '') {
        $path = YiiBase::getPathOfAlias('webroot') . '/public/userfiles/image/' . $type . '/';
        if ($item && file_exists($path . $item)) {
            unlink($path . $item);
        }
    }

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

    public static function setLanguage($ip) {
        $language = Yii::app()->request->getQuery('language');
        if ($language) {
            Yii::app()->language = $language;
        } else {
            //none language query string
            if (IpCountries::model()->checkIP($ip)) {
                //true, ip nam trong range so sanh
                Yii::app()->language = 'vn';
            } else {
                Yii::app()->language = 'en';
            }
        }
    }

}