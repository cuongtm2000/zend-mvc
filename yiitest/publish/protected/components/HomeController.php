<?php

class HomeController extends CController {
    public $layout = '//layouts/column1';

    public $menu = array();

    public $breadcrumbs = array();
    public $keywords;
    public $description;
	public $analytics;
    public $lang = array(); //language

    public function init() {
		Common::setLanguage(); //setting language

		$web_class = new Web();
		$this->analytics = $web_class->setWebValue('analytics', 'dos');

        //Setup lang
        $this->lang = Langs::setLangs();
    }

}