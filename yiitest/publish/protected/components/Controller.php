<?php

class Controller extends CController {
	public $menu = array();
	public $breadcrumbs = array();

	public $nav;
	public $title;
	public $keywords;
	public $description;
	public $analytics;

	public $function = array(); //for show, hidden function
	public $lang = array(); //language
	public $configs = array();

	public $numLang = array();

	public $logo = array(); //Logo
	public $banner = array(); //Banner

	public $about_list = array();
	public $services_list = array();
	public $news_list = array();
	public $products_list = array();
	
	public function init() {
		Common::setLanguage(); //setting language

		$username = new Username();
		$info_user = $username->infoUser('user');

		Yii::app()->theme = $info_user['dos_templates_template']; //template use by 'admin'
		Yii::app()->session['template'] = $info_user['dos_templates_template']; //session template use
		define('USERFILES', '/public/userfiles/image/' . $info_user['username'] . '/image');

		$this->numLang = explode('|', $info_user['language']);
		if (isset($_GET['language']) && !in_array($_GET['language'], $this->numLang)) {
			$this->redirect(Yii::app()->request->baseUrl . '/error'); //Ngon ngu khong duoc su dung
		}

		//Set title, keywords and description
		$web_class = new Web();
		$this->title = $web_class->setWebValue('title');
		$this->keywords = $web_class->setWebValue('keywords');
		$this->description = $web_class->setWebValue('description');
		$this->analytics = $web_class->setWebValue('analytics');

		//Set page load file
		$loadFiles_class = new Loadfiles;
		$loadFiles_class->getFileByTemplateModule($info_user['dos_templates_template'], $this->module->id);

		//Set navigation
		$menus_class = new Menus();
		$this->nav = $menus_class->setMenu();

		//Set function
		/*$load_function = new TemplateModule();
		$func = $load_function->getFunction($info_user['dos_templates_template'], $this->module->id);
		foreach ($func as $value) {
			Yii::app()->getModule($value['module']);
			$load = new $value['module_id']();
			$this->function[$value['value_name']] = $load->$value['function_name']();
		}*/

        //Set function
        $func_user = UsernamesModules::model()->getFunction($info_user['username'], $this->module->id);
        if ($func_user) {
            //function user
            foreach ($func_user as $value) {
                Yii::app()->getModule($value['module']);
                $load = new $value['module_id']();
                $this->function[$value['value_name']] = $load->$value['function_name']();
            }
        } else {
            //function template
            $func = TemplateModule::model()->getFunction($info_user['dos_templates_template'], $this->module->id);
            foreach ($func as $value) {
                Yii::app()->getModule($value['module']);
                $load = new $value['module_id']();
                $this->function[$value['value_name']] = $load->$value['function_name']();
            }
        }

		//Set Logo, Banner
		$banner = new Banner();
		$this->logo = $banner->getLogo();
		$this->banner = $banner->getBanner($this->module->getName());

		Yii::app()->getModule('about');
		$this->about_list = About::model()->listMenu();
		
		
		Yii::app()->getModule('services');
		$this->services_list = Services::model()->listMenu();
		
		Yii::app()->getModule('news');
		$this->news_list = NewsCat::model()->listCats();
		
		//Set configs
		$this->configs = Configs::template($info_user['dos_templates_template']);

		//Setup lang
		$this->lang = Langs::setLangs();
	}

	/**
	 * Set tag title, description web page
	 */
	protected function setSeoPage() {
		$seo = Menus::getSeoPage($this->module->id);

		if ($seo['title' . LANG]) {
			$this->pageTitle = $seo['title' . LANG];
		} else {
			$this->pageTitle = $this->lang[$this->module->id];
		}

		if ($seo['description' . LANG]) {
			$this->description = $seo['description' . LANG];
		}
	}
}