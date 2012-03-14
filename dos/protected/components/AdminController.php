<?php

/**
 * Controller is the customized base controller class.
 * All controller classes for this application should extend from this base class.
 */
class AdminController extends CController{
    public $module_user = array();
    public $lang = array(); //language

    public function init(){
        define('LANG', (isset($_GET['language']) && ($_GET['language'] != 'vi')) ? $_GET['language'] : '');
        define('LANGURL', (isset($_GET['language']) && ($_GET['language'] != 'vi')) ? '/' . $_GET['language'] : '');

		list($subdomain) = explode('.', $_SERVER['HTTP_HOST'], 2);
        $this->setUser($subdomain);

        //Setup module user
        $this->module_user = ModuleUsername::model()->moduleUser(Yii::app()->user->name);
        
        //Setup lang
        $this->lang = Langs::setLangs();
    }

    private function setUser($user){
        $username = new Username();
        //Check exist user
        if ($username->checkExistUser($user)) {
            //Check set theme for user
            if ($this->module->id != 'admin' && $this->module->id != 'administrator') {
                Yii::app()->theme = $username->template;
            }

            //Set session template
            Yii::app()->session['template'] = $username->template;
            define('USERFILES', '/public/userfiles/images/' . $user . '/images');
        } else {
			$this->redirect('http://dos.vn/error');
        }
    }
}