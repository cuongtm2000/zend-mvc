<?php

class DefaultController extends Controller {

    public function actionIndex() {
        $model_class = ucfirst($this->module->id) . 'Cat';
        $model = new $model_class;

        $this->render('index', array('items' => $model->listItem()));
    }

    public function actionCats($cid, $page = 0) {
        $model_class = ucfirst($this->module->id) . 'Cat';
        $model = new $model_class;

        $info_cat = ProductsCatLanguage::model()->findCatByTag($cid);
        $this->render('cats', array('info_cat' => $info_cat, 'sub_cats' => $model->listItem($info_cat['cat_id']), 'items' => Products::model()->listItemByCat($info_cat['cat_id'])));
    }

    public function actionView($id) {
        Yii::app()->clientScript->registerCssFile(Yii::app()->theme->baseUrl . '/css/scroll.css');
        Yii::app()->clientScript->registerCssFile(Yii::app()->theme->baseUrl . '/css/jquery.fancy
                    box.css');

        Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl . '/js/jcarousellite_1.0.1.js');
        Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl . '/js/scroller.js');
        Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl . '/js/jquery.fancybox.js');
        Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl . '/js/jquery.scroll-1.4.2-min.js');
        Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl . '/js/jquery.serialScroll-1.2.2-min.js');
        Yii::app()->clientScript->registerScriptFile(Yii::app()->theme->baseUrl . '/js/product.js');

        $model_class = ucfirst($this->module->id);
        $model = new $model_class();
        $data['item'] = $model->detailItem($id);
        $data['other_items'] = $model->listOtherItems($data['item']['record_id'], $data['item']['hoiit_module_item_cat_cat_id']);
        $this->render('view', $data);
    }

    public function actionRegister() {
        $model = new LandsUsers('register');
        $provice_class = new Provinces();

        if (isset($_POST['LandsUsers'])) {
            $model->attributes = $_POST['LandsUsers']; //var_dump($_POST['LandsUsers']);
            if ($model->save()) {
                Yii::app()->session['reg_success'] = true;
                $this->redirect(Yii::app()->baseUrl . '/dang-ky/thanh-cong');
            }
        }
        $this->render('register', array(
            'model' => $model,
            'listProvices' => $provice_class->listProvince(),
        ));
    }

    public function actionSuccess() {
        if (!Yii::app()->session['reg_success']) {
            $this->redirect(Yii::app()->request->baseUrl . '/dang-ky');
        }
        $this->render('success');
    }

    public function actionLogin() {
        if (Yii::app()->session['logged'])
            $this->redirect(Yii::app()->user->returnUrl);

        $model = new LoginForm;
        if (isset($_POST['LoginForm'])) {
            $model->attributes = $_POST['LoginForm'];
            if ($model->validate() && $model->login()) {
                $_SESSION['KCFINDER'] = array();
                $_SESSION['KCFINDER']['disabled'] = false;
                $_SESSION['KCFINDER']['uploadURL'] = Yii::app()->baseUrl . '/public/userfiles/image/' . Yii::app()->user->id;
                Yii::app()->session['logged'] = 1; //session for ckfinder logged
                Yii::app()->session['user'] = Yii::app()->user->id; //session for ckfinder subdomain
                $this->redirect(Yii::app()->user->returnUrl);
            }
        } elseif (Yii::app()->session['activated']) {
            Yii::app()->user->setFlash('message', 'Successful registration.');
        }

        $this->render( 'login', array('model' => $model));
    }

    public function actionLogout() {
        Yii::app()->user->logout();
        $this->redirect(Yii::app()->homeUrl);
    }

}