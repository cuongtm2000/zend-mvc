<?php

class Controller extends CController {
    public $layout = '//layouts/column1';

    /**
     * @var array context menu items. This property will be assigned to {@link CMenu::items}.
     */
    public $menu = array();

    /**
     * @var array the breadcrumbs of the current page. The value of this property will
     * be assigned to {@link CBreadcrumbs::links}. Please refer to {@link CBreadcrumbs::links}
     * for more details on how to specify this property.
     */
    public $breadcrumbs = array();
    public $keywords;
    public $description;
    public $listTopPostUsers = array();

    public function init() {
        //Common::setLanguage($_SERVER['REMOTE_ADDR']); //setting language
        Common::setLanguage('42.119.61.11'); //setting language

        $username_class = new Usernames();
        $this->listTopPostUsers = $username_class->listTopPostUsers();
    }
}