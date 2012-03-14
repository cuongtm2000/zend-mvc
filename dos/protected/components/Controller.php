<?php

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
   
    public $function = array(); //for show, hidden function
    public $lang = array(); //language
    public $configs = array();
    
    public $logo = array(); //Logo
    public $banner = array(); //Banner

    public function init() {
        define('LANG', (isset($_GET['language']) && ($_GET['language'] != 'vi')) ? $_GET['language'] : '');
        define('LANGURL', (isset($_GET['language']) && ($_GET['language'] != 'vi')) ? '/' . $_GET['language'] : '');

		list($subdomain) = explode('.', $_SERVER['HTTP_HOST'], 2);
        $this->setUser($subdomain);

		//Setup lang
        $this->lang = Langs::setLangs();
    }

    private function setUser($user) {
        $username = new Username();
        //Check exist user
        if ($username->checkExistUser($user)) {
            //Check set theme for user
            if ($this->module->id != 'admin' && $this->module->id != 'administrator') {
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
            
            //Set page load file
            $loadfiles_class = new Loadfiles;
            $loadfiles_class->getFileByTemplateModule($username->template, $this->module->id);

            //Set navigation
            $menus_class = new Menus();
            $this->nav = $menus_class->setMenu($user);

            //Set function
            $load_function = new TemplateModule();
            $func = $load_function->getFunction($username->template, $this->module->id);
            foreach ($func as $value) {
                Yii::app()->getModule($value['module']);
                $load = new $value['module_id']();
                $this->function[$value['value_name']] = $load->$value['function_name']();
            }

            //Set Logo, Banner
            $banner = new Banner();
            $this->logo = $banner->getLogo($this->module->getName());
            $this->banner = $banner->getBanner($this->module->getName());

            //Set configs
            $this->configs = Configs::template(Yii::app()->session['template']);
        } else {
			$this->redirect('http://dos.vn/error');
        }
    }
}