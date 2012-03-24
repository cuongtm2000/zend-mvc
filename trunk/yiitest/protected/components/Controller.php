<?php

class Controller extends CController {
    //public $layout='//layouts/column1';
    /**
     * @var array context menu items. This property will be assigned to {@link CMenu::items}.
     */
    public $menu = array();

    public $breadcrumbs = array();
    
    public $nav;
    public $title;
    public $keywords;
    public $description;
   
    public $function = array(); //for show, hidden function
    public $lang = array(); //language
    public $configs = array();

	public $numLang = array();
    
    public $logo = array(); //Logo
    public $banner = array(); //Banner

    public function init() {
		//Common::setLanguage(); //setting language

        //define('LANG', (isset($_GET['language']) && ($_GET['language'] != 'vi')) ? $_GET['language'] : '');
        //define('LANGURL', (isset($_GET['language']) && ($_GET['language'] != 'vi')) ? '/' . $_GET['language'] : '');

		list($subdomain) = explode('.', $_SERVER['HTTP_HOST'], 2);
        $this->setUser($subdomain);

		//Setup lang
        $this->lang = Langs::setLangs();
    }

    private function setUser($user) {
        $username = new Username();
        //Check exist user
        if ($username->checkExistUser($user)) {
			Common::setLanguage(); //setting language

			$info_user = $username->infoUser($user);

			$this->numLang = explode('|', $info_user['language']);
			if(isset($_GET['language']) && !in_array($_GET['language'], $this->numLang)){
				$this->redirect('http://dos.vn/error'); //Ngon ngu khong duoc su dung
			}

            //Check set theme for user
            //if ($this->module->id != 'admin' && $this->module->id != 'administrator') {
                Yii::app()->theme = $info_user['dos_templates_template'];
            //}

            //Set session template and subdomain
            Yii::app()->session['template'] = $info_user['dos_templates_template'];
            Yii::app()->session['subdomain'] = $user;
            define('USERFILES', '/public/userfiles/images/' . Yii::app()->session['subdomain'] . '/images');

            //Set title, keywords and description
            $web_class = new Web();
            $this->title = $web_class->setWebValue('title', $user);
            $this->keywords = $web_class->setWebValue('keywords', $user);
            $this->description = $web_class->setWebValue('description', $user);
            
            //Set page load file
            $loadfiles_class = new Loadfiles;
            $loadfiles_class->getFileByTemplateModule($info_user['dos_templates_template'], $this->module->id);

            //Set navigation
            $menus_class = new Menus();
            $this->nav = $menus_class->setMenu($user);

            //Set function
            $load_function = new TemplateModule();
            $func = $load_function->getFunction($info_user['dos_templates_template'], $this->module->id);
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