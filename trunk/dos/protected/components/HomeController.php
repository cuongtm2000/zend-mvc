<?php

class HomeController extends CController {

    /**
     * @var string the default layout for the controller view. Defaults to '//layouts/column1',
     * meaning using a single column layout. See 'protected/views/layouts/column1.php'.
     */
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
    public $lang = array(); //language

    public function init() {
		Common::setLanguage(); //setting language

        //define('LANG', (isset($_GET['language']) && ($_GET['language'] != 'vi')) ? $_GET['language'] : '');
        //define('LANGURL', (isset($_GET['language']) && ($_GET['language'] != 'vi')) ? '/' . $_GET['language'] : '');

        //Setup lang
        $this->lang = Langs::setLangs();
    }

}