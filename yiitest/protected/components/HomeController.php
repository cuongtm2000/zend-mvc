<?php

class HomeController extends CController {

    public $layout = '//layouts/column1';

    /**
     * @var array context menu items. This property will be assigned to {@link CMenu::items}.
     */
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