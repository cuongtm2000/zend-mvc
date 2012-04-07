<?php

class HomeController extends CController {
    public $layout = '//layouts/column1';

    public $menu = array();

    public $breadcrumbs = array();
	public $title;
    public $keywords;
    public $description;
	public $analytics;
    public $lang = array(); //language

    public function init() {
		Common::setLanguage(); //setting language

		$web_class = new Web();
		$this->title = $web_class->setWebValue('title', 'dos');
		$this->keywords = $web_class->setWebValue('keywords', 'dos');
		$this->analytics = $web_class->setWebValue('analytics', 'dos');

        //Setup lang
        $this->lang = Langs::setLangs();
    }

}