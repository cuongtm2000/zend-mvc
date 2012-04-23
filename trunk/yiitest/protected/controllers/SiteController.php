<?php

class SiteController extends HomeController {

	/**
	 * Declares class-based actions.
	 */
	public function actions() {
		return array(
			// captcha action renders the CAPTCHA image displayed on the contact page
			'captcha' => array(
				'class' => 'CCaptchaAction',
				'backColor' => 0xEEEEEE,
			),
			// page action renders "static" pages stored under 'protected/views/site/pages'
			// They can be accessed via: index.php?r=site/page&view=FileName
			'page' => array(
				'class' => 'CViewAction',
			),
		);
	}

	public function actionMsgerror($code) {
		$msg = array();
		switch ($code) {
			case 'expired':
				$msg[] = 'Website đã hết hạn';
				$msg[] = 'Website của bạn đã quá hạn, vui lòng gia hạn để được sử dụng';
				break;
		}
		$this->render('msgerror', array('data' => $msg));
	}

	/**
	 * This is the default 'index' action that is invoked
	 * when an action is not explicitly requested by users.
	 */
	public function actionIndex() {
		Yii::app()->clientScript->registerCssFile(Yii::app()->theme->baseUrl . '/css/allinone_carousel.css');
		Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl . '/js/jquery-1.7.1.min.js');
		Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl . '/js/jquery-ui-1.8.16.custom.min.js');
		Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl . '/js/allinone_carousel.js');
		Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl . '/js/allinone_carousel_charming.js');


		$this->layout = 'column2';
		$this->pageTitle = Yii::t('main', 'pageTitle');
		$this->keywords = Yii::t('main', 'keywords');
		$this->description = Yii::t('main', 'description');

		$business_class = new Bussiness();
		$username_class = new Username();

		$this->render('index', array('listBusiness' => $business_class->listCats(1), 'listUserImport' => $username_class->listUserImport(), 'listUserNewCreated' => $username_class->listUserNewCreated()));
	}

	public function actionSignup() {
		$this->pageTitle = 'Đăng ký tài khoản';
		$this->keywords = 'Đăng ký tài khoản, chọn mẫu website, chọn module web, chọn chức năng website';
		$this->description = 'Bạn cần điền thông tin để tạo website, chọn mẫu web phù hợp, chọn module và chức năng bạn cần';

		Yii::app()->clientScript->registerCssFile(Yii::app()->theme->baseUrl . '/css/signup.css');
		Yii::app()->clientScript->registerCssFile(Yii::app()->theme->baseUrl . '/css/tiptip.css');

		Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl . '/js/jquery-1.7.1.min.js');
		Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl . '/js/jquery.tiptip.js');
		Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl . '/js/jquery.tiptip.minified.js');

		$business_class = new Bussiness();
		$province_class = new Provinces;

		$model = new Username('register');
		if (isset($_POST['Username'])) {
			//Check session for loadtemplates
			if (isset($_POST['Username']['dos_templates_template'])) {
				Yii::app()->session['user_choose_template'] = $_POST['Username']['dos_templates_template'];
			}
			$model->attributes = $_POST['Username'];
			if ($model->validate()) {
				if ($model->save()) {
					//Insert table: dos_modules_has_dos_usernames
					$model_user = new ModuleUsername;
					$model_user->addModuleUser($model->username, $model->choose_modules, $model->choose_feature);
					//Insert table: dos_module_menus
					$menus_class = new Menus;
					$menus_class->addModuleMenu($model->username, $model->choose_modules);
					//Create folder for user
					$model->createFolderUser($model->username);
					//Create code and Send mail for active
					//$model->sendMailActive($model->username);
					Yii::app()->session['user_registed'] = $model->username;
					Yii::app()->session['user_registed_choose_business'] = $model->dos_bussiness_bussiness_id;
				}
				$this->redirect(array('/chen-du-lieu-mau'));
			}
		} else {
			$model->email = Yii::app()->request->getPost('email', '');
			$model->password = Yii::app()->request->getPost('password', '');
			$model->choose_business = $model->dos_bussiness_bussiness_id = Yii::app()->request->getPost('bussiness', '');
		}
		$this->render('signup', array('model' => $model, 'listBusiness' => $business_class->listCats(1), 'listProvinces' => $province_class->listProvinceByCountry('VND')));
	}

	public function actionImport() {
		if (Yii::app()->session['user_registed']) {
			Yii::app()->clientScript->registerCssFile(Yii::app()->theme->baseUrl . '/css/signup.css');
			Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl . '/js/jquery-1.7.1.min.js');

			$business_class = new Bussiness();
			$model = new Username('import');
			if (isset($_POST['Username'])) {
				$model->attributes = $_POST['Username'];
				if ($model->validate()) {
					$data_helper_class = new DatabaseHelper();
					$data_helper_class->importDataSample($model->username, Yii::app()->session['user_registed']);

					$this->redirect(array('/tao-web-thanh-cong'));
				}
			} else {
				$model->dos_bussiness_bussiness_id = Yii::app()->session['user_registed_choose_business'];
			}

			$this->render('import', array('model' => $model, 'listBusiness' => $business_class->listCats(1)));
		} else {
			$this->redirect(Yii::app()->request->baseUrl . '/');
		}
	}

	public function actionSuccess() {
		if (Yii::app()->session['user_registed']) {
			$modules_class = new Modules;
			$userame_class = new Username;
			$this->render('success', array('info_user' => $userame_class->infoUser(Yii::app()->session['user_registed']), 'choosePage' => $modules_class->listModulesByUser(1, Yii::app()->session['user_registed']), 'chooseFeature' => $modules_class->listModulesByUser(0, Yii::app()->session['user_registed'])));
		} else {
			$this->redirect(Yii::app()->request->baseUrl . '/');
		}
	}

	public function actionLoadTemplates($id) {
		$tempaltes_business_class = new TemplatesBussiness();
		$business_class = new Bussiness();
		$this->renderPartial('loadtemplates', array('templatesBusiness' => $tempaltes_business_class->listTempaltesByBusiness($id), 'name' => $business_class->detailItem($id)));
	}

	public function actionLoadUserImport($id) {
		$username_class = new Username();
		$business_class = new Bussiness();
		$this->renderPartial('loaduserimport', array('userImport' => $username_class->listUserByImport($id), 'name' => $business_class->detailItem($id)));
	}

	public function actionrss() {
		Yii::import('application.vendors.*');
		require_once('Zend/Feed/Rss.php');
		require_once('Zend/Feed.php');

		//Create an array for our feed - Setup some info about our feed
		$feed = array();
		$feed['title'] = "Dos.vn NEWS";
		$feed['link'] = 'http://dos.vn/rss.xml';
		$feed['description'] = 'Dos.vn news latest';
		$feed['generator'] = 'Thanhansoft - Hoiit.com';
		$feed['charset'] = 'utf-8';
		$feed['entries'] = array(); //Holds the actual items

		// retrieve the latest 7 posts
		$articles_class = new Articles();
		$rows = $articles_class->listRss();

		foreach ($rows as $story) {
			$entry = array(); //Container for the entry before we add it on
			$entry['title'] = $story['title']; //The title that will be displayed for the entry
			$entry['link'] = 'http://dos.vn/articles/' . $story['tag_cat'] . '/' . $story['tag'] . '.html';
			$entry['description'] = $story['preview']; //Short description of the entry
			$entry['lastUpdate'] = strtotime($story['postdate']);
			$feed['entries'][] = $entry;
		}

		$feed = Zend_Feed::importArray($feed, 'rss');
		$feed->send();
	}

	public function actionreadrss() {
		Yii::import('ext.EHttpClient.*');
		//add zend folder to the include path and save the old one
		$oldPath = set_include_path(($path = Yii::import('application.vendors.*')) . PATH_SEPARATOR . get_include_path());
		//include zend_loader
		require_once $path . DIRECTORY_SEPARATOR . 'Zend' . DIRECTORY_SEPARATOR . 'Loader.php';
		//load zend_feed class
		Zend_Loader::loadClass('Zend_Feed');
		//read the feed, try/catch will prevent it from throw an exception
		try {
			$dataProvider = Zend_Feed::import('http://dos.vn/rss.xml');
			echo '<ul>';
			foreach ($dataProvider as $feed) {
				echo '<li><a href="' . $feed->link . '" title="' . $feed->title . '">' . $feed->title . '</a> - <span>' . date('d-m-Y', strtotime($feed->pubDate)) . '</span> <div>' . $feed->description . '</div></li>';
			}
			echo '</ul>';
		} catch (CException $e) {
			Yii::log($e->getMessage(), CLogger::LEVEL_WARNING);
			$dataProvider = array();
		}
		//after you use zend classes, remove zend from included paths to increase perfomance
		set_include_path($oldPath);
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
				/*$headers = "From: {$model->email}\r\nReply-To: {$model->email}";
				mail(Yii::app()->params['adminEmail'], $model->subject, $model->body, $headers);
				Yii::app()->user->setFlash('contact', 'Thank you for contacting us. We will respond to you as soon as possible.');
				*/
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
				$this->redirect('/admin');
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