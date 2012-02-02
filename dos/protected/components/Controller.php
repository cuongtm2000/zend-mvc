<?php

/**
 * Controller is the customized base controller class.
 * All controller classes for this application should extend from this base class.
 */
class Controller extends CController {

    /**
     * @var string the default layout for the controller view. Defaults to '//layouts/column1',
     * meaning using a single column layout. See 'protected/views/layouts/column1.php'.
     */
    //public $layout='//layouts/column1';
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
    public $nav;
    public $title;
    public $keywords;
    public $description;
    public $function = array();
    public $lang = array();
    public $configs = array();
    public $logo = array();
    public $banner = array();

    public function init() {
        define('LANG', (isset($_GET['language']) && ($_GET['language'] != 'vi')) ? $_GET['language'] : '');
        define('LANGURL', (isset($_GET['language']) && ($_GET['language'] != 'vi')) ? '/' . $_GET['language'] : '');

        $subdomain_arr = explode('.', $_SERVER['HTTP_HOST'], 2); //creates the various parts  
        if ($subdomain_arr[0] != 'dos') {
            $this->setUser($subdomain_arr[0]);
        }

        //Setup lang
        $this->lang = Langs::setLangs();
    }

    private function setUser($user) {
        $username = new Username();
        //Check exist user
        if ($username->checkExistUser($user)) {
            //Check set theme for user
            if ($this->module->id != 'admin') {
                Yii::app()->theme = $username->template;
            }

            //Set session template and subdomain
            Yii::app()->session['template'] = $username->template;
            Yii::app()->session['subdomain'] = $user;
            define('USERFILES', '/public/userfiles/images/' . Yii::app()->session['subdomain'] . '/images');

            //Set title, keywords and description
            $web_value = new Web();
            $this->title = $web_value->setWebValue('title', $user);
            $this->keywords = $web_value->setWebValue('keywords', $user);
            $this->description = $web_value->setWebValue('description', $user);

            //Set navigation
            $menu_nav = new ModuleMenu();
            $this->nav = $menu_nav->setMenu($user);

            //Set function
            $loat_function = new TemplateModule();
            $func = $loat_function->getFunction($username->template, $this->module->id);
            foreach ($func as $value) {
                Yii::app()->getModule(strtolower($value['module_id']));
                $load = new $value['module_id']();
                $this->function[$value['value_name']] = $load->$value['function_name']();
            }

            //Set banner
            $banner = new Banner();
            $this->logo = $banner->getLogo($this->module->getName());
            $this->banner = $banner->getBanner($this->module->getName());

            //Set configs
            $this->configs = Configs::template(Yii::app()->session['template']);
        } else {
            preg_match("/[^\.\/]+\.[^\.\/]+$/", $_SERVER['HTTP_HOST'], $matches);
            header('Location: http://' . $matches[0] . '/error');
        }
    }

    /*protected function afterAction($action) {
        $time = sprintf('%0.5f', Yii::getLogger()->getExecutionTime());
        $memory = round(memory_get_peak_usage() / (1024 * 1024), 2) . "MB";
        echo "Time: $time, memory: $memory";
        parent::afterAction($action);
    }*/
}