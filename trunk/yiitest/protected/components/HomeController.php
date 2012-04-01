<?php

class HomeController extends CController {
    public $layout = '//layouts/column1';

    public $menu = array();

    public $breadcrumbs = array();
    public $keywords;
    public $description;
    public $lang = array(); //language

    public function init() {
		Common::setLanguage(); //setting language

        //Setup lang
        $this->lang = Langs::setLangs();
    }

}