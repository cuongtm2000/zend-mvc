<?php

class SiteController extends Controller {

    /**
     * Declares class-based actions.
     */
    public function actions() {
        return array(
            // captcha action renders the CAPTCHA image displayed on the contact page
            'captcha' => array(
                'class' => 'CCaptchaAction',
                'backColor' => 0xFFFFFF,
            ),
            // page action renders "static" pages stored under 'protected/views/site/pages'
            // They can be accessed via: index.php?r=site/page&view=FileName
            'page' => array(
                'class' => 'CViewAction',
            ),
        );
    }

    /**
     * This is the default 'index' action that is invoked
     * when an action is not explicitly requested by users.
     */
    public function actionIndex() {
        $this->pageTitle = 'test';
        // renders the view file 'protected/views/site/index.php'
        // using the default layout 'protected/views/layouts/main.php'        
        $this->render('index');
    }

    public function actionsignup() {
        Yii::app()->clientScript->registerCssFile(Yii::app()->theme->baseUrl . '/css/signup.css');
        Yii::app()->clientScript->registerCssFile(Yii::app()->theme->baseUrl . '/css/tiptip.css');
        Yii::app()->clientScript->registerCoreScript('jquery');
        
        Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl.'/js/jquery.tiptip.js');
        Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl.'/js/jquery.tiptip.minified.js');
        
        Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl.'/js/stepcarousel.js');
        Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl.'/js/stepcarousel.config.js');
        
        $model = new Username;
        if (isset($_POST['Username'])) {
            $model->attributes = $_POST['Username'];
            if ($model->validate()) {
                if($model->save()){
                    //Insert table: dos_modules_has_dos_usernames
                    $model_user = new ModuleUsername;
                    $model_user->addModuleUser($model->username, $model->choose_modules, $model->choose_feature);
                    //Insert table: dos_module_menus
                    $model_menu = new ModuleMenu;
                    $model_menu->addModuleMenu($model->username, $model->choose_modules);
                    //Create folder for user
                    $model->createFolderUser($model->username);
                    //Send mail for active
                    Yii::app()->session['user_registed'] = $model->username;
                }
                $this->redirect(array('success'));
            }
        }else{
            $model->email = Yii::app()->request->getPost('email', '');
            $model->password = Yii::app()->request->getPost('password', '');
        }
        $this->render('signup', array('model'=>$model));
    }
    public function actionsuccess() {
        if (Yii::app()->session['user_registed']) {
            $modules_class = new Modules;
            $userame_class = new Username;
            $this->render('success', array('info_user' => $userame_class->infoUser(Yii::app()->session['user_registed']), 'choosePage' => $modules_class->listModulesByUser(1, Yii::app()->session['user_registed']), 'chooseFeature' => $modules_class->listModulesByUser(0, Yii::app()->session['user_registed'])));
        } else {
            $this->redirect(Yii::app()->request->baseUrl . '/');
        }
    }

    /**
     * This is the action to handle external exceptions.
     */
    public function actionError() {
        if ($error = Yii::app()->errorHandler->error) {
            if (Yii::app()->request->isAjaxRequest)
                echo $error['message'];
            else
                $this->render('error', $error);
        }
    }

    /**
     * Displays the contact page
     */
    public function actionContact() {
        $model = new ContactForm;
        if (isset($_POST['ContactForm'])) {
            $model->attributes = $_POST['ContactForm'];
            if ($model->validate()) {
                $headers = "From: {$model->email}\r\nReply-To: {$model->email}";
                mail(Yii::app()->params['adminEmail'], $model->subject, $model->body, $headers);
                Yii::app()->user->setFlash('contact', 'Thank you for contacting us. We will respond to you as soon as possible.');
                $this->refresh();
            }
        }
        $this->render('contact', array('model' => $model));
    }

    /**
     * Displays the login page
     */
    public function actionLogin() {
        $model = new LoginForm;

        // if it is ajax validation request
        if (isset($_POST['ajax']) && $_POST['ajax'] === 'login-form') {
            echo CActiveForm::validate($model);
            Yii::app()->end();
        }

        // collect user input data
        if (isset($_POST['LoginForm'])) {

            $model->attributes = $_POST['LoginForm'];
            // validate user input and redirect to the previous page if valid
            if ($model->validate() && $model->login()) {
                $this->redirect(Yii::app()->user->returnUrl);
            }
        }
        // display the login form
        $this->render('login', array('model' => $model));
    }

    /**
     * Logs out the current user and redirect to homepage.
     */
    public function actionLogout() {
        Yii::app()->user->logout();
        $this->redirect(Yii::app()->homeUrl);
    }

}